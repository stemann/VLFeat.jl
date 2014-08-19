# Julia wrapper for header: /home/kevin/src/vlfeat/vl/host.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    _vl_x86cpu_info_init,
    _vl_x86cpu_info_to_string_copy


function _vl_x86cpu_info_init(self)
    ccall((:_vl_x86cpu_info_init,libvl),Void,(Ptr{VlX86CpuInfo},),self)
end

function _vl_x86cpu_info_to_string_copy(self)
    ccall((:_vl_x86cpu_info_to_string_copy,libvl),Ptr{Uint8},(Ptr{VlX86CpuInfo},),self)
end
