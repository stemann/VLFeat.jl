# Julia wrapper for header: /home/kevin/src/vlfeat/vl/array.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_array_get_num_dimensions,
    vl_array_get_dimensions,
    vl_array_get_data,
    vl_array_get_data_type,
    vl_array_get_num_elements,
    vl_array_init,
    vl_array_init_envelope,
    vl_array_init_matrix,
    vl_array_init_matrix_envelope,
    vl_array_new,
    vl_array_new_envelope,
    vl_array_new_matrix,
    vl_array_new_matrix_envelope,
    vl_array_dealloc,
    vl_array_delete


function vl_array_get_num_dimensions(self)
    ccall((:vl_array_get_num_dimensions,libvl),vl_size,(Ptr{VlArray},),self)
end

function vl_array_get_dimensions(self)
    ccall((:vl_array_get_dimensions,libvl),Ptr{vl_size},(Ptr{VlArray},),self)
end

function vl_array_get_data(self)
    ccall((:vl_array_get_data,libvl),Ptr{Void},(Ptr{VlArray},),self)
end

function vl_array_get_data_type(self)
    ccall((:vl_array_get_data_type,libvl),vl_type,(Ptr{VlArray},),self)
end

function vl_array_get_num_elements(self)
    ccall((:vl_array_get_num_elements,libvl),vl_size,(Ptr{VlArray},),self)
end

function vl_array_init(self,_type::vl_type,numDimension::Integer,dimensions)
    ccall((:vl_array_init,libvl),Ptr{VlArray},(Ptr{VlArray},vl_type,vl_size,Ptr{vl_size}),self,_type,numDimension,dimensions)
end

function vl_array_init_envelope(self,data,_type::vl_type,numDimension::Integer,dimensions)
    ccall((:vl_array_init_envelope,libvl),Ptr{VlArray},(Ptr{VlArray},Ptr{Void},vl_type,vl_size,Ptr{vl_size}),self,data,_type,numDimension,dimensions)
end

function vl_array_init_matrix(self,_type::vl_type,numRows::Integer,numColumns::Integer)
    ccall((:vl_array_init_matrix,libvl),Ptr{VlArray},(Ptr{VlArray},vl_type,vl_size,vl_size),self,_type,numRows,numColumns)
end

function vl_array_init_matrix_envelope(self,data,_type::vl_type,numRows::Integer,numColumns::Integer)
    ccall((:vl_array_init_matrix_envelope,libvl),Ptr{VlArray},(Ptr{VlArray},Ptr{Void},vl_type,vl_size,vl_size),self,data,_type,numRows,numColumns)
end

function vl_array_new(_type::vl_type,numDimension::Integer,dimensions)
    ccall((:vl_array_new,libvl),Ptr{VlArray},(vl_type,vl_size,Ptr{vl_size}),_type,numDimension,dimensions)
end

function vl_array_new_envelope(data,_type::vl_type,numDimension::Integer,dimensions)
    ccall((:vl_array_new_envelope,libvl),Ptr{VlArray},(Ptr{Void},vl_type,vl_size,Ptr{vl_size}),data,_type,numDimension,dimensions)
end

function vl_array_new_matrix(_type::vl_type,numRows::Integer,numColumns::Integer)
    ccall((:vl_array_new_matrix,libvl),Ptr{VlArray},(vl_type,vl_size,vl_size),_type,numRows,numColumns)
end

function vl_array_new_matrix_envelope(data,_type::vl_type,numRows::Integer,numColumns::Integer)
    ccall((:vl_array_new_matrix_envelope,libvl),Ptr{VlArray},(Ptr{Void},vl_type,vl_size,vl_size),data,_type,numRows,numColumns)
end

function vl_array_dealloc(self)
    ccall((:vl_array_dealloc,libvl),Void,(Ptr{VlArray},),self)
end

function vl_array_delete(self)
    ccall((:vl_array_delete,libvl),Void,(Ptr{VlArray},),self)
end
