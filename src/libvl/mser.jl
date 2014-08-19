# Julia wrapper for header: /home/kevin/src/vlfeat/vl/mser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_mser_get_regions,
    vl_mser_get_stats


function vl_mser_get_regions(f)
    ccall((:vl_mser_get_regions,libvl),Ptr{Cint},(Ptr{VlMserFilt},),f)
end

function vl_mser_get_stats(f)
    ccall((:vl_mser_get_stats,libvl),Ptr{Cint},(Ptr{VlMserFilt},),f)
end
