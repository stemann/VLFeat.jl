module VLFeat
using Images
using BinDeps

depsfile = Pkg.dir("VLFeat","deps","deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("VLFeat not properly installed. Please run Pkg.build(\"VLFeat\")")
end

export vl_hog

include("libvl/LIBVL.jl")
include("hog.jl")

end # module
