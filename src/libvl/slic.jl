# Julia wrapper for header: /home/kevin/src/vlfeat/vl/slic.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_slic_segment


function vl_slic_segment(segmentation,image,width::vl_size,height::vl_size,numChannels::vl_size,regionSize::vl_size,regularization::Cfloat,minRegionSize::vl_size)
    ccall((:vl_slic_segment,libvl),Void,(Ptr{vl_uint32},Ptr{Cfloat},vl_size,vl_size,vl_size,vl_size,Cfloat,vl_size),segmentation,image,width,height,numChannels,regionSize,regularization,minRegionSize)
end
