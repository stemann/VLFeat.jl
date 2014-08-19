# Julia wrapper for header: /home/kevin/src/vlfeat/vl/svm.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_svm_get_statistics


function vl_svm_get_statistics(self)
    ccall((:vl_svm_get_statistics,libvl),Ptr{Cint},(Ptr{VlSvm},),self)
end
