# Julia wrapper for header: /home/kevin/src/vlfeat/vl/mathop.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_mod_2pi_f,
    vl_mod_2pi_d,
    vl_floor_f,
    vl_floor_d,
    vl_ceil_f,
    vl_ceil_d,
    vl_round_f,
    vl_round_d,
    vl_abs_f,
    vl_abs_d,
    vl_log2_d,
    vl_log2_f,
    vl_sqrt_d,
    vl_sqrt_f,
    vl_is_nan_f,
    vl_is_nan_d,
    vl_is_inf_f,
    vl_is_inf_d,
    vl_fast_atan2_f,
    vl_fast_atan2_d,
    vl_fast_resqrt_f,
    vl_fast_resqrt_d,
    vl_fast_sqrt_f,
    vl_fast_sqrt_d,
    vl_fast_sqrt_ui64,
    vl_fast_sqrt_ui32,
    vl_fast_sqrt_ui16,
    vl_fast_sqrt_ui8,
    vl_fast_sqrt_ui64,
    vl_fast_sqrt_ui32,
    vl_fast_sqrt_ui16,
    vl_fast_sqrt_ui8,
    vl_get_vector_comparison_type_name,
    vl_get_vector_comparison_function_f,
    vl_get_vector_comparison_function_d,
    vl_get_vector_3_comparison_function_f,
    vl_get_vector_3_comparison_function_d,
    vl_eval_vector_comparison_on_all_pairs_f,
    vl_eval_vector_comparison_on_all_pairs_d,
    vl_svd2,
    vl_lapack_dlasv2,
    vl_solve_linear_system_3,
    vl_solve_linear_system_2,
    vl_gaussian_elimination


function vl_mod_2pi_f(x::Cfloat)
    ccall((:vl_mod_2pi_f,libvl),Cfloat,(Cfloat,),x)
end

function vl_mod_2pi_d(x::Cdouble)
    ccall((:vl_mod_2pi_d,libvl),Cdouble,(Cdouble,),x)
end

function vl_floor_f(x::Cfloat)
    ccall((:vl_floor_f,libvl),Clong,(Cfloat,),x)
end

function vl_floor_d(x::Cdouble)
    ccall((:vl_floor_d,libvl),Clong,(Cdouble,),x)
end

function vl_ceil_f(x::Cfloat)
    ccall((:vl_ceil_f,libvl),Clong,(Cfloat,),x)
end

function vl_ceil_d(x::Cdouble)
    ccall((:vl_ceil_d,libvl),Clong,(Cdouble,),x)
end

function vl_round_f(x::Cfloat)
    ccall((:vl_round_f,libvl),Clong,(Cfloat,),x)
end

function vl_round_d(x::Cdouble)
    ccall((:vl_round_d,libvl),Clong,(Cdouble,),x)
end

function vl_abs_f(x::Cfloat)
    ccall((:vl_abs_f,libvl),Cfloat,(Cfloat,),x)
end

function vl_abs_d(x::Cdouble)
    ccall((:vl_abs_d,libvl),Cdouble,(Cdouble,),x)
end

function vl_log2_d(x::Cdouble)
    ccall((:vl_log2_d,libvl),Cdouble,(Cdouble,),x)
end

function vl_log2_f(x::Cfloat)
    ccall((:vl_log2_f,libvl),Cfloat,(Cfloat,),x)
end

function vl_sqrt_d(x::Cdouble)
    ccall((:vl_sqrt_d,libvl),Cdouble,(Cdouble,),x)
end

function vl_sqrt_f(x::Cfloat)
    ccall((:vl_sqrt_f,libvl),Cfloat,(Cfloat,),x)
end

function vl_is_nan_f(x::Cfloat)
    ccall((:vl_is_nan_f,libvl),vl_bool,(Cfloat,),x)
end

function vl_is_nan_d(x::Cdouble)
    ccall((:vl_is_nan_d,libvl),vl_bool,(Cdouble,),x)
end

function vl_is_inf_f(x::Cfloat)
    ccall((:vl_is_inf_f,libvl),vl_bool,(Cfloat,),x)
end

function vl_is_inf_d(x::Cdouble)
    ccall((:vl_is_inf_d,libvl),vl_bool,(Cdouble,),x)
end

function vl_fast_atan2_f(y::Cfloat,x::Cfloat)
    ccall((:vl_fast_atan2_f,libvl),Cfloat,(Cfloat,Cfloat),y,x)
end

function vl_fast_atan2_d(y::Cdouble,x::Cdouble)
    ccall((:vl_fast_atan2_d,libvl),Cdouble,(Cdouble,Cdouble),y,x)
end

function vl_fast_resqrt_f(x::Cfloat)
    ccall((:vl_fast_resqrt_f,libvl),Cfloat,(Cfloat,),x)
end

function vl_fast_resqrt_d(x::Cdouble)
    ccall((:vl_fast_resqrt_d,libvl),Cdouble,(Cdouble,),x)
