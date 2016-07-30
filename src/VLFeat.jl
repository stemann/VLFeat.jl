module VLFeat
using Images
using Colors
using BinDeps

depsfile = joinpath(dirname(@__FILE__),"..","deps","deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("VLFeat not properly installed. Please run Pkg.build(\"VLFeat\")")
end

export vl_hog

include("libvl/LIBVL.jl")
include("hog.jl")
include("sift.jl")

end # module
