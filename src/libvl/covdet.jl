# Julia wrapper for header: /home/kevin/src/vlfeat/vl/covdet.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_get_frame_size,
    vl_get_frame_type,
    vl_covdet_new,
    vl_covdet_delete,
    vl_covdet_reset,
    vl_covdet_put_image,
    vl_covdet_detect,
    vl_covdet_append_feature,
    vl_covdet_extract_orientations,
    vl_covdet_extract_laplacian_scales,
    vl_covdet_extract_affine_shape,
    vl_covdet_extract_orientations_for_frame,
    vl_covdet_extract_laplacian_scales_for_frame,
    vl_covdet_extract_affine_shape_for_frame,
    vl_covdet_extract_patch_for_frame,
    vl_covdet_drop_features_outside,
    vl_covdet_get_num_features,
    vl_covdet_get_features,
    vl_covdet_get_first_octave,
    vl_covdet_get_octave_resolution,
    vl_covdet_get_peak_threshold,
    vl_covdet_get_edge_threshold,
    vl_covdeg_get_laplacian_peak_threshold,
    vl_covdet_get_transposed,
    vl_covdet_get_gss,
    vl_covdet_get_css,
    vl_covdet_get_aa_accurate_smoothing,
    vl_covdet_get_laplacian_scales_statistics,
    vl_covdet_get_non_extrema_suppression_threshold,
    vl_covdet_get_num_non_extrema_suppressed,
    vl_covdet_set_first_octave,
    vl_covdet_set_octave_resolution,
    vl_covdet_set_peak_threshold,
    vl_covdet_set_edge_threshold,
    vl_covdet_set_laplacian_peak_threshold,
    vl_covdet_set_transposed,
    vl_covdet_set_aa_accurate_smoothing,
    vl_covdet_set_non_extrema_suppression_threshold


function vl_get_frame_size(frameType::VlFrameType)
    ccall((:vl_get_frame_size,libvl),vl_size,(VlFrameType,),frameType)
end

function vl_get_frame_type(affineAdaptation::vl_bool,orientation::vl_bool)
    ccall((:vl_get_frame_type,libvl),VlFrameType,(vl_bool,vl_bool),affineAdaptation,orientation)
end

function vl_covdet_new(method::VlCovDetMethod)
    ccall((:vl_covdet_new,libvl),Ptr{VlCovDet},(VlCovDetMethod,),method)
end

function vl_covdet_delete(self)
    ccall((:vl_covdet_delete,libvl),Void,(Ptr{VlCovDet},),self)
end

function vl_covdet_reset(self)
    ccall((:vl_covdet_reset,libvl),Void,(Ptr{VlCovDet},),self)
end

function vl_covdet_put_image(self,image,width::vl_size,height::vl_size)
    ccall((:vl_covdet_put_image,libvl),Cint,(Ptr{VlCovDet},Ptr{Cfloat},vl_size,vl_size),self,image,width,height)
end

function vl_covdet_detect(self)
    ccall((:vl_covdet_detect,libvl),Void,(Ptr{VlCovDet},),self)
end

function vl_covdet_append_feature(self,feature)
    ccall((:vl_covdet_append_feature,libvl),Cint,(Ptr{VlCovDet},Ptr{VlCovDetFeature}),self,feature)
end

function vl_covdet_extract_orientations(self)
    ccall((:vl_covdet_extract_orientations,libvl),Void,(Ptr{VlCovDet},),self)
end

function vl_covdet_extract_laplacian_scales(self)
    ccall((:vl_covdet_extract_laplacian_scales,libvl),Void,(Ptr{VlCovDet},),self)
end

function vl_covdet_extract_affine_shape(self)
    ccall((:vl_covdet_extract_affine_shape,libvl),Void,(Ptr{VlCovDet},),self)
end

function vl_covdet_extract_orientations_for_frame(self,numOrientations,frame::VlFrameOrientedEllipse)
    ccall((:vl_covdet_extract_orientations_for_frame,libvl),Ptr{VlCovDetFeatureOrientation},(Ptr{VlCovDet},Ptr{vl_size},VlFrameOrientedEllipse),self,numOrientations,frame)
end

function vl_covdet_extract_laplacian_scales_for_frame(self,numScales,frame::VlFrameOrientedEllipse)
    ccall((:vl_covdet_extract_laplacian_scales_for_frame,libvl),Ptr{VlCovDetFeatureLaplacianScale},(Ptr{VlCovDet},Ptr{vl_size},VlFrameOrientedEllipse),self,numScales,frame)
end

function vl_covdet_extract_affine_shape_for_frame(self,adapted,frame::VlFrameOrientedEllipse)
    ccall((:vl_covdet_extract_affine_shape_for_frame,libvl),Cint,(Ptr{VlCovDet},Ptr{VlFrameOrientedEllipse},VlFrameOrientedEllipse),self,adapted,frame)
