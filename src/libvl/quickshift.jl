# Julia wrapper for header: /home/kevin/src/vlfeat/vl/quickshift.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_quickshift_new,
    vl_quickshift_delete,
    vl_quickshift_process,
    vl_quickshift_get_max_dist,
    vl_quickshift_get_kernel_size,
    vl_quickshift_get_medoid,
    vl_quickshift_get_parents,
    vl_quickshift_get_dists,
    vl_quickshift_get_density,
    vl_quickshift_set_max_dist,
    vl_quickshift_set_kernel_size,
    vl_quickshift_set_medoid,
    vl_quickshift_get_max_dist,
    vl_quickshift_get_kernel_size,
    vl_quickshift_get_medoid,
    vl_quickshift_get_parents,
    vl_quickshift_get_dists,
    vl_quickshift_get_density,
    vl_quickshift_set_kernel_size,
    vl_quickshift_set_max_dist,
    vl_quickshift_set_medoid


function vl_quickshift_new(im,height::Integer,width::Integer,channels::Integer)
    ccall((:vl_quickshift_new,libvl),Ptr{VlQS},(Ptr{vl_qs_type},Cint,Cint,Cint),im,height,width,channels)
end

function vl_quickshift_delete(q)
    ccall((:vl_quickshift_delete,libvl),Void,(Ptr{VlQS},),q)
end

function vl_quickshift_process(q)
    ccall((:vl_quickshift_process,libvl),Void,(Ptr{VlQS},),q)
end

function vl_quickshift_get_max_dist(q)
    ccall((:vl_quickshift_get_max_dist,libvl),vl_qs_type,(Ptr{VlQS},),q)
end

function vl_quickshift_get_kernel_size(q)
    ccall((:vl_quickshift_get_kernel_size,libvl),vl_qs_type,(Ptr{VlQS},),q)
end

function vl_quickshift_get_medoid(q)
    ccall((:vl_quickshift_get_medoid,libvl),vl_bool,(Ptr{VlQS},),q)
end

function vl_quickshift_get_parents(q)
    ccall((:vl_quickshift_get_parents,libvl),Ptr{Cint},(Ptr{VlQS},),q)
end

function vl_quickshift_get_dists(q)
    ccall((:vl_quickshift_get_dists,libvl),Ptr{vl_qs_type},(Ptr{VlQS},),q)
end

function vl_quickshift_get_density(q)
    ccall((:vl_quickshift_get_density,libvl),Ptr{vl_qs_type},(Ptr{VlQS},),q)
end

function vl_quickshift_set_max_dist(f,tau::vl_qs_type)
    ccall((:vl_quickshift_set_max_dist,libvl),Void,(Ptr{VlQS},vl_qs_type),f,tau)
end

function vl_quickshift_set_kernel_size(f,sigma::vl_qs_type)
    ccall((:vl_quickshift_set_kernel_size,libvl),Void,(Ptr{VlQS},vl_qs_type),f,sigma)
end

function vl_quickshift_set_medoid(f,medoid::vl_bool)
    ccall((:vl_quickshift_set_medoid,libvl),Void,(Ptr{VlQS},vl_bool),f,medoid)
end

function vl_quickshift_get_max_dist(q)
    ccall((:vl_quickshift_get_max_dist,libvl),vl_qs_type,(Ptr{VlQS},),q)
end

function vl_quickshift_get_kernel_size(q)
    ccall((:vl_quickshift_get_kernel_size,libvl),vl_qs_type,(Ptr{VlQS},),q)
end

function vl_quickshift_get_medoid(q)
    ccall((:vl_quickshift_get_medoid,libvl),vl_bool,(Ptr{VlQS},),q)
end

function vl_quickshift_get_parents(q)
    ccall((:vl_quickshift_get_parents,libvl),Ptr{Cint},(Ptr{VlQS},),q)
end

function vl_quickshift_get_dists(q)
    ccall((:vl_quickshift_get_dists,libvl),Ptr{vl_qs_type},(Ptr{VlQS},),q)
end

function vl_quickshift_get_density(q)
    ccall((:vl_quickshift_get_density,libvl),Ptr{vl_qs_type},(Ptr{VlQS},),q)
end

function vl_quickshift_set_kernel_size(q,sigma::vl_qs_type)
    ccall((:vl_quickshift_set_kernel_size,libvl),Void,(Ptr{VlQS},vl_qs_type),q,sigma)
end

function vl_quickshift_set_max_dist(q,tau::vl_qs_type)
    ccall((:vl_quickshift_set_max_dist,libvl),Void,(Ptr{VlQS},vl_qs_type),q,tau)
end

function vl_quickshift_set_medoid(q,medoid::vl_bool)
    ccall((:vl_quickshift_set_medoid,libvl),Void,(Ptr{VlQS},vl_bool),q,medoid)
end
