# Julia wrapper for header: /home/kevin/src/vlfeat/vl/svmdataset.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_svmdataset_new,
    vl_svmdataset_delete,
    vl_svmdataset_set_homogeneous_kernel_map,
    vl_svmdataset_get_data,
    vl_svmdataset_get_num_data,
    vl_svmdataset_get_dimension,
    vl_svmdataset_get_map,
    vl_svmdataset_get_mapDim,
    vl_svmdataset_get_accumulate_function,
    vl_svmdataset_get_inner_product_function,
    vl_svmdataset_get_homogeneous_kernel_map


function vl_svmdataset_new(dataType::vl_type,data,dimension::Integer,numData::Integer)
    ccall((:vl_svmdataset_new,libvl),Ptr{VlSvmDataset},(vl_type,Ptr{Void},vl_size,vl_size),dataType,data,dimension,numData)
end

function vl_svmdataset_delete(dataset)
    ccall((:vl_svmdataset_delete,libvl),Void,(Ptr{VlSvmDataset},),dataset)
end

function vl_svmdataset_set_homogeneous_kernel_map(self,hom)
    ccall((:vl_svmdataset_set_homogeneous_kernel_map,libvl),Void,(Ptr{VlSvmDataset},Ptr{VlHomogeneousKernelMap}),self,hom)
end

function vl_svmdataset_get_data(self)
    ccall((:vl_svmdataset_get_data,libvl),Ptr{Void},(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_num_data(self)
    ccall((:vl_svmdataset_get_num_data,libvl),vl_size,(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_dimension(self)
    ccall((:vl_svmdataset_get_dimension,libvl),vl_size,(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_map(self)
    ccall((:vl_svmdataset_get_map,libvl),Ptr{Void},(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_mapDim(self)
    ccall((:vl_svmdataset_get_mapDim,libvl),vl_size,(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_accumulate_function(self)
    ccall((:vl_svmdataset_get_accumulate_function,libvl),VlSvmAccumulateFunction,(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_inner_product_function(self)
    ccall((:vl_svmdataset_get_inner_product_function,libvl),VlSvmInnerProductFunction,(Ptr{VlSvmDataset},),self)
end

function vl_svmdataset_get_homogeneous_kernel_map(self)
    ccall((:vl_svmdataset_get_homogeneous_kernel_map,libvl),Ptr{VlHomogeneousKernelMap},(Ptr{VlSvmDataset},),self)
end
