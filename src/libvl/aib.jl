# Julia wrapper for header: /home/kevin/src/vlfeat/vl/aib.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_aib_new,
    vl_aib_delete,
    vl_aib_process,
    vl_aib_get_parents,
    vl_aib_get_costs,
    vl_aib_get_parents,
    vl_aib_get_costs,
    vl_aib_set_verbosity,
    vl_aib_get_verbosity


function vl_aib_new(Pcx,nvalues::vl_uint,nlabels::vl_uint)
    ccall((:vl_aib_new,libvl),Ptr{VlAIB},(Ptr{Cdouble},vl_uint,vl_uint),Pcx,nvalues,nlabels)
end

function vl_aib_delete(aib)
    ccall((:vl_aib_delete,libvl),Void,(Ptr{VlAIB},),aib)
end

function vl_aib_process(aib)
    ccall((:vl_aib_process,libvl),Void,(Ptr{VlAIB},),aib)
end

function vl_aib_get_parents(aib)
    ccall((:vl_aib_get_parents,libvl),Ptr{vl_uint},(Ptr{VlAIB},),aib)
end

function vl_aib_get_costs(aib)
    ccall((:vl_aib_get_costs,libvl),Ptr{Cdouble},(Ptr{VlAIB},),aib)
end

function vl_aib_get_parents(aib)
    ccall((:vl_aib_get_parents,libvl),Ptr{vl_uint},(Ptr{VlAIB},),aib)
end

function vl_aib_get_costs(aib)
    ccall((:vl_aib_get_costs,libvl),Ptr{Cdouble},(Ptr{VlAIB},),aib)
end

function vl_aib_set_verbosity(self,verbosity::Integer)
    ccall((:vl_aib_set_verbosity,libvl),Void,(Ptr{VlAIB},Cint),self,verbosity)
end

function vl_aib_get_verbosity(self)
    ccall((:vl_aib_get_verbosity,libvl),Cint,(Ptr{VlAIB},),self)
end
