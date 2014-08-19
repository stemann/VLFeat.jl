# Julia wrapper for header: /home/kevin/src/vlfeat/vl/hog.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_hog_get_permutation


function vl_hog_get_permutation(self)
    ccall((:vl_hog_get_permutation,libvl),Ptr{Cint},(Ptr{VlHog},),self)
end
