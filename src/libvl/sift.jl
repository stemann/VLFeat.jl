# Julia wrapper for header: /home/kevin/src/vlfeat/vl/sift.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_sift_new,
    vl_sift_delete,
    vl_sift_process_first_octave,
    vl_sift_process_next_octave,
    vl_sift_detect,
    vl_sift_calc_keypoint_orientations,
    vl_sift_calc_keypoint_descriptor,
    vl_sift_calc_raw_descriptor,
    vl_sift_keypoint_init,
    vl_sift_get_octave_index,
    vl_sift_get_noctaves,
    vl_sift_get_octave_first,
    vl_sift_get_octave_width,
    vl_sift_get_octave_height,
    vl_sift_get_nlevels,
    vl_sift_get_nkeypoints,
    vl_sift_get_peak_thresh,
    vl_sift_get_edge_thresh,
    vl_sift_get_norm_thresh,
    vl_sift_get_magnif,
    vl_sift_get_window_size,
    vl_sift_get_octave,
    vl_sift_get_keypoints,
    vl_sift_set_peak_thresh,
    vl_sift_set_edge_thresh,
    vl_sift_set_norm_thresh,
    vl_sift_set_magnif,
    vl_sift_set_window_size,
    vl_sift_get_octave_index,
    vl_sift_get_noctaves,
    vl_sift_get_octave_first,
    vl_sift_get_octave_width,
    vl_sift_get_octave_height,
    vl_sift_get_octave,
    vl_sift_get_nlevels,
    vl_sift_get_nkeypoints,
    vl_sift_get_keypoints,
    vl_sift_get_peak_thresh,
    vl_sift_get_edge_thresh,
    vl_sift_get_norm_thresh,
    vl_sift_get_magnif,
    vl_sift_get_window_size,
    vl_sift_set_peak_thresh,
    vl_sift_set_edge_thresh,
    vl_sift_set_norm_thresh,
    vl_sift_set_magnif,
    vl_sift_set_window_size


function vl_sift_new(width::Integer,height::Integer,noctaves::Integer,nlevels::Integer,o_min::Integer)
    ccall((:vl_sift_new,libvl),Ptr{VlSiftFilt},(Cint,Cint,Cint,Cint,Cint),width,height,noctaves,nlevels,o_min)
end

function vl_sift_delete(f)
    ccall((:vl_sift_delete,libvl),Void,(Ptr{VlSiftFilt},),f)
end

function vl_sift_process_first_octave(f,im)
    ccall((:vl_sift_process_first_octave,libvl),Cint,(Ptr{VlSiftFilt},Ptr{vl_sift_pix}),f,im)
end

