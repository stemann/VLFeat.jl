# Julia wrapper for header: /home/kevin/src/vlfeat/vl/vlad.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_vlad_encode


function vl_vlad_encode(enc,dataType::vl_type,means,dimension::Integer,numClusters::Integer,data,numData::Integer,assignments,flags::Integer)
    ccall((:vl_vlad_encode,libvl),Void,(Ptr{Void},vl_type,Ptr{Void},vl_size,vl_size,Ptr{Void},vl_size,Ptr{Void},Cint),enc,dataType,means,dimension,numClusters,data,numData,assignments,flags)
end
