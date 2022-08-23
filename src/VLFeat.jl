module VLFeat

using ColorTypes
using FixedPointNumbers

export vl_hog

include("Wrapper.jl")
using .Wrapper

include("hog.jl")
include("sift.jl")

end # module
