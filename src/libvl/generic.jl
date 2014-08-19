# Julia wrapper for header: /home/kevin/src/vlfeat/vl/generic.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_get_type_name,
    vl_get_type_size,
    vl_get_version_string,
    vl_configuration_to_string_copy,
    vl_set_simd_enabled,
    vl_get_simd_enabled,
    vl_cpu_has_avx,
    vl_cpu_has_sse3,
    vl_cpu_has_sse2,
    vl_get_num_cpus,
    vl_get_rand,
    vl_get_max_threads,
    vl_set_num_threads,
    vl_get_thread_limit,
    vl_get_last_error,
    vl_get_last_error_message,
    vl_set_alloc_func,
    vl_malloc,
    vl_realloc,
    vl_calloc,
    vl_memalign,
    vl_free,
    vl_set_printf_func,
    vl_get_printf_func,
    vl_tic,
    vl_toc,
    vl_get_cpu_time


function vl_get_type_name(_type::vl_type)
    ccall((:vl_get_type_name,libvl),Ptr{Uint8},(vl_type,),_type)
end

function vl_get_type_size(_type::vl_type)
    ccall((:vl_get_type_size,libvl),vl_size,(vl_type,),_type)
end

function vl_get_version_string()
    ccall((:vl_get_version_string,libvl),Ptr{Uint8},())
end

function vl_configuration_to_string_copy()
    ccall((:vl_configuration_to_string_copy,libvl),Ptr{Uint8},())
end

function vl_set_simd_enabled(x::vl_bool)
    ccall((:vl_set_simd_enabled,libvl),Void,(vl_bool,),x)
end

function vl_get_simd_enabled()
    ccall((:vl_get_simd_enabled,libvl),vl_bool,())
end

function vl_cpu_has_avx()
    ccall((:vl_cpu_has_avx,libvl),vl_bool,())
end

function vl_cpu_has_sse3()
    ccall((:vl_cpu_has_sse3,libvl),vl_bool,())
end

function vl_cpu_has_sse2()
    ccall((:vl_cpu_has_sse2,libvl),vl_bool,())
end

function vl_get_num_cpus()
    ccall((:vl_get_num_cpus,libvl),vl_size,())
end

function vl_get_rand()
    ccall((:vl_get_rand,libvl),Ptr{VlRand},())
end

function vl_get_max_threads()
    ccall((:vl_get_max_threads,libvl),vl_size,())
end

function vl_set_num_threads(n::vl_size)
    ccall((:vl_set_num_threads,libvl),Void,(vl_size,),n)
end

function vl_get_thread_limit()
    ccall((:vl_get_thread_limit,libvl),vl_size,())
end

function vl_get_last_error()
    ccall((:vl_get_last_error,libvl),Cint,())
end

function vl_get_last_error_message()
    ccall((:vl_get_last_error_message,libvl),Ptr{Uint8},())
end

function vl_set_alloc_func(malloc_func,realloc_func,calloc_func,free_func)
    ccall((:vl_set_alloc_func,libvl),Void,(Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),malloc_func,realloc_func,calloc_func,free_func)
end

function vl_malloc(n::Csize_t)
    ccall((:vl_malloc,libvl),Ptr{Void},(Csize_t,),n)
end

function vl_realloc(ptr,n::Csize_t)
    ccall((:vl_realloc,libvl),Ptr{Void},(Ptr{Void},Csize_t),ptr,n)
end

function vl_calloc(n::Csize_t,size::Csize_t)
    ccall((:vl_calloc,libvl),Ptr{Void},(Csize_t,Csize_t),n,size)
end

function vl_memalign(n::Csize_t,size::Csize_t)
    ccall((:vl_memalign,libvl),Ptr{Void},(Csize_t,Csize_t),n,size)
end

function vl_free(ptr)
    ccall((:vl_free,libvl),Void,(Ptr{Void},),ptr)
end

function vl_set_printf_func(printf_func::printf_func_t)
    ccall((:vl_set_printf_func,libvl),Void,(printf_func_t,),printf_func)
end

function vl_get_printf_func()
    ccall((:vl_get_printf_func,libvl),printf_func_t,())
end

function vl_tic()
    ccall((:vl_tic,libvl),Void,())
end

function vl_toc()
    ccall((:vl_toc,libvl),Cdouble,())
end

function vl_get_cpu_time()
    ccall((:vl_get_cpu_time,libvl),Cdouble,())
end
