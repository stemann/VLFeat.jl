# Julia wrapper for header: /home/kevin/src/vlfeat/vl/random.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_rand_init,
    vl_rand_seed,
    vl_rand_seed_by_array,
    vl_rand_uint64,
    vl_rand_int63,
    vl_rand_uint32,
    vl_rand_int31,
    vl_rand_real1,
    vl_rand_real2,
    vl_rand_real3,
    vl_rand_res53,
    vl_rand_uindex,
    vl_rand_permute_indexes,
    vl_rand_uindex,
    vl_rand_uint64,
    vl_rand_int63,
    vl_rand_int31,
    vl_rand_real1,
    vl_rand_real2,
    vl_rand_real3,
    vl_rand_res53


function vl_rand_init(self)
    ccall((:vl_rand_init,libvl),Void,(Ptr{VlRand},),self)
end

function vl_rand_seed(self,s::vl_uint32)
    ccall((:vl_rand_seed,libvl),Void,(Ptr{VlRand},vl_uint32),self,s)
end

function vl_rand_seed_by_array(self,key,keySize::vl_size)
    ccall((:vl_rand_seed_by_array,libvl),Void,(Ptr{VlRand},Ptr{vl_uint32},vl_size),self,key,keySize)
end

function vl_rand_uint64(self)
    ccall((:vl_rand_uint64,libvl),vl_uint64,(Ptr{VlRand},),self)
end

function vl_rand_int63(self)
    ccall((:vl_rand_int63,libvl),vl_int64,(Ptr{VlRand},),self)
end

function vl_rand_uint32(self)
    ccall((:vl_rand_uint32,libvl),vl_uint32,(Ptr{VlRand},),self)
end

function vl_rand_int31(self)
    ccall((:vl_rand_int31,libvl),vl_int32,(Ptr{VlRand},),self)
end

function vl_rand_real1(self)
    ccall((:vl_rand_real1,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_real2(self)
    ccall((:vl_rand_real2,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_real3(self)
    ccall((:vl_rand_real3,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_res53(self)
    ccall((:vl_rand_res53,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_uindex(self,range::vl_uindex)
    ccall((:vl_rand_uindex,libvl),vl_uindex,(Ptr{VlRand},vl_uindex),self,range)
end

function vl_rand_permute_indexes(self,array,size::vl_size)
    ccall((:vl_rand_permute_indexes,libvl),Void,(Ptr{VlRand},Ptr{vl_index},vl_size),self,array,size)
end

function vl_rand_uindex(self,range::vl_uindex)
    ccall((:vl_rand_uindex,libvl),vl_uindex,(Ptr{VlRand},vl_uindex),self,range)
end

function vl_rand_uint64(self)
    ccall((:vl_rand_uint64,libvl),vl_uint64,(Ptr{VlRand},),self)
end

function vl_rand_int63(self)
    ccall((:vl_rand_int63,libvl),vl_int64,(Ptr{VlRand},),self)
end

function vl_rand_int31(self)
    ccall((:vl_rand_int31,libvl),vl_int32,(Ptr{VlRand},),self)
end

function vl_rand_real1(self)
    ccall((:vl_rand_real1,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_real2(self)
    ccall((:vl_rand_real2,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_real3(self)
    ccall((:vl_rand_real3,libvl),Cdouble,(Ptr{VlRand},),self)
end

function vl_rand_res53(self)
    ccall((:vl_rand_res53,libvl),Cdouble,(Ptr{VlRand},),self)
end
