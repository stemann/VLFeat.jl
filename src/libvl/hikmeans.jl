# Julia wrapper for header: /home/kevin/src/vlfeat/vl/hikmeans.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_hikm_get_root


function vl_hikm_get_root(f)
    ccall((:vl_hikm_get_root,libvl),Ptr{Cint},(Ptr{VlHIKMTree},),f)
end
