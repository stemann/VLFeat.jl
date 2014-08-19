# Julia wrapper for header: /home/kevin/src/vlfeat/vl/homkermap.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_homogeneouskernelmap_new,
    vl_homogeneouskernelmap_delete,
    vl_homogeneouskernelmap_evaluate_d,
    vl_homogeneouskernelmap_evaluate_f,
    vl_homogeneouskernelmap_get_order,
    vl_homogeneouskernelmap_get_dimension,
    vl_homogeneouskernelmap_get_kernel_type,
    vl_homogeneouskernelmap_get_window_type


function vl_homogeneouskernelmap_new(kernelType::VlHomogeneousKernelType,gamma::Cdouble,order::Integer,period::Cdouble,windowType::VlHomogeneousKernelMapWindowType)
    ccall((:vl_homogeneouskernelmap_new,libvl),Ptr{VlHomogeneousKernelMap},(VlHomogeneousKernelType,Cdouble,vl_size,Cdouble,VlHomogeneousKernelMapWindowType),kernelType,gamma,order,period,windowType)
end

function vl_homogeneouskernelmap_delete(self)
    ccall((:vl_homogeneouskernelmap_delete,libvl),Void,(Ptr{VlHomogeneousKernelMap},),self)
end

function vl_homogeneouskernelmap_evaluate_d(self,destination,stride::Integer,x::Cdouble)
    ccall((:vl_homogeneouskernelmap_evaluate_d,libvl),Void,(Ptr{VlHomogeneousKernelMap},Ptr{Cdouble},vl_size,Cdouble),self,destination,stride,x)
end

function vl_homogeneouskernelmap_evaluate_f(self,destination,stride::Integer,x::Cdouble)
    ccall((:vl_homogeneouskernelmap_evaluate_f,libvl),Void,(Ptr{VlHomogeneousKernelMap},Ptr{Cfloat},vl_size,Cdouble),self,destination,stride,x)
end

function vl_homogeneouskernelmap_get_order(self)
    ccall((:vl_homogeneouskernelmap_get_order,libvl),vl_size,(Ptr{VlHomogeneousKernelMap},),self)
end

function vl_homogeneouskernelmap_get_dimension(self)
    ccall((:vl_homogeneouskernelmap_get_dimension,libvl),vl_size,(Ptr{VlHomogeneousKernelMap},),self)
end

function vl_homogeneouskernelmap_get_kernel_type(self)
    ccall((:vl_homogeneouskernelmap_get_kernel_type,libvl),VlHomogeneousKernelType,(Ptr{VlHomogeneousKernelMap},),self)
end

function vl_homogeneouskernelmap_get_window_type(self)
    ccall((:vl_homogeneouskernelmap_get_window_type,libvl),VlHomogeneousKernelMapWindowType,(Ptr{VlHomogeneousKernelMap},),self)
end