end

function vl_covdet_extract_patch_for_frame(self,patch,resolution::vl_size,extent::Cdouble,sigma::Cdouble,frame::VlFrameOrientedEllipse)
    ccall((:vl_covdet_extract_patch_for_frame,libvl),vl_bool,(Ptr{VlCovDet},Ptr{Cfloat},vl_size,Cdouble,Cdouble,VlFrameOrientedEllipse),self,patch,resolution,extent,sigma,frame)
end

function vl_covdet_drop_features_outside(self,margin::Cdouble)
    ccall((:vl_covdet_drop_features_outside,libvl),Void,(Ptr{VlCovDet},Cdouble),self,margin)
end

function vl_covdet_get_num_features(self)
    ccall((:vl_covdet_get_num_features,libvl),vl_size,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_features(self)
    ccall((:vl_covdet_get_features,libvl),Ptr{Void},(Ptr{VlCovDet},),self)
end

function vl_covdet_get_first_octave(self)
    ccall((:vl_covdet_get_first_octave,libvl),vl_index,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_octave_resolution(self)
    ccall((:vl_covdet_get_octave_resolution,libvl),vl_size,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_peak_threshold(self)
    ccall((:vl_covdet_get_peak_threshold,libvl),Cdouble,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_edge_threshold(self)
    ccall((:vl_covdet_get_edge_threshold,libvl),Cdouble,(Ptr{VlCovDet},),self)
end

function vl_covdeg_get_laplacian_peak_threshold(self)
    ccall((:vl_covdeg_get_laplacian_peak_threshold,libvl),Cdouble,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_transposed(self)
    ccall((:vl_covdet_get_transposed,libvl),vl_bool,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_gss(self)
    ccall((:vl_covdet_get_gss,libvl),Ptr{VlScaleSpace},(Ptr{VlCovDet},),self)
end

function vl_covdet_get_css(self)
    ccall((:vl_covdet_get_css,libvl),Ptr{VlScaleSpace},(Ptr{VlCovDet},),self)
end

function vl_covdet_get_aa_accurate_smoothing(self)
    ccall((:vl_covdet_get_aa_accurate_smoothing,libvl),vl_bool,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_laplacian_scales_statistics(self,numScales)
    ccall((:vl_covdet_get_laplacian_scales_statistics,libvl),Ptr{vl_size},(Ptr{VlCovDet},Ptr{vl_size}),self,numScales)
end

function vl_covdet_get_non_extrema_suppression_threshold(self)
    ccall((:vl_covdet_get_non_extrema_suppression_threshold,libvl),Cdouble,(Ptr{VlCovDet},),self)
end

function vl_covdet_get_num_non_extrema_suppressed(self)
    ccall((:vl_covdet_get_num_non_extrema_suppressed,libvl),vl_size,(Ptr{VlCovDet},),self)
end

function vl_covdet_set_first_octave(self,o::vl_index)
    ccall((:vl_covdet_set_first_octave,libvl),Void,(Ptr{VlCovDet},vl_index),self,o)
end

function vl_covdet_set_octave_resolution(self,r::vl_size)
    ccall((:vl_covdet_set_octave_resolution,libvl),Void,(Ptr{VlCovDet},vl_size),self,r)
end

function vl_covdet_set_peak_threshold(self,peakThreshold::Cdouble)
    ccall((:vl_covdet_set_peak_threshold,libvl),Void,(Ptr{VlCovDet},Cdouble),self,peakThreshold)
end

function vl_covdet_set_edge_threshold(self,edgeThreshold::Cdouble)
    ccall((:vl_covdet_set_edge_threshold,libvl),Void,(Ptr{VlCovDet},Cdouble),self,edgeThreshold)
end

function vl_covdet_set_laplacian_peak_threshold(self,peakThreshold::Cdouble)
    ccall((:vl_covdet_set_laplacian_peak_threshold,libvl),Void,(Ptr{VlCovDet},Cdouble),self,peakThreshold)
end

function vl_covdet_set_transposed(self,t::vl_bool)
    ccall((:vl_covdet_set_transposed,libvl),Void,(Ptr{VlCovDet},vl_bool),self,t)
end

function vl_covdet_set_aa_accurate_smoothing(self,x::vl_bool)
    ccall((:vl_covdet_set_aa_accurate_smoothing,libvl),Void,(Ptr{VlCovDet},vl_bool),self,x)
end

function vl_covdet_set_non_extrema_suppression_threshold(self,x::Cdouble)
    ccall((:vl_covdet_set_non_extrema_suppression_threshold,libvl),Void,(Ptr{VlCovDet},Cdouble),self,x)
end
