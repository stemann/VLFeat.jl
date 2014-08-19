# Julia wrapper for header: /home/kevin/src/vlfeat/vl/pgm.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_pgm_extract_head,
    vl_pgm_extract_data,
    vl_pgm_insert,
    vl_pgm_get_npixels,
    vl_pgm_get_bpp,
    vl_pgm_write,
    vl_pgm_write_f,
    vl_pgm_read_new,
    vl_pgm_read_new_f


function vl_pgm_extract_head(f,im)
    ccall((:vl_pgm_extract_head,libvl),Cint,(Ptr{FILE},Ptr{VlPgmImage}),f,im)
end

function vl_pgm_extract_data(f,im,data)
    ccall((:vl_pgm_extract_data,libvl),Cint,(Ptr{FILE},Ptr{VlPgmImage},Ptr{Void}),f,im,data)
end

function vl_pgm_insert(f,im,data)
    ccall((:vl_pgm_insert,libvl),Cint,(Ptr{FILE},Ptr{VlPgmImage},Ptr{Void}),f,im,data)
end

function vl_pgm_get_npixels(im)
    ccall((:vl_pgm_get_npixels,libvl),vl_size,(Ptr{VlPgmImage},),im)
end

function vl_pgm_get_bpp(im)
    ccall((:vl_pgm_get_bpp,libvl),vl_size,(Ptr{VlPgmImage},),im)
end

function vl_pgm_write(name,data,width::Integer,height::Integer)
    ccall((:vl_pgm_write,libvl),Cint,(Ptr{Uint8},Ptr{vl_uint8},Cint,Cint),name,data,width,height)
end

function vl_pgm_write_f(name,data,width::Integer,height::Integer)
    ccall((:vl_pgm_write_f,libvl),Cint,(Ptr{Uint8},Ptr{Cfloat},Cint,Cint),name,data,width,height)
end

function vl_pgm_read_new(name,im,data)
    ccall((:vl_pgm_read_new,libvl),Cint,(Ptr{Uint8},Ptr{VlPgmImage},Ptr{Ptr{vl_uint8}}),name,im,data)
end

function vl_pgm_read_new_f(name,im,data)
    ccall((:vl_pgm_read_new_f,libvl),Cint,(Ptr{Uint8},Ptr{VlPgmImage},Ptr{Ptr{Cfloat}}),name,im,data)
end
