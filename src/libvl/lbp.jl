# Julia wrapper for header: /home/kevin/src/vlfeat/vl/lbp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_lbp_new,
    vl_lbp_delete,
    vl_lbp_process,
    vl_lbp_get_dimension


function vl_lbp_new(_type::VlLbpMappingType,transposed::Integer)
    ccall((:vl_lbp_new,libvl),Ptr{VlLbp},(VlLbpMappingType,vl_bool),_type,transposed)
end

function vl_lbp_delete(self)
    ccall((:vl_lbp_delete,libvl),Void,(Ptr{VlLbp},),self)
end

function vl_lbp_process(self,features,image,width::Integer,height::Integer,cellSize::Integer)
    ccall((:vl_lbp_process,libvl),Void,(Ptr{VlLbp},Ptr{Cfloat},Ptr{Cfloat},vl_size,vl_size,vl_size),self,features,image,width,height,cellSize)
end

function vl_lbp_get_dimension(self)
    ccall((:vl_lbp_get_dimension,libvl),vl_size,(Ptr{VlLbp},),self)
end
