# Julia wrapper for header: /home/kevin/src/vlfeat/vl/host.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_swap_host_big_endianness_8,
    vl_swap_host_big_endianness_4,
    vl_swap_host_big_endianness_2,
    _vl_x86cpu_info_init,
    _vl_x86cpu_info_to_string_copy,
    vl_swap_host_big_endianness_8,
    vl_swap_host_big_endianness_4,
    vl_swap_host_big_endianness_2


function vl_swap_host_big_endianness_8(dst,src)
    ccall((:vl_swap_host_big_endianness_8,libvl),Void,(Ptr{Void},Ptr{Void}),dst,src)
end

function vl_swap_host_big_endianness_4(dst,src)
    ccall((:vl_swap_host_big_endianness_4,libvl),Void,(Ptr{Void},Ptr{Void}),dst,src)
end

function vl_swap_host_big_endianness_2(dst,src)
    ccall((:vl_swap_host_big_endianness_2,libvl),Void,(Ptr{Void},Ptr{Void}),dst,src)
end

function _vl_x86cpu_info_init(self)
    ccall((:_vl_x86cpu_info_init,libvl),Void,(Ptr{VlX86CpuInfo},),self)
end

function _vl_x86cpu_info_to_string_copy(self)
    ccall((:_vl_x86cpu_info_to_string_copy,libvl),Ptr{Uint8},(Ptr{VlX86CpuInfo},),self)
end

function vl_swap_host_big_endianness_8(dst,src)
    ccall((:vl_swap_host_big_endianness_8,libvl),Void,(Ptr{Void},Ptr{Void}),dst,src)
end

function vl_swap_host_big_endianness_4(dst,src)
    ccall((:vl_swap_host_big_endianness_4,libvl),Void,(Ptr{Void},Ptr{Void}),dst,src)
end

function vl_swap_host_big_endianness_2(dst,src)
    ccall((:vl_swap_host_big_endianness_2,libvl),Void,(Ptr{Void},Ptr{Void}),dst,src)
end
