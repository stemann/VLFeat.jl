# Julia wrapper for header: /home/kevin/src/vlfeat/vl/slic.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_slic_segment


function vl_slic_segment(segmentation,image,width::Integer,height::Integer,numChannels::Integer,regionSize::Integer,regularization::Cfloat,minRegionSize::Integer)
    ccall((:vl_slic_segment,libvl),Void,(Ptr{vl_uint32},Ptr{Cfloat},vl_size,vl_size,vl_size,vl_size,Cfloat,vl_size),segmentation,image,width,height,numChannels,regionSize,regularization,minRegionSize)
end
