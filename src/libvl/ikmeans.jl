# Julia wrapper for header: /home/kevin/src/vlfeat/vl/ikmeans.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_ikm_get_centers


function vl_ikm_get_centers(f)
    ccall((:vl_ikm_get_centers,libvl),Ptr{Cint},(Ptr{VlIKMFilt},),f)
end
