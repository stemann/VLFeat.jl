# Julia wrapper for header: /home/kevin/src/vlfeat/vl/covdet.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_covdet_get_laplacian_scales_statistics


function vl_covdet_get_laplacian_scales_statistics(self,numScales)
    ccall((:vl_covdet_get_laplacian_scales_statistics,libvl),Ptr{Cint},(Ptr{VlCovDet},Ptr{vl_size}),self,numScales)
end
