using Clang.Generators
using Downloads
using VLFeat_jll

version = v"0.9.21"

cd(@__DIR__)

archive_filename = Downloads.download("http://www.vlfeat.org/download/vlfeat-$version.tar.gz")
run(`tar xfz $archive_filename`)

include_dir = normpath("vlfeat-$version", "vl")

options = load_options(joinpath(@__DIR__, "generator.toml"))

args = get_default_args()
push!(args, "-I$include_dir")

headers = [joinpath(include_dir, header) for header in readdir(include_dir) if endswith(header, ".h")]

ctx = create_context(headers, args, options)

build!(ctx)
