# Julia wrapper for header: /home/kevin/src/vlfeat/vl/sift.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_sift_get_keypoints


function vl_sift_get_keypoints(f)
    ccall((:vl_sift_get_keypoints,libvl),Ptr{Cint},(Ptr{VlSiftFilt},),f)
end
