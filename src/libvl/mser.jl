# Julia wrapper for header: /home/kevin/src/vlfeat/vl/mser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_mser_new,
    vl_mser_delete,
    vl_mser_process,
    vl_mser_ell_fit,
    vl_mser_get_regions_num,
    vl_mser_get_regions,
    vl_mser_get_ell,
    vl_mser_get_ell_num,
    vl_mser_get_ell_dof,
    vl_mser_get_stats,
    vl_mser_get_delta,
    vl_mser_get_min_area,
    vl_mser_get_max_area,
    vl_mser_get_max_variation,
    vl_mser_get_min_diversity,
    vl_mser_set_delta,
    vl_mser_set_min_area,
    vl_mser_set_max_area,
    vl_mser_set_max_variation,
    vl_mser_set_min_diversity,
    vl_mser_get_delta,
    vl_mser_set_delta,
    vl_mser_get_min_diversity,
    vl_mser_set_min_diversity,
    vl_mser_get_stats,
    vl_mser_get_max_area,
    vl_mser_set_max_area,
    vl_mser_get_min_area,
    vl_mser_set_min_area,
    vl_mser_get_max_variation,
    vl_mser_set_max_variation,
    vl_mser_get_regions,
    vl_mser_get_regions_num,
    vl_mser_get_ell,
    vl_mser_get_ell_dof,
    vl_mser_get_ell_num


function vl_mser_new(ndims::Integer,dims)
    ccall((:vl_mser_new,libvl),Ptr{VlMserFilt},(Cint,Ptr{Cint}),ndims,dims)
end

function vl_mser_delete(f)
    ccall((:vl_mser_delete,libvl),Void,(Ptr{VlMserFilt},),f)
end

function vl_mser_process(f,im)
    ccall((:vl_mser_process,libvl),Void,(Ptr{VlMserFilt},Ptr{vl_mser_pix}),f,im)
end

function vl_mser_ell_fit(f)
    ccall((:vl_mser_ell_fit,libvl),Void,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_regions_num(f)
    ccall((:vl_mser_get_regions_num,libvl),vl_uint,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_regions(f)
    ccall((:vl_mser_get_regions,libvl),Ptr{vl_uint},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_ell(f)
    ccall((:vl_mser_get_ell,libvl),Ptr{Cfloat},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_ell_num(f)
    ccall((:vl_mser_get_ell_num,libvl),vl_uint,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_ell_dof(f)
    ccall((:vl_mser_get_ell_dof,libvl),vl_uint,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_stats(f)
    ccall((:vl_mser_get_stats,libvl),Ptr{VlMserStats},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_delta(f)
    ccall((:vl_mser_get_delta,libvl),vl_mser_pix,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_min_area(f)
    ccall((:vl_mser_get_min_area,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_max_area(f)
    ccall((:vl_mser_get_max_area,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_max_variation(f)
    ccall((:vl_mser_get_max_variation,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_min_diversity(f)
    ccall((:vl_mser_get_min_diversity,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_set_delta(f,x::vl_mser_pix)
    ccall((:vl_mser_set_delta,libvl),Void,(Ptr{VlMserFilt},vl_mser_pix),f,x)
end

function vl_mser_set_min_area(f,x::Cdouble)
    ccall((:vl_mser_set_min_area,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_set_max_area(f,x::Cdouble)
    ccall((:vl_mser_set_max_area,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_set_max_variation(f,x::Cdouble)
    ccall((:vl_mser_set_max_variation,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_set_min_diversity(f,x::Cdouble)
    ccall((:vl_mser_set_min_diversity,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_get_delta(f)
    ccall((:vl_mser_get_delta,libvl),vl_mser_pix,(Ptr{VlMserFilt},),f)
end

function vl_mser_set_delta(f,x::vl_mser_pix)
    ccall((:vl_mser_set_delta,libvl),Void,(Ptr{VlMserFilt},vl_mser_pix),f,x)
end

function vl_mser_get_min_diversity(f)
    ccall((:vl_mser_get_min_diversity,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_set_min_diversity(f,x::Cdouble)
    ccall((:vl_mser_set_min_diversity,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_get_stats(f)
    ccall((:vl_mser_get_stats,libvl),Ptr{VlMserStats},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_max_area(f)
    ccall((:vl_mser_get_max_area,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_set_max_area(f,x::Cdouble)
    ccall((:vl_mser_set_max_area,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_get_min_area(f)
    ccall((:vl_mser_get_min_area,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_set_min_area(f,x::Cdouble)
    ccall((:vl_mser_set_min_area,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_get_max_variation(f)
    ccall((:vl_mser_get_max_variation,libvl),Cdouble,(Ptr{VlMserFilt},),f)
end

function vl_mser_set_max_variation(f,x::Cdouble)
    ccall((:vl_mser_set_max_variation,libvl),Void,(Ptr{VlMserFilt},Cdouble),f,x)
end

function vl_mser_get_regions(f)
    ccall((:vl_mser_get_regions,libvl),Ptr{vl_uint},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_regions_num(f)
    ccall((:vl_mser_get_regions_num,libvl),vl_uint,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_ell(f)
    ccall((:vl_mser_get_ell,libvl),Ptr{Cfloat},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_ell_dof(f)
    ccall((:vl_mser_get_ell_dof,libvl),vl_uint,(Ptr{VlMserFilt},),f)
end

function vl_mser_get_ell_num(f)
    ccall((:vl_mser_get_ell_num,libvl),vl_uint,(Ptr{VlMserFilt},),f)
end
