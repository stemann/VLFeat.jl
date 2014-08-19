# Julia wrapper for header: /home/kevin/src/vlfeat/vl/ikmeans.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_ikm_new,
    vl_ikm_delete,
    vl_ikm_init,
    vl_ikm_init_rand,
    vl_ikm_init_rand_data,
    vl_ikm_train,
    vl_ikm_push,
    vl_ikm_push_one,
    vl_ikm_get_ndims,
    vl_ikm_get_K,
    vl_ikm_get_verbosity,
    vl_ikm_get_max_niters,
    vl_ikm_get_centers,
    vl_ikm_set_verbosity,
    vl_ikm_set_max_niters


function vl_ikm_new(method::Integer)
    ccall((:vl_ikm_new,libvl),Ptr{VlIKMFilt},(Cint,),method)
end

function vl_ikm_delete(f)
    ccall((:vl_ikm_delete,libvl),Void,(Ptr{VlIKMFilt},),f)
end

function vl_ikm_init(f,centers,M::Integer,K::Integer)
    ccall((:vl_ikm_init,libvl),Void,(Ptr{VlIKMFilt},Ptr{vl_ikmacc_t},vl_size,vl_size),f,centers,M,K)
end

function vl_ikm_init_rand(f,M::Integer,K::Integer)
    ccall((:vl_ikm_init_rand,libvl),Void,(Ptr{VlIKMFilt},vl_size,vl_size),f,M,K)
end

function vl_ikm_init_rand_data(f,data,M::Integer,N::Integer,K::Integer)
    ccall((:vl_ikm_init_rand_data,libvl),Void,(Ptr{VlIKMFilt},Ptr{vl_uint8},vl_size,vl_size,vl_size),f,data,M,N,K)
end

function vl_ikm_train(f,data,N::Integer)
    ccall((:vl_ikm_train,libvl),Cint,(Ptr{VlIKMFilt},Ptr{vl_uint8},vl_size),f,data,N)
end

function vl_ikm_push(f,asgn,data,N::Integer)
    ccall((:vl_ikm_push,libvl),Void,(Ptr{VlIKMFilt},Ptr{vl_uint32},Ptr{vl_uint8},vl_size),f,asgn,data,N)
end

function vl_ikm_push_one(centers,data,M::Integer,K::Integer)
    ccall((:vl_ikm_push_one,libvl),vl_uint,(Ptr{vl_ikmacc_t},Ptr{vl_uint8},vl_size,vl_size),centers,data,M,K)
end

function vl_ikm_get_ndims(f)
    ccall((:vl_ikm_get_ndims,libvl),vl_size,(Ptr{VlIKMFilt},),f)
end

function vl_ikm_get_K(f)
    ccall((:vl_ikm_get_K,libvl),vl_size,(Ptr{VlIKMFilt},),f)
end

function vl_ikm_get_verbosity(f)
    ccall((:vl_ikm_get_verbosity,libvl),Cint,(Ptr{VlIKMFilt},),f)
end

function vl_ikm_get_max_niters(f)
    ccall((:vl_ikm_get_max_niters,libvl),vl_size,(Ptr{VlIKMFilt},),f)
end

function vl_ikm_get_centers(f)
    ccall((:vl_ikm_get_centers,libvl),Ptr{vl_ikmacc_t},(Ptr{VlIKMFilt},),f)
end

function vl_ikm_set_verbosity(f,verb::Integer)
    ccall((:vl_ikm_set_verbosity,libvl),Void,(Ptr{VlIKMFilt},Cint),f,verb)
end

function vl_ikm_set_max_niters(f,max_niters::Integer)
    ccall((:vl_ikm_set_max_niters,libvl),Void,(Ptr{VlIKMFilt},vl_size),f,max_niters)
end
