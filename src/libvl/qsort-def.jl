# Julia wrapper for header: /home/kevin/src/vlfeat/vl/qsort-def.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    VL_QSORT_prefix_cmp,
    VL_QSORT_prefix_swap,
    VL_QSORT_prefix_sort_recursive,
    VL_QSORT_prefix_sort


function VL_QSORT_prefix_cmp()
    ccall((:VL_QSORT_prefix_cmp,libvl),Cint,())
end

function VL_QSORT_prefix_swap(array,indexA::vl_uindex,indexB::vl_uindex)
    ccall((:VL_QSORT_prefix_swap,libvl),Void,(Ptr{Cint},vl_uindex,vl_uindex),array,indexA,indexB)
end

function VL_QSORT_prefix_sort_recursive(array,_begin::vl_uindex,_end::vl_uindex)
    ccall((:VL_QSORT_prefix_sort_recursive,libvl),Void,(Ptr{Cint},vl_uindex,vl_uindex),array,_begin,_end)
end

function VL_QSORT_prefix_sort(array,size::Integer)
    ccall((:VL_QSORT_prefix_sort,libvl),Void,(Ptr{Cint},vl_size),array,size)
end
