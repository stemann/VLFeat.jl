# Julia wrapper for header: /home/kevin/src/vlfeat/vl/heap-def.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_heap_parent,
    vl_heap_left_child,
    vl_heap_right_child,
    VL_HEAP_prefix_cmp,
    VL_HEAP_prefix_swap,
    VL_HEAP_prefix_up,
    VL_HEAP_prefix_down,
    VL_HEAP_prefix_push,
    VL_HEAP_prefix_pop,
    VL_HEAP_prefix_update


function vl_heap_parent(index::vl_uindex)
    ccall((:vl_heap_parent,libvl),vl_uindex,(vl_uindex,),index)
end

function vl_heap_left_child(index::vl_uindex)
    ccall((:vl_heap_left_child,libvl),vl_uindex,(vl_uindex,),index)
end

function vl_heap_right_child(index::vl_uindex)
    ccall((:vl_heap_right_child,libvl),vl_uindex,(vl_uindex,),index)
end

function VL_HEAP_prefix_cmp()
    ccall((:VL_HEAP_prefix_cmp,libvl),Cint,())
end

function VL_HEAP_prefix_swap(array,indexA::vl_uindex,indexB::vl_uindex)
    ccall((:VL_HEAP_prefix_swap,libvl),Void,(Ptr{Cint},vl_uindex,vl_uindex),array,indexA,indexB)
end

function VL_HEAP_prefix_up(array,heapSize::vl_size,index::vl_uindex)
    ccall((:VL_HEAP_prefix_up,libvl),Void,(Ptr{Cint},vl_size,vl_uindex),array,heapSize,index)
end

function VL_HEAP_prefix_down(array,index::vl_uindex)
    ccall((:VL_HEAP_prefix_down,libvl),Void,(Ptr{Cint},vl_uindex),array,index)
end

function VL_HEAP_prefix_push(array,heapSize)
    ccall((:VL_HEAP_prefix_push,libvl),Void,(Ptr{Cint},Ptr{vl_size}),array,heapSize)
end

function VL_HEAP_prefix_pop(array,heapSize)
    ccall((:VL_HEAP_prefix_pop,libvl),vl_uindex,(Ptr{Cint},Ptr{vl_size}),array,heapSize)
end

function VL_HEAP_prefix_update(array,heapSize::vl_size,index::vl_uindex)
    ccall((:VL_HEAP_prefix_update,libvl),Void,(Ptr{Cint},vl_size,vl_uindex),array,heapSize,index)
end
