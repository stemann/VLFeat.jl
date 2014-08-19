
import Clang.wrap_c
import DataStructures: DefaultDict
import Base.Meta.isexpr
using Match

#indexh         = joinpath(JULIA_HOME, "../include/clang-c/Index.h")
#clang_includes = [joinpath(JULIA_HOME, "../lib/clang/3.3/include"), joinpath(dirname(indexh), "..")]
indexh         = joinpath(JULIA_HOME, "../include/clang-c/Index.h")
clang_includes = ["/usr/include/clang/3.5/include/"]

strpack_structs = Set{Symbol}()

# Allow root to be specified as the first argument
if isempty(ARGS)
    root = "/usr/include"
else
    root = ARGS[1]
end

libs = ["libvl"]
hpaths = [root]

ignore_header = DefaultDict(ASCIIString, Bool, false)

for i in ["getopt_long.h", "imopv_sse2.h", "mathop_sse2.h"]
    ignore_header[i] = true
end

function wrap_library(library, path, outdir = ".")
    if !ispath(path)
        return
    end

    headers = ASCIIString[]
    for file in split(readall(`ls $path` |> `sort`))
        if endswith(file, ".h") && !ignore_header[file]
            push!(headers, joinpath(path, file))
        end
    end
    #headers = map(x->joinpath(path, x),split(readall(`ls $path` |> `sort`)) )

    println("\nWrapping $library")
    println("==============")
    for header in headers
        println("  $header")
    end

    if !isdir(outdir)
        mkpath(outdir)
    end

    context = wrap_c.init(headers = headers,
                          common_file = joinpath(outdir, "$(library)_h.jl"),
                          clang_includes = clang_includes,
                          header_wrapped = check_use_header, 
                          header_library = library,
                          header_outputfile = x->get_header_outfile(outdir,x),
                          rewriter = rewrite, )
    wrap_c.run(context)

    if outdir != "."
        jl_files = sort(readdir(outdir))
        main_file = uppercase(library)*".jl"
        main_hfile = library*"_h.jl"
        h = open(joinpath(outdir, main_file), "w")
        println(h, "include(\"$main_hfile\")")
        println(h)
        for file in jl_files
            (file == main_file || file == main_hfile) && continue
            println(h, "#include(\"$file\")")
        end
    end
    return
end

 
# called to determine if cursor should be included
function check_use_header(top_h, hpaths)
  b = basename(top_h)
  ignore_header[b] && return false
  ignore_header[b] = true
  hbase = hpaths
  for d in hbase
      beginswith(hpaths, d) && return true
  end
  return false
end

function get_header_outfile(hpaths)
    for (lib,path) in zip(lib, hpaths)
        if contains(hpaths, path)
            outdir = "$lib$(ver.major)"
            return get_header_outfile(outdir, hpaths)
        end
    end
    return get_header_outfile(".", hpaths)
end

function get_header_outfile(dir, hpaths)
  base_file = splitext(splitdir(hpaths)[end])[1]
  return joinpath(dir,"$base_file.jl")
end

# Rewrite function signatures to be more friendly
function rewrite_fn(e, call, body, use_strpack=false)
    parms = Any[]
    content = Any[]

    push!(parms, call.args[1])  # function name

    global strpack_structs

    # Add explicit conversions for Ptr & Uint32/Int32
    for call_arg in call.args[2:end]
        @match call_arg begin
            # Don't type Ptr{x} types
            Expr(:(::), [sym, Expr(:curly, [:Ptr, _], _)], _) => push!(parms, sym)

            # Type all integers as Integer
            Expr(:(::), [sym, (:Uint32 || :Cuint || :Int32 || :Cint || :Uint64 || :Int64 || :vl_size || :vl_bool)], _) => (sym; push!(parms, :($sym::Integer)))

            # Everything else is unchanged
            _ => push!(parms, call_arg)
        end
    end

    if !isexpr(body, :block)
        # body just consists of the ccall
        push!(content, body)
    else
        append!(content, body.args)
    end

    call = Expr(:call, parms...)
    body = Expr(:block, content...)

    new = Expr(e.head, call, body)

    return new
end

# Wrap type in @struct macro, and replace Array_<type>_<len> immutable types
# (Not currently used, but possibly useful)
function rewrite_struct(e::Expr)
    @match(e, Expr(:type, [true, name, vars], _))

    global strpack_structs
    push!(strpack_structs, name)

    new_vars = {}
    for arg in vars.args
        @match arg begin
            Expr(:(::), [varname, vartype], _), if beginswith(string(vartype), "Array") end => 
                begin
                    @match string(vartype) r"Array_([0-9]+)_(.*)"(size_str, type_str)
                    size = int(size_str)
                    t = symbol(type_str)
                    push!(new_vars, Expr(:(::), varname, :(Array{$t}($size))))
                end

            ex => push!(new_vars, ex)
        end
    end

    Expr(:macrocall, :@struct, Expr(:type, true, name, Expr(:block, new_vars...)))
end

function rewrite_type(e::Expr)
    try
        @match e begin
            #Expr(:type,     [false, _...], _)                      =>  return ""

            # Change empty types to type aliases
            Expr(:type,     [_, name, Expr(:block, {}, _)], _)      =>  return Expr(:typealias, name, :Void)

            #Expr(:type,     _, _)                                  =>  return rewrite_struct(e)
            _                                                      =>  e
        end
    end
    return e
end

rewrite_type(s) = s

function rewrite_fn(e::Expr)
    @match e begin
        Expr(:function, [call, body], _)  =>  return rewrite_fn(e, call, body)
        _                                 =>  e
    end
    return e
end

rewrite_fn(s) = s

extract_name(x) = string(x)
function extract_name(e::Expr)
    @match e begin
        Expr(:type,      [_, name, _], _)     => name
        Expr(:typealias, [name, _], _)        => name
        Expr(:call,      [name, _...], _)     => name
        Expr(:function,  [sig, _...], _)      => extract_name(sig)
        Expr(:const,     [assn, _...], _)     => extract_name(assn)
        Expr(:(=),       [fn, body, _...], _) => extract_name(fn)
        Expr(expr_type,  _...)                => error("Can't extract name from ", expr_type, " expression:\n    $e\n")
    end
end

# Main rewrite function
function rewrite(buf::Array)
    # Rewrite empty types as typealiases, and collect all typealiases
    buf = {rewrite_type(e) for e in buf}
    buf = {rewrite_fn(e) for e in buf}
    exports = [string(extract_name(e)) for e in filter(x->isa(x, Expr), buf)]
    have_zero = "zero" in exports
    filter!(x -> x!="" && x!="zero" && !beginswith(x,"FF_"), exports)
    export_string = "export\n" * join(["    $name" for name in exports], ",\n")*"\n\n"
    header = have_zero ? ["import Base.zero","\n",export_string] : [export_string]
    splice!(buf, 1:0, header)
    return buf
end


###############################################################
# Do it!

for (lib,path) in zip(libs, hpaths)
    outdir = lib
    !ispath(outdir) && mkpath(outdir)
    wrap_library(lib, path, outdir)
end

