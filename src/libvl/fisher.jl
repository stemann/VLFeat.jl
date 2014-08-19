# Julia wrapper for header: /home/kevin/src/vlfeat/vl/fisher.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_fisher_encode


function vl_fisher_encode(enc,dataType::vl_type,means,dimension::vl_size,numClusters::vl_size,covariances,priors,data,numData::vl_size,flags::Integer)
    ccall((:vl_fisher_encode,libvl),vl_size,(Ptr{Void},vl_type,Ptr{Void},vl_size,vl_size,Ptr{Void},Ptr{Void},Ptr{Void},vl_size,Cint),enc,dataType,means,dimension,numClusters,covariances,priors,data,numData,flags)
end
