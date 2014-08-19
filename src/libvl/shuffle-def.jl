# Julia wrapper for header: /home/kevin/src/vlfeat/vl/shuffle-def.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    VL_SHUFFLE_prefix_swap,
    VL_SHUFFLE_prefix_shuffle


function VL_SHUFFLE_prefix_swap(array,indexA::vl_uindex,indexB::vl_uindex)
    ccall((:VL_SHUFFLE_prefix_swap,libvl),Void,(Ptr{Cint},vl_uindex,vl_uindex),array,indexA,indexB)
end

function VL_SHUFFLE_prefix_shuffle(array,size::Integer,rand)
    ccall((:VL_SHUFFLE_prefix_shuffle,libvl),Void,(Ptr{Cint},vl_size,Ptr{VlRand}),array,size,rand)
end