function vl_sift_process_next_octave(f)
    ccall((:vl_sift_process_next_octave,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_detect(f)
    ccall((:vl_sift_detect,libvl),Void,(Ptr{VlSiftFilt},),f)
end

function vl_sift_calc_keypoint_orientations(f,angles,k)
    ccall((:vl_sift_calc_keypoint_orientations,libvl),Cint,(Ptr{VlSiftFilt},Ptr{Cdouble},Ptr{VlSiftKeypoint}),f,angles,k)
end

function vl_sift_calc_keypoint_descriptor(f,descr,k,angle::Cdouble)
    ccall((:vl_sift_calc_keypoint_descriptor,libvl),Void,(Ptr{VlSiftFilt},Ptr{vl_sift_pix},Ptr{VlSiftKeypoint},Cdouble),f,descr,k,angle)
end

function vl_sift_calc_raw_descriptor(f,image,descr,widht::Integer,height::Integer,x::Cdouble,y::Cdouble,s::Cdouble,angle0::Cdouble)
    ccall((:vl_sift_calc_raw_descriptor,libvl),Void,(Ptr{VlSiftFilt},Ptr{vl_sift_pix},Ptr{vl_sift_pix},Cint,Cint,Cdouble,Cdouble,Cdouble,Cdouble),f,image,descr,widht,height,x,y,s,angle0)
end

function vl_sift_keypoint_init(f,k,x::Cdouble,y::Cdouble,sigma::Cdouble)
    ccall((:vl_sift_keypoint_init,libvl),Void,(Ptr{VlSiftFilt},Ptr{VlSiftKeypoint},Cdouble,Cdouble,Cdouble),f,k,x,y,sigma)
end

function vl_sift_get_octave_index(f)
    ccall((:vl_sift_get_octave_index,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_noctaves(f)
    ccall((:vl_sift_get_noctaves,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave_first(f)
    ccall((:vl_sift_get_octave_first,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave_width(f)
    ccall((:vl_sift_get_octave_width,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave_height(f)
    ccall((:vl_sift_get_octave_height,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_nlevels(f)
    ccall((:vl_sift_get_nlevels,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_nkeypoints(f)
    ccall((:vl_sift_get_nkeypoints,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_peak_thresh(f)
    ccall((:vl_sift_get_peak_thresh,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_edge_thresh(f)
    ccall((:vl_sift_get_edge_thresh,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_norm_thresh(f)
    ccall((:vl_sift_get_norm_thresh,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_magnif(f)
    ccall((:vl_sift_get_magnif,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_window_size(f)
    ccall((:vl_sift_get_window_size,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave(f,s::Integer)
    ccall((:vl_sift_get_octave,libvl),Ptr{vl_sift_pix},(Ptr{VlSiftFilt},Cint),f,s)
end

function vl_sift_get_keypoints(f)
    ccall((:vl_sift_get_keypoints,libvl),Ptr{VlSiftKeypoint},(Ptr{VlSiftFilt},),f)
end

function vl_sift_set_peak_thresh(f,t::Cdouble)
    ccall((:vl_sift_set_peak_thresh,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,t)
end

function vl_sift_set_edge_thresh(f,t::Cdouble)
    ccall((:vl_sift_set_edge_thresh,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,t)
end

function vl_sift_set_norm_thresh(f,t::Cdouble)
    ccall((:vl_sift_set_norm_thresh,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,t)
end

function vl_sift_set_magnif(f,m::Cdouble)
    ccall((:vl_sift_set_magnif,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,m)
end

function vl_sift_set_window_size(f,m::Cdouble)
    ccall((:vl_sift_set_window_size,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,m)
end

function vl_sift_get_octave_index(f)
    ccall((:vl_sift_get_octave_index,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_noctaves(f)
    ccall((:vl_sift_get_noctaves,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave_first(f)
    ccall((:vl_sift_get_octave_first,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave_width(f)
    ccall((:vl_sift_get_octave_width,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave_height(f)
    ccall((:vl_sift_get_octave_height,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_octave(f,s::Integer)
    ccall((:vl_sift_get_octave,libvl),Ptr{vl_sift_pix},(Ptr{VlSiftFilt},Cint),f,s)
end

function vl_sift_get_nlevels(f)
    ccall((:vl_sift_get_nlevels,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_nkeypoints(f)
    ccall((:vl_sift_get_nkeypoints,libvl),Cint,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_keypoints(f)
    ccall((:vl_sift_get_keypoints,libvl),Ptr{VlSiftKeypoint},(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_peak_thresh(f)
    ccall((:vl_sift_get_peak_thresh,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_edge_thresh(f)
    ccall((:vl_sift_get_edge_thresh,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_norm_thresh(f)
    ccall((:vl_sift_get_norm_thresh,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_magnif(f)
    ccall((:vl_sift_get_magnif,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_get_window_size(f)
    ccall((:vl_sift_get_window_size,libvl),Cdouble,(Ptr{VlSiftFilt},),f)
end

function vl_sift_set_peak_thresh(f,t::Cdouble)
    ccall((:vl_sift_set_peak_thresh,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,t)
end

function vl_sift_set_edge_thresh(f,t::Cdouble)
    ccall((:vl_sift_set_edge_thresh,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,t)
end

function vl_sift_set_norm_thresh(f,t::Cdouble)
    ccall((:vl_sift_set_norm_thresh,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,t)
end

function vl_sift_set_magnif(f,m::Cdouble)
    ccall((:vl_sift_set_magnif,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,m)
end

function vl_sift_set_window_size(f,x::Cdouble)
    ccall((:vl_sift_set_window_size,libvl),Void,(Ptr{VlSiftFilt},Cdouble),f,x)
end