end

function vl_fast_sqrt_f(x::Cfloat)
    ccall((:vl_fast_sqrt_f,libvl),Cfloat,(Cfloat,),x)
end

function vl_fast_sqrt_d(x::Cfloat)
    ccall((:vl_fast_sqrt_d,libvl),Cdouble,(Cfloat,),x)
end

function vl_fast_sqrt_ui64(x::vl_uint64)
    ccall((:vl_fast_sqrt_ui64,libvl),vl_uint64,(vl_uint64,),x)
end

function vl_fast_sqrt_ui32(x::vl_uint32)
    ccall((:vl_fast_sqrt_ui32,libvl),vl_uint32,(vl_uint32,),x)
end

function vl_fast_sqrt_ui16(x::vl_uint16)
    ccall((:vl_fast_sqrt_ui16,libvl),vl_uint16,(vl_uint16,),x)
end

function vl_fast_sqrt_ui8(x::vl_uint8)
    ccall((:vl_fast_sqrt_ui8,libvl),vl_uint8,(vl_uint8,),x)
end

function vl_fast_sqrt_ui64(x::vl_uint64)
    ccall((:vl_fast_sqrt_ui64,libvl),vl_uint64,(vl_uint64,),x)
end

function vl_fast_sqrt_ui32(x::vl_uint32)
    ccall((:vl_fast_sqrt_ui32,libvl),vl_uint32,(vl_uint32,),x)
end

function vl_fast_sqrt_ui16(x::vl_uint16)
    ccall((:vl_fast_sqrt_ui16,libvl),vl_uint16,(vl_uint16,),x)
end

function vl_fast_sqrt_ui8(x::vl_uint8)
    ccall((:vl_fast_sqrt_ui8,libvl),vl_uint8,(vl_uint8,),x)
end

function vl_get_vector_comparison_type_name(_type::Integer)
    ccall((:vl_get_vector_comparison_type_name,libvl),Ptr{Uint8},(Cint,),_type)
end

function vl_get_vector_comparison_function_f(_type::VlVectorComparisonType)
    ccall((:vl_get_vector_comparison_function_f,libvl),VlFloatVectorComparisonFunction,(VlVectorComparisonType,),_type)
end

function vl_get_vector_comparison_function_d(_type::VlVectorComparisonType)
    ccall((:vl_get_vector_comparison_function_d,libvl),VlDoubleVectorComparisonFunction,(VlVectorComparisonType,),_type)
end

function vl_get_vector_3_comparison_function_f(_type::VlVectorComparisonType)
    ccall((:vl_get_vector_3_comparison_function_f,libvl),VlFloatVector3ComparisonFunction,(VlVectorComparisonType,),_type)
end

function vl_get_vector_3_comparison_function_d(_type::VlVectorComparisonType)
    ccall((:vl_get_vector_3_comparison_function_d,libvl),VlDoubleVector3ComparisonFunction,(VlVectorComparisonType,),_type)
end

function vl_eval_vector_comparison_on_all_pairs_f(result,dimension::Integer,X,numDataX::Integer,Y,numDataY::Integer,_function::VlFloatVectorComparisonFunction)
    ccall((:vl_eval_vector_comparison_on_all_pairs_f,libvl),Void,(Ptr{Cfloat},vl_size,Ptr{Cfloat},vl_size,Ptr{Cfloat},vl_size,VlFloatVectorComparisonFunction),result,dimension,X,numDataX,Y,numDataY,_function)
end

function vl_eval_vector_comparison_on_all_pairs_d(result,dimension::Integer,X,numDataX::Integer,Y,numDataY::Integer,_function::VlDoubleVectorComparisonFunction)
    ccall((:vl_eval_vector_comparison_on_all_pairs_d,libvl),Void,(Ptr{Cdouble},vl_size,Ptr{Cdouble},vl_size,Ptr{Cdouble},vl_size,VlDoubleVectorComparisonFunction),result,dimension,X,numDataX,Y,numDataY,_function)
end

function vl_svd2(S,U,V,M)
    ccall((:vl_svd2,libvl),Void,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),S,U,V,M)
end

function vl_lapack_dlasv2(smin,smax,sv,cv,su,cu,f::Cdouble,g::Cdouble,h::Cdouble)
    ccall((:vl_lapack_dlasv2,libvl),Void,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble,Cdouble,Cdouble),smin,smax,sv,cv,su,cu,f,g,h)
end

function vl_solve_linear_system_3(x,A,b)
    ccall((:vl_solve_linear_system_3,libvl),Cint,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),x,A,b)
end

function vl_solve_linear_system_2(x,A,b)
    ccall((:vl_solve_linear_system_2,libvl),Cint,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),x,A,b)
end

function vl_gaussian_elimination(A,numRows::Integer,numColumns::Integer)
    ccall((:vl_gaussian_elimination,libvl),Cint,(Ptr{Cdouble},vl_size,vl_size),A,numRows,numColumns)
end
