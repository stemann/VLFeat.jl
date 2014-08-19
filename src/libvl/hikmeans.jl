# Julia wrapper for header: /home/kevin/src/vlfeat/vl/hikmeans.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_hikm_new,
    vl_hikm_delete,
    vl_hikm_get_ndims,
    vl_hikm_get_K,
    vl_hikm_get_depth,
    vl_hikm_get_verbosity,
    vl_hikm_get_max_niters,
    vl_hikm_get_root,
    vl_hikm_set_verbosity,
    vl_hikm_set_max_niters,
    vl_hikm_init,
    vl_hikm_train,
    vl_hikm_push


function vl_hikm_new(method::Integer)
    ccall((:vl_hikm_new,libvl),Ptr{VlHIKMTree},(Cint,),method)
end

function vl_hikm_delete(f)
    ccall((:vl_hikm_delete,libvl),Void,(Ptr{VlHIKMTree},),f)
end

function vl_hikm_get_ndims(f)
    ccall((:vl_hikm_get_ndims,libvl),vl_size,(Ptr{VlHIKMTree},),f)
end

function vl_hikm_get_K(f)
    ccall((:vl_hikm_get_K,libvl),vl_size,(Ptr{VlHIKMTree},),f)
end

function vl_hikm_get_depth(f)
    ccall((:vl_hikm_get_depth,libvl),vl_size,(Ptr{VlHIKMTree},),f)
end

function vl_hikm_get_verbosity(f)
    ccall((:vl_hikm_get_verbosity,libvl),Cint,(Ptr{VlHIKMTree},),f)
end

function vl_hikm_get_max_niters(f)
    ccall((:vl_hikm_get_max_niters,libvl),vl_size,(Ptr{VlHIKMTree},),f)
end

function vl_hikm_get_root(f)
    ccall((:vl_hikm_get_root,libvl),Ptr{VlHIKMNode},(Ptr{VlHIKMTree},),f)
end

function vl_hikm_set_verbosity(f,verb::Integer)
    ccall((:vl_hikm_set_verbosity,libvl),Void,(Ptr{VlHIKMTree},Cint),f,verb)
end

function vl_hikm_set_max_niters(f,max_niters::Integer)
    ccall((:vl_hikm_set_max_niters,libvl),Void,(Ptr{VlHIKMTree},Cint),f,max_niters)
end

function vl_hikm_init(f,M::vl_size,K::vl_size,depth::vl_size)
    ccall((:vl_hikm_init,libvl),Void,(Ptr{VlHIKMTree},vl_size,vl_size,vl_size),f,M,K,depth)
end

function vl_hikm_train(f,data,N::vl_size)
    ccall((:vl_hikm_train,libvl),Void,(Ptr{VlHIKMTree},Ptr{vl_uint8},vl_size),f,data,N)
end

function vl_hikm_push(f,asgn,data,N::vl_size)
    ccall((:vl_hikm_push,libvl),Void,(Ptr{VlHIKMTree},Ptr{vl_uint32},Ptr{vl_uint8},vl_size),f,asgn,data,N)
end
