module VLFeat
using Images

export vl_hog

const libvl=:libvl

include("libvl/LIBVL.jl")
include("hog.jl")

end # module
