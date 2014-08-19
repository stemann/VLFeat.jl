# Julia wrapper for header: /home/kevin/src/vlfeat/vl/mathop_avx.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    _vl_distance_mahalanobis_sq_avx_d,
    _vl_distance_l2_avx_d,
    _vl_weighted_sigma_avx_d,
    _vl_weighted_mean_avx_d,
    _vl_distance_mahalanobis_sq_avx_f,
    _vl_distance_l2_avx_f,
    _vl_weighted_sigma_avx_f,
    _vl_weighted_mean_avx_f


function _vl_distance_mahalanobis_sq_avx_d(dimension::Integer,X,MU,S)
    ccall((:_vl_distance_mahalanobis_sq_avx_d,libvl),Cdouble,(vl_size,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),dimension,X,MU,S)
end

function _vl_distance_l2_avx_d(dimension::Integer,X,Y)
    ccall((:_vl_distance_l2_avx_d,libvl),Cdouble,(vl_size,Ptr{Cdouble},Ptr{Cdouble}),dimension,X,Y)
end

function _vl_weighted_sigma_avx_d(dimension::Integer,S,X,Y,W::Cdouble)
    ccall((:_vl_weighted_sigma_avx_d,libvl),Void,(vl_size,Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Cdouble),dimension,S,X,Y,W)
end

function _vl_weighted_mean_avx_d(dimension::Integer,MU,X,W::Cdouble)
    ccall((:_vl_weighted_mean_avx_d,libvl),Void,(vl_size,Ptr{Cdouble},Ptr{Cdouble},Cdouble),dimension,MU,X,W)
end

function _vl_distance_mahalanobis_sq_avx_f(dimension::Integer,X,MU,S)
    ccall((:_vl_distance_mahalanobis_sq_avx_f,libvl),Cfloat,(vl_size,Ptr{Cfloat},Ptr{Cfloat},Ptr{Cfloat}),dimension,X,MU,S)
end

function _vl_distance_l2_avx_f(dimension::Integer,X,Y)
    ccall((:_vl_distance_l2_avx_f,libvl),Cfloat,(vl_size,Ptr{Cfloat},Ptr{Cfloat}),dimension,X,Y)
end

function _vl_weighted_sigma_avx_f(dimension::Integer,S,X,Y,W::Cfloat)
    ccall((:_vl_weighted_sigma_avx_f,libvl),Void,(vl_size,Ptr{Cfloat},Ptr{Cfloat},Ptr{Cfloat},Cfloat),dimension,S,X,Y,W)
end

function _vl_weighted_mean_avx_f(dimension::Integer,MU,X,W::Cfloat)
    ccall((:_vl_weighted_mean_avx_f,libvl),Void,(vl_size,Ptr{Cfloat},Ptr{Cfloat},Cfloat),dimension,MU,X,W)
end
