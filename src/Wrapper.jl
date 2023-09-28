module Wrapper

using VLFeat_jll
export VLFeat_jll

using CEnum

const vl_uint = Cuint

mutable struct _VlAIB
    nodes::Ptr{vl_uint}
    nentries::vl_uint
    beta::Ptr{Cdouble}
    bidx::Ptr{vl_uint}
    which::Ptr{vl_uint}
    nwhich::vl_uint
    Pcx::Ptr{Cdouble}
    Px::Ptr{Cdouble}
    Pc::Ptr{Cdouble}
    nvalues::vl_uint
    nlabels::vl_uint
    parents::Ptr{vl_uint}
    costs::Ptr{Cdouble}
    verbosity::vl_uint
    _VlAIB() = new()
end

const VlAIB = _VlAIB

function vl_aib_new(Pcx, nvalues, nlabels)
    return ccall((:vl_aib_new, libvl), Ptr{VlAIB}, (Ptr{Cdouble}, vl_uint, vl_uint), Pcx, nvalues, nlabels)
end

function vl_aib_delete(aib)
    return ccall((:vl_aib_delete, libvl), Cvoid, (Ptr{VlAIB},), aib)
end

function vl_aib_process(aib)
    return ccall((:vl_aib_process, libvl), Cvoid, (Ptr{VlAIB},), aib)
end

function vl_aib_get_parents(aib)
    return ccall((:vl_aib_get_parents, libvl), Ptr{vl_uint}, (Ptr{VlAIB},), aib)
end

function vl_aib_get_costs(aib)
    return ccall((:vl_aib_get_costs, libvl), Ptr{Cdouble}, (Ptr{VlAIB},), aib)
end

function vl_aib_set_verbosity(self, verbosity)
    return ccall((:vl_aib_set_verbosity, libvl), Cvoid, (Ptr{VlAIB}, Cint), self, verbosity)
end

function vl_aib_get_verbosity(self)
    return ccall((:vl_aib_get_verbosity, libvl), Cint, (Ptr{VlAIB},), self)
end

const vl_uint32 = Cuint

const vl_type = vl_uint32

const vl_bool = Cint

const vl_uint64 = Culonglong

const vl_size = vl_uint64

mutable struct _VlArray
    type::vl_type
    isEnvelope::vl_bool
    isSparse::vl_bool
    numDimensions::vl_size
    dimensions::NTuple{16, vl_size}
    data::Ptr{Cvoid}
    rowPointers::Ptr{Cvoid}
    columnPointers::Ptr{Cvoid}
    _VlArray() = new()
end

const VlArray = _VlArray

function vl_array_get_num_dimensions(self)
    return ccall((:vl_array_get_num_dimensions, libvl), vl_size, (Ptr{VlArray},), self)
end

function vl_array_get_dimensions(self)
    return ccall((:vl_array_get_dimensions, libvl), Ptr{vl_size}, (Ptr{VlArray},), self)
end

function vl_array_get_data(self)
    return ccall((:vl_array_get_data, libvl), Ptr{Cvoid}, (Ptr{VlArray},), self)
end

function vl_array_get_data_type(self)
    return ccall((:vl_array_get_data_type, libvl), vl_type, (Ptr{VlArray},), self)
end

function vl_array_get_num_elements(self)
    return ccall((:vl_array_get_num_elements, libvl), vl_size, (Ptr{VlArray},), self)
end

function vl_array_init(self, type, numDimension, dimensions)
    return ccall(
        (:vl_array_init, libvl), Ptr{VlArray}, (Ptr{VlArray}, vl_type, vl_size, Ptr{vl_size}), self, type, numDimension, dimensions
    )
end

function vl_array_init_envelope(self, data, type, numDimension, dimensions)
    return ccall(
        (:vl_array_init_envelope, libvl),
        Ptr{VlArray},
        (Ptr{VlArray}, Ptr{Cvoid}, vl_type, vl_size, Ptr{vl_size}),
        self,
        data,
        type,
        numDimension,
        dimensions,
    )
end

function vl_array_init_matrix(self, type, numRows, numColumns)
    return ccall((:vl_array_init_matrix, libvl), Ptr{VlArray}, (Ptr{VlArray}, vl_type, vl_size, vl_size), self, type, numRows, numColumns)
end

function vl_array_init_matrix_envelope(self, data, type, numRows, numColumns)
    return ccall(
        (:vl_array_init_matrix_envelope, libvl),
        Ptr{VlArray},
        (Ptr{VlArray}, Ptr{Cvoid}, vl_type, vl_size, vl_size),
        self,
        data,
        type,
        numRows,
        numColumns,
    )
end

function vl_array_new(type, numDimension, dimensions)
    return ccall((:vl_array_new, libvl), Ptr{VlArray}, (vl_type, vl_size, Ptr{vl_size}), type, numDimension, dimensions)
end

function vl_array_new_envelope(data, type, numDimension, dimensions)
    return ccall(
        (:vl_array_new_envelope, libvl), Ptr{VlArray}, (Ptr{Cvoid}, vl_type, vl_size, Ptr{vl_size}), data, type, numDimension, dimensions
    )
end

function vl_array_new_matrix(type, numRows, numColumns)
    return ccall((:vl_array_new_matrix, libvl), Ptr{VlArray}, (vl_type, vl_size, vl_size), type, numRows, numColumns)
end

function vl_array_new_matrix_envelope(data, type, numRows, numColumns)
    return ccall(
        (:vl_array_new_matrix_envelope, libvl), Ptr{VlArray}, (Ptr{Cvoid}, vl_type, vl_size, vl_size), data, type, numRows, numColumns
    )
end

function vl_array_dealloc(self)
    return ccall((:vl_array_dealloc, libvl), Cvoid, (Ptr{VlArray},), self)
end

function vl_array_delete(self)
    return ccall((:vl_array_delete, libvl), Cvoid, (Ptr{VlArray},), self)
end

@cenum _VlFrameType::UInt32 begin
    VL_FRAMETYPE_DISC = 1
    VL_FRAMETYPE_ORIENTED_DISC = 2
    VL_FRAMETYPE_ELLIPSE = 3
    VL_FRAMETYPE_ORIENTED_ELLIPSE = 4
    VL_FRAMETYPE_NUM = 5
end

const VlFrameType = _VlFrameType

mutable struct _VlFrameDisc
    x::Cfloat
    y::Cfloat
    sigma::Cfloat
    _VlFrameDisc() = new()
end

const VlFrameDisc = _VlFrameDisc

mutable struct _VlFrameOrientedDisc
    x::Cfloat
    y::Cfloat
    sigma::Cfloat
    angle::Cfloat
    _VlFrameOrientedDisc() = new()
end

const VlFrameOrientedDisc = _VlFrameOrientedDisc

mutable struct _VlFrameEllipse
    x::Cfloat
    y::Cfloat
    e11::Cfloat
    e12::Cfloat
    e22::Cfloat
    _VlFrameEllipse() = new()
end

const VlFrameEllipse = _VlFrameEllipse

struct _VlFrameOrientedEllipse
    x::Cfloat
    y::Cfloat
    a11::Cfloat
    a12::Cfloat
    a21::Cfloat
    a22::Cfloat
end

const VlFrameOrientedEllipse = _VlFrameOrientedEllipse

function vl_get_frame_size(frameType)
    return ccall((:vl_get_frame_size, libvl), vl_size, (VlFrameType,), frameType)
end

function vl_get_frame_type(affineAdaptation, orientation)
    return ccall((:vl_get_frame_type, libvl), VlFrameType, (vl_bool, vl_bool), affineAdaptation, orientation)
end

mutable struct _VlCovDetFeature
    frame::VlFrameOrientedEllipse
    peakScore::Cfloat
    edgeScore::Cfloat
    orientationScore::Cfloat
    laplacianScaleScore::Cfloat
    _VlCovDetFeature() = new()
end

const VlCovDetFeature = _VlCovDetFeature

mutable struct _VlCovDetFeatureOrientation
    angle::Cdouble
    score::Cdouble
    _VlCovDetFeatureOrientation() = new()
end

const VlCovDetFeatureOrientation = _VlCovDetFeatureOrientation

mutable struct _VlCovDetFeatureLaplacianScale
    scale::Cdouble
    score::Cdouble
    _VlCovDetFeatureLaplacianScale() = new()
end

const VlCovDetFeatureLaplacianScale = _VlCovDetFeatureLaplacianScale

@cenum _VlCovDetMethod::UInt32 begin
    VL_COVDET_METHOD_DOG = 1
    VL_COVDET_METHOD_HESSIAN = 2
    VL_COVDET_METHOD_HESSIAN_LAPLACE = 3
    VL_COVDET_METHOD_HARRIS_LAPLACE = 4
    VL_COVDET_METHOD_MULTISCALE_HESSIAN = 5
    VL_COVDET_METHOD_MULTISCALE_HARRIS = 6
    VL_COVDET_METHOD_NUM = 7
end

const VlCovDetMethod = _VlCovDetMethod

mutable struct _VlCovDet end

const VlCovDet = _VlCovDet

function vl_covdet_new(method)
    return ccall((:vl_covdet_new, libvl), Ptr{VlCovDet}, (VlCovDetMethod,), method)
end

function vl_covdet_delete(self)
    return ccall((:vl_covdet_delete, libvl), Cvoid, (Ptr{VlCovDet},), self)
end

function vl_covdet_reset(self)
    return ccall((:vl_covdet_reset, libvl), Cvoid, (Ptr{VlCovDet},), self)
end

function vl_covdet_put_image(self, image, width, height)
    return ccall((:vl_covdet_put_image, libvl), Cint, (Ptr{VlCovDet}, Ptr{Cfloat}, vl_size, vl_size), self, image, width, height)
end

function vl_covdet_detect(self)
    return ccall((:vl_covdet_detect, libvl), Cvoid, (Ptr{VlCovDet},), self)
end

function vl_covdet_append_feature(self, feature)
    return ccall((:vl_covdet_append_feature, libvl), Cint, (Ptr{VlCovDet}, Ptr{VlCovDetFeature}), self, feature)
end

function vl_covdet_extract_orientations(self)
    return ccall((:vl_covdet_extract_orientations, libvl), Cvoid, (Ptr{VlCovDet},), self)
end

function vl_covdet_extract_laplacian_scales(self)
    return ccall((:vl_covdet_extract_laplacian_scales, libvl), Cvoid, (Ptr{VlCovDet},), self)
end

function vl_covdet_extract_affine_shape(self)
    return ccall((:vl_covdet_extract_affine_shape, libvl), Cvoid, (Ptr{VlCovDet},), self)
end

function vl_covdet_extract_orientations_for_frame(self, numOrientations, frame)
    return ccall(
        (:vl_covdet_extract_orientations_for_frame, libvl),
        Ptr{VlCovDetFeatureOrientation},
        (Ptr{VlCovDet}, Ptr{vl_size}, VlFrameOrientedEllipse),
        self,
        numOrientations,
        frame,
    )
end

function vl_covdet_extract_laplacian_scales_for_frame(self, numScales, frame)
    return ccall(
        (:vl_covdet_extract_laplacian_scales_for_frame, libvl),
        Ptr{VlCovDetFeatureLaplacianScale},
        (Ptr{VlCovDet}, Ptr{vl_size}, VlFrameOrientedEllipse),
        self,
        numScales,
        frame,
    )
end

function vl_covdet_extract_affine_shape_for_frame(self, adapted, frame)
    return ccall(
        (:vl_covdet_extract_affine_shape_for_frame, libvl),
        Cint,
        (Ptr{VlCovDet}, Ptr{VlFrameOrientedEllipse}, VlFrameOrientedEllipse),
        self,
        adapted,
        frame,
    )
end

function vl_covdet_extract_patch_for_frame(self, patch, resolution, extent, sigma, frame)
    return ccall(
        (:vl_covdet_extract_patch_for_frame, libvl),
        vl_bool,
        (Ptr{VlCovDet}, Ptr{Cfloat}, vl_size, Cdouble, Cdouble, VlFrameOrientedEllipse),
        self,
        patch,
        resolution,
        extent,
        sigma,
        frame,
    )
end

function vl_covdet_drop_features_outside(self, margin)
    return ccall((:vl_covdet_drop_features_outside, libvl), Cvoid, (Ptr{VlCovDet}, Cdouble), self, margin)
end

function vl_covdet_get_num_features(self)
    return ccall((:vl_covdet_get_num_features, libvl), vl_size, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_features(self)
    return ccall((:vl_covdet_get_features, libvl), Ptr{Cvoid}, (Ptr{VlCovDet},), self)
end

const vl_int64 = Clonglong

const vl_index = vl_int64

function vl_covdet_get_first_octave(self)
    return ccall((:vl_covdet_get_first_octave, libvl), vl_index, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_num_octaves(self)
    return ccall((:vl_covdet_get_num_octaves, libvl), vl_size, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_base_scale(self)
    return ccall((:vl_covdet_get_base_scale, libvl), Cdouble, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_octave_resolution(self)
    return ccall((:vl_covdet_get_octave_resolution, libvl), vl_size, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_peak_threshold(self)
    return ccall((:vl_covdet_get_peak_threshold, libvl), Cdouble, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_edge_threshold(self)
    return ccall((:vl_covdet_get_edge_threshold, libvl), Cdouble, (Ptr{VlCovDet},), self)
end

function vl_covdeg_get_laplacian_peak_threshold(self)
    return ccall((:vl_covdeg_get_laplacian_peak_threshold, libvl), Cdouble, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_max_num_orientations(self)
    return ccall((:vl_covdet_get_max_num_orientations, libvl), vl_size, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_transposed(self)
    return ccall((:vl_covdet_get_transposed, libvl), vl_bool, (Ptr{VlCovDet},), self)
end

mutable struct _VlScaleSpace end

const VlScaleSpace = _VlScaleSpace

function vl_covdet_get_gss(self)
    return ccall((:vl_covdet_get_gss, libvl), Ptr{VlScaleSpace}, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_css(self)
    return ccall((:vl_covdet_get_css, libvl), Ptr{VlScaleSpace}, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_aa_accurate_smoothing(self)
    return ccall((:vl_covdet_get_aa_accurate_smoothing, libvl), vl_bool, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_laplacian_scales_statistics(self, numScales)
    return ccall((:vl_covdet_get_laplacian_scales_statistics, libvl), Ptr{vl_size}, (Ptr{VlCovDet}, Ptr{vl_size}), self, numScales)
end

function vl_covdet_get_non_extrema_suppression_threshold(self)
    return ccall((:vl_covdet_get_non_extrema_suppression_threshold, libvl), Cdouble, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_num_non_extrema_suppressed(self)
    return ccall((:vl_covdet_get_num_non_extrema_suppressed, libvl), vl_size, (Ptr{VlCovDet},), self)
end

function vl_covdet_get_allow_padded_warping(self)
    return ccall((:vl_covdet_get_allow_padded_warping, libvl), vl_bool, (Ptr{VlCovDet},), self)
end

function vl_covdet_set_first_octave(self, o)
    return ccall((:vl_covdet_set_first_octave, libvl), Cvoid, (Ptr{VlCovDet}, vl_index), self, o)
end

function vl_covdet_set_num_octaves(self, o)
    return ccall((:vl_covdet_set_num_octaves, libvl), Cvoid, (Ptr{VlCovDet}, vl_size), self, o)
end

function vl_covdet_set_base_scale(self, s)
    return ccall((:vl_covdet_set_base_scale, libvl), Cvoid, (Ptr{VlCovDet}, Cdouble), self, s)
end

function vl_covdet_set_octave_resolution(self, r)
    return ccall((:vl_covdet_set_octave_resolution, libvl), Cvoid, (Ptr{VlCovDet}, vl_size), self, r)
end

function vl_covdet_set_peak_threshold(self, peakThreshold)
    return ccall((:vl_covdet_set_peak_threshold, libvl), Cvoid, (Ptr{VlCovDet}, Cdouble), self, peakThreshold)
end

function vl_covdet_set_edge_threshold(self, edgeThreshold)
    return ccall((:vl_covdet_set_edge_threshold, libvl), Cvoid, (Ptr{VlCovDet}, Cdouble), self, edgeThreshold)
end

function vl_covdet_set_laplacian_peak_threshold(self, peakThreshold)
    return ccall((:vl_covdet_set_laplacian_peak_threshold, libvl), Cvoid, (Ptr{VlCovDet}, Cdouble), self, peakThreshold)
end

function vl_covdet_set_max_num_orientations(self, m)
    return ccall((:vl_covdet_set_max_num_orientations, libvl), Cvoid, (Ptr{VlCovDet}, vl_size), self, m)
end

function vl_covdet_set_transposed(self, t)
    return ccall((:vl_covdet_set_transposed, libvl), Cvoid, (Ptr{VlCovDet}, vl_bool), self, t)
end

function vl_covdet_set_aa_accurate_smoothing(self, x)
    return ccall((:vl_covdet_set_aa_accurate_smoothing, libvl), Cvoid, (Ptr{VlCovDet}, vl_bool), self, x)
end

function vl_covdet_set_non_extrema_suppression_threshold(self, x)
    return ccall((:vl_covdet_set_non_extrema_suppression_threshold, libvl), Cvoid, (Ptr{VlCovDet}, Cdouble), self, x)
end

function vl_covdet_set_allow_padded_warping(self, x)
    return ccall((:vl_covdet_set_allow_padded_warping, libvl), Cvoid, (Ptr{VlCovDet}, vl_bool), self, x)
end

struct VlDsiftKeypoint_
    x::Cdouble
    y::Cdouble
    s::Cdouble
    norm::Cdouble
end

const VlDsiftKeypoint = VlDsiftKeypoint_

struct VlDsiftDescriptorGeometry_
    numBinT::Cint
    numBinX::Cint
    numBinY::Cint
    binSizeX::Cint
    binSizeY::Cint
end

const VlDsiftDescriptorGeometry = VlDsiftDescriptorGeometry_

mutable struct VlDsiftFilter_
    imWidth::Cint
    imHeight::Cint
    stepX::Cint
    stepY::Cint
    boundMinX::Cint
    boundMinY::Cint
    boundMaxX::Cint
    boundMaxY::Cint
    geom::VlDsiftDescriptorGeometry
    useFlatWindow::Cint
    windowSize::Cdouble
    numFrames::Cint
    descrSize::Cint
    frames::Ptr{VlDsiftKeypoint}
    descrs::Ptr{Cfloat}
    numBinAlloc::Cint
    numFrameAlloc::Cint
    numGradAlloc::Cint
    grads::Ptr{Ptr{Cfloat}}
    convTmp1::Ptr{Cfloat}
    convTmp2::Ptr{Cfloat}
    VlDsiftFilter_() = new()
end

const VlDsiftFilter = VlDsiftFilter_

function vl_dsift_new(width, height)
    return ccall((:vl_dsift_new, libvl), Ptr{VlDsiftFilter}, (Cint, Cint), width, height)
end

function vl_dsift_new_basic(width, height, step, binSize)
    return ccall((:vl_dsift_new_basic, libvl), Ptr{VlDsiftFilter}, (Cint, Cint, Cint, Cint), width, height, step, binSize)
end

function vl_dsift_delete(self)
    return ccall((:vl_dsift_delete, libvl), Cvoid, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_process(self, im)
    return ccall((:vl_dsift_process, libvl), Cvoid, (Ptr{VlDsiftFilter}, Ptr{Cfloat}), self, im)
end

function vl_dsift_transpose_descriptor(dst, src, numBinT, numBinX, numBinY)
    return ccall(
        (:vl_dsift_transpose_descriptor, libvl), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Cint, Cint, Cint), dst, src, numBinT, numBinX, numBinY
    )
end

function vl_dsift_set_steps(self, stepX, stepY)
    return ccall((:vl_dsift_set_steps, libvl), Cvoid, (Ptr{VlDsiftFilter}, Cint, Cint), self, stepX, stepY)
end

function vl_dsift_set_bounds(self, minX, minY, maxX, maxY)
    return ccall((:vl_dsift_set_bounds, libvl), Cvoid, (Ptr{VlDsiftFilter}, Cint, Cint, Cint, Cint), self, minX, minY, maxX, maxY)
end

function vl_dsift_set_geometry(self, geom)
    return ccall((:vl_dsift_set_geometry, libvl), Cvoid, (Ptr{VlDsiftFilter}, Ptr{VlDsiftDescriptorGeometry}), self, geom)
end

function vl_dsift_set_flat_window(self, useFlatWindow)
    return ccall((:vl_dsift_set_flat_window, libvl), Cvoid, (Ptr{VlDsiftFilter}, vl_bool), self, useFlatWindow)
end

function vl_dsift_set_window_size(self, windowSize)
    return ccall((:vl_dsift_set_window_size, libvl), Cvoid, (Ptr{VlDsiftFilter}, Cdouble), self, windowSize)
end

function vl_dsift_get_descriptors(self)
    return ccall((:vl_dsift_get_descriptors, libvl), Ptr{Cfloat}, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_get_descriptor_size(self)
    return ccall((:vl_dsift_get_descriptor_size, libvl), Cint, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_get_keypoint_num(self)
    return ccall((:vl_dsift_get_keypoint_num, libvl), Cint, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_get_keypoints(self)
    return ccall((:vl_dsift_get_keypoints, libvl), Ptr{VlDsiftKeypoint}, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_get_bounds(self, minX, minY, maxX, maxY)
    return ccall(
        (:vl_dsift_get_bounds, libvl), Cvoid, (Ptr{VlDsiftFilter}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), self, minX, minY, maxX, maxY
    )
end

function vl_dsift_get_steps(self, stepX, stepY)
    return ccall((:vl_dsift_get_steps, libvl), Cvoid, (Ptr{VlDsiftFilter}, Ptr{Cint}, Ptr{Cint}), self, stepX, stepY)
end

function vl_dsift_get_geometry(self)
    return ccall((:vl_dsift_get_geometry, libvl), Ptr{VlDsiftDescriptorGeometry}, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_get_flat_window(self)
    return ccall((:vl_dsift_get_flat_window, libvl), vl_bool, (Ptr{VlDsiftFilter},), self)
end

function vl_dsift_get_window_size(self)
    return ccall((:vl_dsift_get_window_size, libvl), Cdouble, (Ptr{VlDsiftFilter},), self)
end

function _vl_dsift_update_buffers(self)
    return ccall((:_vl_dsift_update_buffers, libvl), Cvoid, (Ptr{VlDsiftFilter},), self)
end

function vl_fisher_encode(enc, dataType, means, dimension, numClusters, covariances, priors, data, numData, flags)
    return ccall(
        (:vl_fisher_encode, libvl),
        vl_size,
        (Ptr{Cvoid}, vl_type, Ptr{Cvoid}, vl_size, vl_size, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, vl_size, Cint),
        enc,
        dataType,
        means,
        dimension,
        numClusters,
        covariances,
        priors,
        data,
        numData,
        flags,
    )
end

# typedef int ( * printf_func_t ) ( char const * format , ... )
const printf_func_t = Ptr{Cvoid}

function vl_get_printf_func()
    return ccall((:vl_get_printf_func, libvl), printf_func_t, ())
end

function vl_get_type_name(type)
    return ccall((:vl_get_type_name, libvl), Ptr{Cchar}, (vl_type,), type)
end

function vl_get_type_size(type)
    return ccall((:vl_get_type_size, libvl), vl_size, (vl_type,), type)
end

function vl_get_version_string()
    return ccall((:vl_get_version_string, libvl), Ptr{Cchar}, ())
end

function vl_configuration_to_string_copy()
    return ccall((:vl_configuration_to_string_copy, libvl), Ptr{Cchar}, ())
end

function vl_set_simd_enabled(x)
    return ccall((:vl_set_simd_enabled, libvl), Cvoid, (vl_bool,), x)
end

function vl_get_simd_enabled()
    return ccall((:vl_get_simd_enabled, libvl), vl_bool, ())
end

function vl_cpu_has_avx()
    return ccall((:vl_cpu_has_avx, libvl), vl_bool, ())
end

function vl_cpu_has_sse3()
    return ccall((:vl_cpu_has_sse3, libvl), vl_bool, ())
end

function vl_cpu_has_sse2()
    return ccall((:vl_cpu_has_sse2, libvl), vl_bool, ())
end

function vl_get_num_cpus()
    return ccall((:vl_get_num_cpus, libvl), vl_size, ())
end

struct _VlRand
    mt::NTuple{624, vl_uint32}
    mti::vl_uint32
end

const VlRand = _VlRand

function vl_get_rand()
    return ccall((:vl_get_rand, libvl), Ptr{VlRand}, ())
end

function vl_get_max_threads()
    return ccall((:vl_get_max_threads, libvl), vl_size, ())
end

function vl_set_num_threads(n)
    return ccall((:vl_set_num_threads, libvl), Cvoid, (vl_size,), n)
end

function vl_get_thread_limit()
    return ccall((:vl_get_thread_limit, libvl), vl_size, ())
end

function vl_get_last_error()
    return ccall((:vl_get_last_error, libvl), Cint, ())
end

function vl_get_last_error_message()
    return ccall((:vl_get_last_error_message, libvl), Ptr{Cchar}, ())
end

function vl_set_alloc_func(malloc_func, realloc_func, calloc_func, free_func)
    return ccall(
        (:vl_set_alloc_func, libvl),
        Cvoid,
        (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
        malloc_func,
        realloc_func,
        calloc_func,
        free_func,
    )
end

function vl_malloc(n)
    return ccall((:vl_malloc, libvl), Ptr{Cvoid}, (Csize_t,), n)
end

function vl_realloc(ptr, n)
    return ccall((:vl_realloc, libvl), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t), ptr, n)
end

function vl_calloc(n, size)
    return ccall((:vl_calloc, libvl), Ptr{Cvoid}, (Csize_t, Csize_t), n, size)
end

function vl_memalign(n, size)
    return ccall((:vl_memalign, libvl), Ptr{Cvoid}, (Csize_t, Csize_t), n, size)
end

function vl_free(ptr)
    return ccall((:vl_free, libvl), Cvoid, (Ptr{Cvoid},), ptr)
end

function vl_set_printf_func(printf_func)
    return ccall((:vl_set_printf_func, libvl), Cvoid, (printf_func_t,), printf_func)
end

function vl_tic()
    return ccall((:vl_tic, libvl), Cvoid, ())
end

function vl_toc()
    return ccall((:vl_toc, libvl), Cdouble, ())
end

function vl_get_cpu_time()
    return ccall((:vl_get_cpu_time, libvl), Cdouble, ())
end

struct option
    name::Ptr{Cchar}
    has_arg::Cint
    flag::Ptr{Cint}
    val::Cint
end

function getopt_long(argc, argv, optstring, longopts, longindex)
    return ccall(
        (:getopt_long, libvl), Cint, (Cint, Ptr{Ptr{Cchar}}, Ptr{Cchar}, Ptr{option}, Ptr{Cint}), argc, argv, optstring, longopts, longindex
    )
end

@cenum _VlGMMInitialization::UInt32 begin
    VlGMMKMeans = 0
    VlGMMRand = 1
    VlGMMCustom = 2
end

const VlGMMInitialization = _VlGMMInitialization

mutable struct _VlGMM end

const VlGMM = _VlGMM

function vl_gmm_new(dataType, dimension, numComponents)
    return ccall((:vl_gmm_new, libvl), Ptr{VlGMM}, (vl_type, vl_size, vl_size), dataType, dimension, numComponents)
end

function vl_gmm_new_copy(gmm)
    return ccall((:vl_gmm_new_copy, libvl), Ptr{VlGMM}, (Ptr{VlGMM},), gmm)
end

function vl_gmm_delete(self)
    return ccall((:vl_gmm_delete, libvl), Cvoid, (Ptr{VlGMM},), self)
end

function vl_gmm_reset(self)
    return ccall((:vl_gmm_reset, libvl), Cvoid, (Ptr{VlGMM},), self)
end

function vl_gmm_cluster(self, data, numData)
    return ccall((:vl_gmm_cluster, libvl), Cdouble, (Ptr{VlGMM}, Ptr{Cvoid}, vl_size), self, data, numData)
end

function vl_gmm_init_with_rand_data(self, data, numData)
    return ccall((:vl_gmm_init_with_rand_data, libvl), Cvoid, (Ptr{VlGMM}, Ptr{Cvoid}, vl_size), self, data, numData)
end

@cenum _VlKMeansInitialization::UInt32 begin
    VlKMeansRandomSelection = 0
    VlKMeansPlusPlus = 1
end

const VlKMeansInitialization = _VlKMeansInitialization

@cenum _VlKMeansAlgorithm::UInt32 begin
    VlKMeansLloyd = 0
    VlKMeansElkan = 1
    VlKMeansANN = 2
end

const VlKMeansAlgorithm = _VlKMeansAlgorithm

@cenum _VlVectorComparisonType::UInt32 begin
    VlDistanceL1 = 0
    VlDistanceL2 = 1
    VlDistanceChi2 = 2
    VlDistanceHellinger = 3
    VlDistanceJS = 4
    VlDistanceMahalanobis = 5
    VlKernelL1 = 6
    VlKernelL2 = 7
    VlKernelChi2 = 8
    VlKernelHellinger = 9
    VlKernelJS = 10
end

const VlVectorComparisonType = _VlVectorComparisonType

# typedef float ( * VlFloatVectorComparisonFunction ) ( vl_size dimension , float const * X , float const * Y )
const VlFloatVectorComparisonFunction = Ptr{Cvoid}

# typedef double ( * VlDoubleVectorComparisonFunction ) ( vl_size dimension , double const * X , double const * Y )
const VlDoubleVectorComparisonFunction = Ptr{Cvoid}

mutable struct _VlKMeans
    dataType::vl_type
    dimension::vl_size
    numCenters::vl_size
    numTrees::vl_size
    maxNumComparisons::vl_size
    initialization::VlKMeansInitialization
    algorithm::VlKMeansAlgorithm
    distance::VlVectorComparisonType
    maxNumIterations::vl_size
    minEnergyVariation::Cdouble
    numRepetitions::vl_size
    verbosity::Cint
    centers::Ptr{Cvoid}
    centerDistances::Ptr{Cvoid}
    energy::Cdouble
    floatVectorComparisonFn::VlFloatVectorComparisonFunction
    doubleVectorComparisonFn::VlDoubleVectorComparisonFunction
    _VlKMeans() = new()
end

const VlKMeans = _VlKMeans

function vl_gmm_init_with_kmeans(self, data, numData, kmeansInit)
    return ccall(
        (:vl_gmm_init_with_kmeans, libvl), Cvoid, (Ptr{VlGMM}, Ptr{Cvoid}, vl_size, Ptr{VlKMeans}), self, data, numData, kmeansInit
    )
end

function vl_gmm_em(self, data, numData)
    return ccall((:vl_gmm_em, libvl), Cdouble, (Ptr{VlGMM}, Ptr{Cvoid}, vl_size), self, data, numData)
end

function vl_gmm_set_means(self, means)
    return ccall((:vl_gmm_set_means, libvl), Cvoid, (Ptr{VlGMM}, Ptr{Cvoid}), self, means)
end

function vl_gmm_set_covariances(self, covariances)
    return ccall((:vl_gmm_set_covariances, libvl), Cvoid, (Ptr{VlGMM}, Ptr{Cvoid}), self, covariances)
end

function vl_gmm_set_priors(self, priors)
    return ccall((:vl_gmm_set_priors, libvl), Cvoid, (Ptr{VlGMM}, Ptr{Cvoid}), self, priors)
end

function vl_get_gmm_data_posteriors_f(posteriors, numClusters, numData, priors, means, dimension, covariances, data)
    return ccall(
        (:vl_get_gmm_data_posteriors_f, libvl),
        Cdouble,
        (Ptr{Cfloat}, vl_size, vl_size, Ptr{Cfloat}, Ptr{Cfloat}, vl_size, Ptr{Cfloat}, Ptr{Cfloat}),
        posteriors,
        numClusters,
        numData,
        priors,
        means,
        dimension,
        covariances,
        data,
    )
end

function vl_get_gmm_data_posteriors_d(posteriors, numClusters, numData, priors, means, dimension, covariances, data)
    return ccall(
        (:vl_get_gmm_data_posteriors_d, libvl),
        Cdouble,
        (Ptr{Cdouble}, vl_size, vl_size, Ptr{Cdouble}, Ptr{Cdouble}, vl_size, Ptr{Cdouble}, Ptr{Cdouble}),
        posteriors,
        numClusters,
        numData,
        priors,
        means,
        dimension,
        covariances,
        data,
    )
end

function vl_gmm_set_num_repetitions(self, numRepetitions)
    return ccall((:vl_gmm_set_num_repetitions, libvl), Cvoid, (Ptr{VlGMM}, vl_size), self, numRepetitions)
end

function vl_gmm_set_max_num_iterations(self, maxNumIterations)
    return ccall((:vl_gmm_set_max_num_iterations, libvl), Cvoid, (Ptr{VlGMM}, vl_size), self, maxNumIterations)
end

function vl_gmm_set_verbosity(self, verbosity)
    return ccall((:vl_gmm_set_verbosity, libvl), Cvoid, (Ptr{VlGMM}, Cint), self, verbosity)
end

function vl_gmm_set_initialization(self, init)
    return ccall((:vl_gmm_set_initialization, libvl), Cvoid, (Ptr{VlGMM}, VlGMMInitialization), self, init)
end

function vl_gmm_set_kmeans_init_object(self, kmeans)
    return ccall((:vl_gmm_set_kmeans_init_object, libvl), Cvoid, (Ptr{VlGMM}, Ptr{VlKMeans}), self, kmeans)
end

function vl_gmm_set_covariance_lower_bounds(self, bounds)
    return ccall((:vl_gmm_set_covariance_lower_bounds, libvl), Cvoid, (Ptr{VlGMM}, Ptr{Cdouble}), self, bounds)
end

function vl_gmm_set_covariance_lower_bound(self, bound)
    return ccall((:vl_gmm_set_covariance_lower_bound, libvl), Cvoid, (Ptr{VlGMM}, Cdouble), self, bound)
end

function vl_gmm_get_means(self)
    return ccall((:vl_gmm_get_means, libvl), Ptr{Cvoid}, (Ptr{VlGMM},), self)
end

function vl_gmm_get_covariances(self)
    return ccall((:vl_gmm_get_covariances, libvl), Ptr{Cvoid}, (Ptr{VlGMM},), self)
end

function vl_gmm_get_priors(self)
    return ccall((:vl_gmm_get_priors, libvl), Ptr{Cvoid}, (Ptr{VlGMM},), self)
end

function vl_gmm_get_posteriors(self)
    return ccall((:vl_gmm_get_posteriors, libvl), Ptr{Cvoid}, (Ptr{VlGMM},), self)
end

function vl_gmm_get_data_type(self)
    return ccall((:vl_gmm_get_data_type, libvl), vl_type, (Ptr{VlGMM},), self)
end

function vl_gmm_get_dimension(self)
    return ccall((:vl_gmm_get_dimension, libvl), vl_size, (Ptr{VlGMM},), self)
end

function vl_gmm_get_num_repetitions(self)
    return ccall((:vl_gmm_get_num_repetitions, libvl), vl_size, (Ptr{VlGMM},), self)
end

function vl_gmm_get_num_data(self)
    return ccall((:vl_gmm_get_num_data, libvl), vl_size, (Ptr{VlGMM},), self)
end

function vl_gmm_get_num_clusters(self)
    return ccall((:vl_gmm_get_num_clusters, libvl), vl_size, (Ptr{VlGMM},), self)
end

function vl_gmm_get_loglikelihood(self)
    return ccall((:vl_gmm_get_loglikelihood, libvl), Cdouble, (Ptr{VlGMM},), self)
end

function vl_gmm_get_verbosity(self)
    return ccall((:vl_gmm_get_verbosity, libvl), Cint, (Ptr{VlGMM},), self)
end

function vl_gmm_get_max_num_iterations(self)
    return ccall((:vl_gmm_get_max_num_iterations, libvl), vl_size, (Ptr{VlGMM},), self)
end

function vl_gmm_get_initialization(self)
    return ccall((:vl_gmm_get_initialization, libvl), VlGMMInitialization, (Ptr{VlGMM},), self)
end

function vl_gmm_get_kmeans_init_object(self)
    return ccall((:vl_gmm_get_kmeans_init_object, libvl), Ptr{VlKMeans}, (Ptr{VlGMM},), self)
end

function vl_gmm_get_covariance_lower_bounds(self)
    return ccall((:vl_gmm_get_covariance_lower_bounds, libvl), Ptr{Cdouble}, (Ptr{VlGMM},), self)
end

const vl_uindex = vl_uint64

function vl_heap_parent(index)
    return ccall((:vl_heap_parent, libvl), vl_uindex, (vl_uindex,), index)
end

function vl_heap_left_child(index)
    return ccall((:vl_heap_left_child, libvl), vl_uindex, (vl_uindex,), index)
end

function vl_heap_right_child(index)
    return ccall((:vl_heap_right_child, libvl), vl_uindex, (vl_uindex,), index)
end

function VL_HEAP_prefix_cmp(array, indexA, indexB)
    return ccall((:VL_HEAP_prefix_cmp, libvl), Cint, (Ptr{Cint}, vl_uindex, vl_uindex), array, indexA, indexB)
end

function VL_HEAP_prefix_swap(array, indexA, indexB)
    return ccall((:VL_HEAP_prefix_swap, libvl), Cvoid, (Ptr{Cint}, vl_uindex, vl_uindex), array, indexA, indexB)
end

function VL_HEAP_prefix_up(array, heapSize, index)
    return ccall((:VL_HEAP_prefix_up, libvl), Cvoid, (Ptr{Cint}, vl_size, vl_uindex), array, heapSize, index)
end

function VL_HEAP_prefix_down(array, index)
    return ccall((:VL_HEAP_prefix_down, libvl), Cvoid, (Ptr{Cint}, vl_uindex), array, index)
end

function VL_HEAP_prefix_push(array, heapSize)
    return ccall((:VL_HEAP_prefix_push, libvl), Cvoid, (Ptr{Cint}, Ptr{vl_size}), array, heapSize)
end

function VL_HEAP_prefix_pop(array, heapSize)
    return ccall((:VL_HEAP_prefix_pop, libvl), vl_uindex, (Ptr{Cint}, Ptr{vl_size}), array, heapSize)
end

function VL_HEAP_prefix_update(array, heapSize, index)
    return ccall((:VL_HEAP_prefix_update, libvl), Cvoid, (Ptr{Cint}, vl_size, vl_uindex), array, heapSize, index)
end

mutable struct _VLHIKMTree end

mutable struct _VLHIKMNode end

const vl_int32 = Cint

const vl_ikmacc_t = vl_int32

struct _VlIKMFilt
    M::vl_size
    K::vl_size
    max_niters::vl_size
    method::Cint
    verb::Cint
    centers::Ptr{vl_ikmacc_t}
    inter_dist::Ptr{vl_ikmacc_t}
end

const VlIKMFilt = _VlIKMFilt

struct _VlHIKMNode
    filter::Ptr{VlIKMFilt}
    children::Ptr{Ptr{_VlHIKMNode}}
end

const VlHIKMNode = _VlHIKMNode

mutable struct _VlHIKMTree
    M::vl_size
    K::vl_size
    depth::vl_size
    max_niters::vl_size
    method::Cint
    verb::Cint
    root::Ptr{VlHIKMNode}
    _VlHIKMTree() = new()
end

const VlHIKMTree = _VlHIKMTree

function vl_hikm_new(method)
    return ccall((:vl_hikm_new, libvl), Ptr{VlHIKMTree}, (Cint,), method)
end

function vl_hikm_delete(f)
    return ccall((:vl_hikm_delete, libvl), Cvoid, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_get_ndims(f)
    return ccall((:vl_hikm_get_ndims, libvl), vl_size, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_get_K(f)
    return ccall((:vl_hikm_get_K, libvl), vl_size, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_get_depth(f)
    return ccall((:vl_hikm_get_depth, libvl), vl_size, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_get_verbosity(f)
    return ccall((:vl_hikm_get_verbosity, libvl), Cint, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_get_max_niters(f)
    return ccall((:vl_hikm_get_max_niters, libvl), vl_size, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_get_root(f)
    return ccall((:vl_hikm_get_root, libvl), Ptr{VlHIKMNode}, (Ptr{VlHIKMTree},), f)
end

function vl_hikm_set_verbosity(f, verb)
    return ccall((:vl_hikm_set_verbosity, libvl), Cvoid, (Ptr{VlHIKMTree}, Cint), f, verb)
end

function vl_hikm_set_max_niters(f, max_niters)
    return ccall((:vl_hikm_set_max_niters, libvl), Cvoid, (Ptr{VlHIKMTree}, Cint), f, max_niters)
end

function vl_hikm_init(f, M, K, depth)
    return ccall((:vl_hikm_init, libvl), Cvoid, (Ptr{VlHIKMTree}, vl_size, vl_size, vl_size), f, M, K, depth)
end

const vl_uint8 = Cuchar

function vl_hikm_train(f, data, N)
    return ccall((:vl_hikm_train, libvl), Cvoid, (Ptr{VlHIKMTree}, Ptr{vl_uint8}, vl_size), f, data, N)
end

function vl_hikm_push(f, asgn, data, N)
    return ccall((:vl_hikm_push, libvl), Cvoid, (Ptr{VlHIKMTree}, Ptr{vl_uint32}, Ptr{vl_uint8}, vl_size), f, asgn, data, N)
end

@cenum VlHogVariant_::UInt32 begin
    VlHogVariantDalalTriggs = 0
    VlHogVariantUoctti = 1
end

const VlHogVariant = VlHogVariant_

mutable struct VlHog_
    variant::VlHogVariant
    dimension::vl_size
    numOrientations::vl_size
    transposed::vl_bool
    useBilinearOrientationAssigment::vl_bool
    permutation::Ptr{vl_index}
    glyphs::Ptr{Cfloat}
    glyphSize::vl_size
    orientationX::Ptr{Cfloat}
    orientationY::Ptr{Cfloat}
    hog::Ptr{Cfloat}
    hogNorm::Ptr{Cfloat}
    hogWidth::vl_size
    hogHeight::vl_size
    VlHog_() = new()
end

const VlHog = VlHog_

function vl_hog_new(variant, numOrientations, transposed)
    return ccall((:vl_hog_new, libvl), Ptr{VlHog}, (VlHogVariant, vl_size, vl_bool), variant, numOrientations, transposed)
end

function vl_hog_delete(self)
    return ccall((:vl_hog_delete, libvl), Cvoid, (Ptr{VlHog},), self)
end

function vl_hog_process(self, features, image, width, height, numChannels, cellSize)
    return ccall(
        (:vl_hog_process, libvl),
        Cvoid,
        (Ptr{VlHog}, Ptr{Cfloat}, Ptr{Cfloat}, vl_size, vl_size, vl_size, vl_size),
        self,
        features,
        image,
        width,
        height,
        numChannels,
        cellSize,
    )
end

function vl_hog_put_image(self, image, width, height, numChannels, cellSize)
    return ccall(
        (:vl_hog_put_image, libvl),
        Cvoid,
        (Ptr{VlHog}, Ptr{Cfloat}, vl_size, vl_size, vl_size, vl_size),
        self,
        image,
        width,
        height,
        numChannels,
        cellSize,
    )
end

function vl_hog_put_polar_field(self, modulus, angle, directed, width, height, cellSize)
    return ccall(
        (:vl_hog_put_polar_field, libvl),
        Cvoid,
        (Ptr{VlHog}, Ptr{Cfloat}, Ptr{Cfloat}, vl_bool, vl_size, vl_size, vl_size),
        self,
        modulus,
        angle,
        directed,
        width,
        height,
        cellSize,
    )
end

function vl_hog_extract(self, features)
    return ccall((:vl_hog_extract, libvl), Cvoid, (Ptr{VlHog}, Ptr{Cfloat}), self, features)
end

function vl_hog_get_height(self)
    return ccall((:vl_hog_get_height, libvl), vl_size, (Ptr{VlHog},), self)
end

function vl_hog_get_width(self)
    return ccall((:vl_hog_get_width, libvl), vl_size, (Ptr{VlHog},), self)
end

function vl_hog_render(self, image, features, width, height)
    return ccall(
        (:vl_hog_render, libvl), Cvoid, (Ptr{VlHog}, Ptr{Cfloat}, Ptr{Cfloat}, vl_size, vl_size), self, image, features, width, height
    )
end

function vl_hog_get_dimension(self)
    return ccall((:vl_hog_get_dimension, libvl), vl_size, (Ptr{VlHog},), self)
end

function vl_hog_get_permutation(self)
    return ccall((:vl_hog_get_permutation, libvl), Ptr{vl_index}, (Ptr{VlHog},), self)
end

function vl_hog_get_glyph_size(self)
    return ccall((:vl_hog_get_glyph_size, libvl), vl_size, (Ptr{VlHog},), self)
end

function vl_hog_get_use_bilinear_orientation_assignments(self)
    return ccall((:vl_hog_get_use_bilinear_orientation_assignments, libvl), vl_bool, (Ptr{VlHog},), self)
end

function vl_hog_set_use_bilinear_orientation_assignments(self, x)
    return ccall((:vl_hog_set_use_bilinear_orientation_assignments, libvl), Cvoid, (Ptr{VlHog}, vl_bool), self, x)
end

@cenum VlHomogeneousKernelType::UInt32 begin
    VlHomogeneousKernelIntersection = 0
    VlHomogeneousKernelChi2 = 1
    VlHomogeneousKernelJS = 2
end

@cenum VlHomogeneousKernelMapWindowType::UInt32 begin
    VlHomogeneousKernelMapWindowUniform = 0
    VlHomogeneousKernelMapWindowRectangular = 1
end

mutable struct _VlHomogeneousKernelMap end

const VlHomogeneousKernelMap = _VlHomogeneousKernelMap

function vl_homogeneouskernelmap_new(kernelType, gamma, order, period, windowType)
    return ccall(
        (:vl_homogeneouskernelmap_new, libvl),
        Ptr{VlHomogeneousKernelMap},
        (VlHomogeneousKernelType, Cdouble, vl_size, Cdouble, VlHomogeneousKernelMapWindowType),
        kernelType,
        gamma,
        order,
        period,
        windowType,
    )
end

function vl_homogeneouskernelmap_delete(self)
    return ccall((:vl_homogeneouskernelmap_delete, libvl), Cvoid, (Ptr{VlHomogeneousKernelMap},), self)
end

function vl_homogeneouskernelmap_evaluate_d(self, destination, stride, x)
    return ccall(
        (:vl_homogeneouskernelmap_evaluate_d, libvl),
        Cvoid,
        (Ptr{VlHomogeneousKernelMap}, Ptr{Cdouble}, vl_size, Cdouble),
        self,
        destination,
        stride,
        x,
    )
end

function vl_homogeneouskernelmap_evaluate_f(self, destination, stride, x)
    return ccall(
        (:vl_homogeneouskernelmap_evaluate_f, libvl),
        Cvoid,
        (Ptr{VlHomogeneousKernelMap}, Ptr{Cfloat}, vl_size, Cdouble),
        self,
        destination,
        stride,
        x,
    )
end

function vl_homogeneouskernelmap_get_order(self)
    return ccall((:vl_homogeneouskernelmap_get_order, libvl), vl_size, (Ptr{VlHomogeneousKernelMap},), self)
end

function vl_homogeneouskernelmap_get_dimension(self)
    return ccall((:vl_homogeneouskernelmap_get_dimension, libvl), vl_size, (Ptr{VlHomogeneousKernelMap},), self)
end

function vl_homogeneouskernelmap_get_kernel_type(self)
    return ccall((:vl_homogeneouskernelmap_get_kernel_type, libvl), VlHomogeneousKernelType, (Ptr{VlHomogeneousKernelMap},), self)
end

function vl_homogeneouskernelmap_get_window_type(self)
    return ccall((:vl_homogeneouskernelmap_get_window_type, libvl), VlHomogeneousKernelMapWindowType, (Ptr{VlHomogeneousKernelMap},), self)
end

# no prototype is found for this function at host.h:365:18, please use with caution
function vl_static_configuration_to_string_copy()
    return ccall((:vl_static_configuration_to_string_copy, libvl), Ptr{Cchar}, ())
end

const vl_int16 = Cshort

const vl_int8 = Cchar

const vl_uint16 = Cushort

const vl_int = Cint

const vl_intptr = vl_int64

const vl_uintptr = vl_uint64

function vl_swap_host_big_endianness_8(dst, src)
    return ccall((:vl_swap_host_big_endianness_8, libvl), Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}), dst, src)
end

function vl_swap_host_big_endianness_4(dst, src)
    return ccall((:vl_swap_host_big_endianness_4, libvl), Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}), dst, src)
end

function vl_swap_host_big_endianness_2(dst, src)
    return ccall((:vl_swap_host_big_endianness_2, libvl), Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}), dst, src)
end

struct var"##Ctag#526"
    data::NTuple{32, UInt8}
end

function Base.getproperty(x::Ptr{var"##Ctag#526"}, f::Symbol)
    f === :string && return Ptr{NTuple{32, Cchar}}(x + 0)
    f === :words && return Ptr{NTuple{8, vl_uint32}}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::var"##Ctag#526", f::Symbol)
    r = Ref{var"##Ctag#526"}(x)
    ptr = Base.unsafe_convert(Ptr{var"##Ctag#526"}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{var"##Ctag#526"}, f::Symbol, v)
    return unsafe_store!(getproperty(x, f), v)
end

struct _VlX86CpuInfo
    data::NTuple{60, UInt8}
end

function Base.getproperty(x::Ptr{_VlX86CpuInfo}, f::Symbol)
    f === :vendor && return Ptr{var"##Ctag#526"}(x + 0)
    f === :hasAVX && return Ptr{vl_bool}(x + 32)
    f === :hasSSE42 && return Ptr{vl_bool}(x + 36)
    f === :hasSSE41 && return Ptr{vl_bool}(x + 40)
    f === :hasSSE3 && return Ptr{vl_bool}(x + 44)
    f === :hasSSE2 && return Ptr{vl_bool}(x + 48)
    f === :hasSSE && return Ptr{vl_bool}(x + 52)
    f === :hasMMX && return Ptr{vl_bool}(x + 56)
    return getfield(x, f)
end

function Base.getproperty(x::_VlX86CpuInfo, f::Symbol)
    r = Ref{_VlX86CpuInfo}(x)
    ptr = Base.unsafe_convert(Ptr{_VlX86CpuInfo}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{_VlX86CpuInfo}, f::Symbol, v)
    return unsafe_store!(getproperty(x, f), v)
end

const VlX86CpuInfo = _VlX86CpuInfo

function _vl_x86cpu_info_init(self)
    return ccall((:_vl_x86cpu_info_init, libvl), Cvoid, (Ptr{VlX86CpuInfo},), self)
end

function _vl_x86cpu_info_to_string_copy(self)
    return ccall((:_vl_x86cpu_info_to_string_copy, libvl), Ptr{Cchar}, (Ptr{VlX86CpuInfo},), self)
end

@cenum VlIKMAlgorithms::UInt32 begin
    VL_IKM_LLOYD = 0
    VL_IKM_ELKAN = 1
end

function vl_ikm_new(method)
    return ccall((:vl_ikm_new, libvl), Ptr{VlIKMFilt}, (Cint,), method)
end

function vl_ikm_delete(f)
    return ccall((:vl_ikm_delete, libvl), Cvoid, (Ptr{VlIKMFilt},), f)
end

function vl_ikm_init(f, centers, M, K)
    return ccall((:vl_ikm_init, libvl), Cvoid, (Ptr{VlIKMFilt}, Ptr{vl_ikmacc_t}, vl_size, vl_size), f, centers, M, K)
end

function vl_ikm_init_rand(f, M, K)
    return ccall((:vl_ikm_init_rand, libvl), Cvoid, (Ptr{VlIKMFilt}, vl_size, vl_size), f, M, K)
end

function vl_ikm_init_rand_data(f, data, M, N, K)
    return ccall((:vl_ikm_init_rand_data, libvl), Cvoid, (Ptr{VlIKMFilt}, Ptr{vl_uint8}, vl_size, vl_size, vl_size), f, data, M, N, K)
end

function vl_ikm_train(f, data, N)
    return ccall((:vl_ikm_train, libvl), Cint, (Ptr{VlIKMFilt}, Ptr{vl_uint8}, vl_size), f, data, N)
end

function vl_ikm_push(f, asgn, data, N)
    return ccall((:vl_ikm_push, libvl), Cvoid, (Ptr{VlIKMFilt}, Ptr{vl_uint32}, Ptr{vl_uint8}, vl_size), f, asgn, data, N)
end

function vl_ikm_push_one(centers, data, M, K)
    return ccall((:vl_ikm_push_one, libvl), vl_uint, (Ptr{vl_ikmacc_t}, Ptr{vl_uint8}, vl_size, vl_size), centers, data, M, K)
end

function vl_ikm_get_ndims(f)
    return ccall((:vl_ikm_get_ndims, libvl), vl_size, (Ptr{VlIKMFilt},), f)
end

function vl_ikm_get_K(f)
    return ccall((:vl_ikm_get_K, libvl), vl_size, (Ptr{VlIKMFilt},), f)
end

function vl_ikm_get_verbosity(f)
    return ccall((:vl_ikm_get_verbosity, libvl), Cint, (Ptr{VlIKMFilt},), f)
end

function vl_ikm_get_max_niters(f)
    return ccall((:vl_ikm_get_max_niters, libvl), vl_size, (Ptr{VlIKMFilt},), f)
end

function vl_ikm_get_centers(f)
    return ccall((:vl_ikm_get_centers, libvl), Ptr{vl_ikmacc_t}, (Ptr{VlIKMFilt},), f)
end

function vl_ikm_set_verbosity(f, verb)
    return ccall((:vl_ikm_set_verbosity, libvl), Cvoid, (Ptr{VlIKMFilt}, Cint), f, verb)
end

function vl_ikm_set_max_niters(f, max_niters)
    return ccall((:vl_ikm_set_max_niters, libvl), Cvoid, (Ptr{VlIKMFilt}, vl_size), f, max_niters)
end

function vl_imconvcol_vf(dst, dst_stride, src, src_width, src_height, src_stride, filt, filt_begin, filt_end, step, flags)
    return ccall(
        (:vl_imconvcol_vf, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size, Ptr{Cfloat}, vl_index, vl_index, Cint, Cuint),
        dst,
        dst_stride,
        src,
        src_width,
        src_height,
        src_stride,
        filt,
        filt_begin,
        filt_end,
        step,
        flags,
    )
end

function vl_imconvcol_vd(dst, dst_stride, src, src_width, src_height, src_stride, filt, filt_begin, filt_end, step, flags)
    return ccall(
        (:vl_imconvcol_vd, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size, Ptr{Cdouble}, vl_index, vl_index, Cint, Cuint),
        dst,
        dst_stride,
        src,
        src_width,
        src_height,
        src_stride,
        filt,
        filt_begin,
        filt_end,
        step,
        flags,
    )
end

function vl_imconvcoltri_f(dest, destStride, image, imageWidth, imageHeight, imageStride, filterSize, step, flags)
    return ccall(
        (:vl_imconvcoltri_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size, vl_size, vl_size, Cuint),
        dest,
        destStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
        filterSize,
        step,
        flags,
    )
end

function vl_imconvcoltri_d(dest, destStride, image, imageWidth, imageHeight, imageStride, filterSize, step, flags)
    return ccall(
        (:vl_imconvcoltri_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size, vl_size, vl_size, Cuint),
        dest,
        destStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
        filterSize,
        step,
        flags,
    )
end

function vl_imintegral_f(integral, integralStride, image, imageWidth, imageHeight, imageStride)
    return ccall(
        (:vl_imintegral_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size),
        integral,
        integralStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imintegral_d(integral, integralStride, image, imageWidth, imageHeight, imageStride)
    return ccall(
        (:vl_imintegral_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size),
        integral,
        integralStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imintegral_i32(integral, integralStride, image, imageWidth, imageHeight, imageStride)
    return ccall(
        (:vl_imintegral_i32, libvl),
        Cvoid,
        (Ptr{vl_int32}, vl_size, Ptr{vl_int32}, vl_size, vl_size, vl_size),
        integral,
        integralStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imintegral_ui32(integral, integralStride, image, imageWidth, imageHeight, imageStride)
    return ccall(
        (:vl_imintegral_ui32, libvl),
        Cvoid,
        (Ptr{vl_uint32}, vl_size, Ptr{vl_uint32}, vl_size, vl_size, vl_size),
        integral,
        integralStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_image_distance_transform_d(image, numColumns, numRows, columnStride, rowStride, distanceTransform, indexes, coeff, offset)
    return ccall(
        (:vl_image_distance_transform_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, vl_size, vl_size, vl_size, Ptr{Cdouble}, Ptr{vl_uindex}, Cdouble, Cdouble),
        image,
        numColumns,
        numRows,
        columnStride,
        rowStride,
        distanceTransform,
        indexes,
        coeff,
        offset,
    )
end

function vl_image_distance_transform_f(image, numColumns, numRows, columnStride, rowStride, distanceTransform, indexes, coeff, offset)
    return ccall(
        (:vl_image_distance_transform_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, vl_size, vl_size, vl_size, Ptr{Cfloat}, Ptr{vl_uindex}, Cfloat, Cfloat),
        image,
        numColumns,
        numRows,
        columnStride,
        rowStride,
        distanceTransform,
        indexes,
        coeff,
        offset,
    )
end

function vl_imsmooth_f(smoothed, smoothedStride, image, width, height, stride, sigmax, sigmay)
    return ccall(
        (:vl_imsmooth_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size, Cdouble, Cdouble),
        smoothed,
        smoothedStride,
        image,
        width,
        height,
        stride,
        sigmax,
        sigmay,
    )
end

function vl_imsmooth_d(smoothed, smoothedStride, image, width, height, stride, sigmax, sigmay)
    return ccall(
        (:vl_imsmooth_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size, Cdouble, Cdouble),
        smoothed,
        smoothedStride,
        image,
        width,
        height,
        stride,
        sigmax,
        sigmay,
    )
end

function vl_imgradient_polar_f(
    amplitudeGradient, angleGradient, gradWidthStride, gradHeightStride, image, imageWidth, imageHeight, imageStride
)
    return ccall(
        (:vl_imgradient_polar_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, Ptr{Cfloat}, vl_size, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size),
        amplitudeGradient,
        angleGradient,
        gradWidthStride,
        gradHeightStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imgradient_polar_d(
    amplitudeGradient, angleGradient, gradWidthStride, gradHeightStride, image, imageWidth, imageHeight, imageStride
)
    return ccall(
        (:vl_imgradient_polar_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, Ptr{Cdouble}, vl_size, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size),
        amplitudeGradient,
        angleGradient,
        gradWidthStride,
        gradHeightStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imgradient_f(xGradient, yGradient, gradWidthStride, gradHeightStride, image, imageWidth, imageHeight, imageStride)
    return ccall(
        (:vl_imgradient_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, Ptr{Cfloat}, vl_size, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size),
        xGradient,
        yGradient,
        gradWidthStride,
        gradHeightStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imgradient_d(xGradient, yGradient, gradWidthStride, gradHeightStride, image, imageWidth, imageHeight, imageStride)
    return ccall(
        (:vl_imgradient_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, Ptr{Cdouble}, vl_size, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size),
        xGradient,
        yGradient,
        gradWidthStride,
        gradHeightStride,
        image,
        imageWidth,
        imageHeight,
        imageStride,
    )
end

function vl_imgradient_polar_f_callback(
    sourceImage, sourceImageWidth, sourceImageHeight, dstImage, dstWidth, dstHeight, octave, level, params
)
    return ccall(
        (:vl_imgradient_polar_f_callback, libvl),
        Cvoid,
        (Ptr{Cfloat}, Cint, Cint, Ptr{Cfloat}, Cint, Cint, Cint, Cint, Ptr{Cvoid}),
        sourceImage,
        sourceImageWidth,
        sourceImageHeight,
        dstImage,
        dstWidth,
        dstHeight,
        octave,
        level,
        params,
    )
end

function _vl_imconvcol_vf_sse2(dst, dst_stride, src, src_width, src_height, src_stride, filt, filt_begin, filt_end, step, flags)
    return ccall(
        (:_vl_imconvcol_vf_sse2, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, vl_size, vl_size, Ptr{Cfloat}, vl_index, vl_index, Cint, Cuint),
        dst,
        dst_stride,
        src,
        src_width,
        src_height,
        src_stride,
        filt,
        filt_begin,
        filt_end,
        step,
        flags,
    )
end

function _vl_imconvcol_vd_sse2(dst, dst_stride, src, src_width, src_height, src_stride, filt, filt_begin, filt_end, step, flags)
    return ccall(
        (:_vl_imconvcol_vd_sse2, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, vl_size, vl_size, Ptr{Cdouble}, vl_index, vl_index, Cint, Cuint),
        dst,
        dst_stride,
        src,
        src_width,
        src_height,
        src_stride,
        filt,
        filt_begin,
        filt_end,
        step,
        flags,
    )
end

struct _VlKDTreeNode
    parent::vl_uindex
    lowerChild::vl_index
    upperChild::vl_index
    splitDimension::Cuint
    splitThreshold::Cdouble
    lowerBound::Cdouble
    upperBound::Cdouble
end

const VlKDTreeNode = _VlKDTreeNode

struct _VlKDTreeSplitDimension
    dimension::Cuint
    mean::Cdouble
    variance::Cdouble
end

const VlKDTreeSplitDimension = _VlKDTreeSplitDimension

struct _VlKDTreeDataIndexEntry
    index::vl_index
    value::Cdouble
end

const VlKDTreeDataIndexEntry = _VlKDTreeDataIndexEntry

struct _VlKDTree
    nodes::Ptr{VlKDTreeNode}
    numUsedNodes::vl_size
    numAllocatedNodes::vl_size
    dataIndex::Ptr{VlKDTreeDataIndexEntry}
    depth::Cuint
end

const VlKDTree = _VlKDTree

struct _VlKDForestSearchState
    tree::Ptr{VlKDTree}
    nodeIndex::vl_uindex
    distanceLowerBound::Cdouble
end

const VlKDForestSearchState = _VlKDForestSearchState

@cenum _VlKDTreeThresholdingMethod::UInt32 begin
    VL_KDTREE_MEDIAN = 0
    VL_KDTREE_MEAN = 1
end

const VlKDTreeThresholdingMethod = _VlKDTreeThresholdingMethod

mutable struct _VlKDForestNeighbor
    distance::Cdouble
    index::vl_uindex
    _VlKDForestNeighbor() = new()
end

const VlKDForestNeighbor = _VlKDForestNeighbor

struct _VlKDForest
    dimension::vl_size
    rand::Ptr{VlRand}
    dataType::vl_type
    data::Ptr{Cvoid}
    numData::vl_size
    distance::VlVectorComparisonType
    distanceFunction::Ptr{Cvoid}
    trees::Ptr{Ptr{VlKDTree}}
    numTrees::vl_size
    thresholdingMethod::VlKDTreeThresholdingMethod
    splitHeapArray::NTuple{5, VlKDTreeSplitDimension}
    splitHeapNumNodes::vl_size
    splitHeapSize::vl_size
    maxNumNodes::vl_size
    searchMaxNumComparisons::vl_size
    numSearchers::vl_size
    headSearcher::Ptr{Cvoid} # headSearcher::Ptr{_VlKDForestSearcher}
end

function Base.getproperty(x::_VlKDForest, f::Symbol)
    f === :headSearcher && return Ptr{_VlKDForestSearcher}(getfield(x, f))
    return getfield(x, f)
end

const VlKDForest = _VlKDForest

struct _VlKDForestSearcher
    next::Ptr{_VlKDForestSearcher}
    previous::Ptr{_VlKDForestSearcher}
    searchIdBook::Ptr{vl_uindex}
    searchHeapArray::Ptr{VlKDForestSearchState}
    forest::Ptr{VlKDForest}
    searchNumComparisons::vl_size
    searchNumRecursions::vl_size
    searchNumSimplifications::vl_size
    searchHeapNumNodes::vl_size
    searchId::vl_uindex
end

const VlKDForestSearcher = _VlKDForestSearcher

function vl_kdforest_new(dataType, dimension, numTrees, normType)
    return ccall(
        (:vl_kdforest_new, libvl),
        Ptr{VlKDForest},
        (vl_type, vl_size, vl_size, VlVectorComparisonType),
        dataType,
        dimension,
        numTrees,
        normType,
    )
end

function vl_kdforest_new_searcher(kdforest)
    return ccall((:vl_kdforest_new_searcher, libvl), Ptr{VlKDForestSearcher}, (Ptr{VlKDForest},), kdforest)
end

function vl_kdforest_delete(self)
    return ccall((:vl_kdforest_delete, libvl), Cvoid, (Ptr{VlKDForest},), self)
end

function vl_kdforestsearcher_delete(searcher)
    return ccall((:vl_kdforestsearcher_delete, libvl), Cvoid, (Ptr{VlKDForestSearcher},), searcher)
end

function vl_kdforest_build(self, numData, data)
    return ccall((:vl_kdforest_build, libvl), Cvoid, (Ptr{VlKDForest}, vl_size, Ptr{Cvoid}), self, numData, data)
end

function vl_kdforest_query(self, neighbors, numNeighbors, query)
    return ccall(
        (:vl_kdforest_query, libvl),
        vl_size,
        (Ptr{VlKDForest}, Ptr{VlKDForestNeighbor}, vl_size, Ptr{Cvoid}),
        self,
        neighbors,
        numNeighbors,
        query,
    )
end

function vl_kdforest_query_with_array(self, index, numNeighbors, numQueries, distance, queries)
    return ccall(
        (:vl_kdforest_query_with_array, libvl),
        vl_size,
        (Ptr{VlKDForest}, Ptr{vl_uint32}, vl_size, vl_size, Ptr{Cvoid}, Ptr{Cvoid}),
        self,
        index,
        numNeighbors,
        numQueries,
        distance,
        queries,
    )
end

function vl_kdforestsearcher_query(self, neighbors, numNeighbors, query)
    return ccall(
        (:vl_kdforestsearcher_query, libvl),
        vl_size,
        (Ptr{VlKDForestSearcher}, Ptr{VlKDForestNeighbor}, vl_size, Ptr{Cvoid}),
        self,
        neighbors,
        numNeighbors,
        query,
    )
end

function vl_kdforest_get_depth_of_tree(self, treeIndex)
    return ccall((:vl_kdforest_get_depth_of_tree, libvl), vl_size, (Ptr{VlKDForest}, vl_uindex), self, treeIndex)
end

function vl_kdforest_get_num_nodes_of_tree(self, treeIndex)
    return ccall((:vl_kdforest_get_num_nodes_of_tree, libvl), vl_size, (Ptr{VlKDForest}, vl_uindex), self, treeIndex)
end

function vl_kdforest_get_num_trees(self)
    return ccall((:vl_kdforest_get_num_trees, libvl), vl_size, (Ptr{VlKDForest},), self)
end

function vl_kdforest_get_data_dimension(self)
    return ccall((:vl_kdforest_get_data_dimension, libvl), vl_size, (Ptr{VlKDForest},), self)
end

function vl_kdforest_get_data_type(self)
    return ccall((:vl_kdforest_get_data_type, libvl), vl_type, (Ptr{VlKDForest},), self)
end

function vl_kdforest_set_max_num_comparisons(self, n)
    return ccall((:vl_kdforest_set_max_num_comparisons, libvl), Cvoid, (Ptr{VlKDForest}, vl_size), self, n)
end

function vl_kdforest_get_max_num_comparisons(self)
    return ccall((:vl_kdforest_get_max_num_comparisons, libvl), vl_size, (Ptr{VlKDForest},), self)
end

function vl_kdforest_set_thresholding_method(self, method)
    return ccall((:vl_kdforest_set_thresholding_method, libvl), Cvoid, (Ptr{VlKDForest}, VlKDTreeThresholdingMethod), self, method)
end

function vl_kdforest_get_thresholding_method(self)
    return ccall((:vl_kdforest_get_thresholding_method, libvl), VlKDTreeThresholdingMethod, (Ptr{VlKDForest},), self)
end

function vl_kdforest_searcher_get_forest(self)
    return ccall((:vl_kdforest_searcher_get_forest, libvl), Ptr{VlKDForest}, (Ptr{VlKDForestSearcher},), self)
end

function vl_kdforest_get_searcher(self, pos)
    return ccall((:vl_kdforest_get_searcher, libvl), Ptr{VlKDForestSearcher}, (Ptr{VlKDForest}, vl_uindex), self, pos)
end

function vl_kmeans_new(dataType, distance)
    return ccall((:vl_kmeans_new, libvl), Ptr{VlKMeans}, (vl_type, VlVectorComparisonType), dataType, distance)
end

function vl_kmeans_new_copy(kmeans)
    return ccall((:vl_kmeans_new_copy, libvl), Ptr{VlKMeans}, (Ptr{VlKMeans},), kmeans)
end

function vl_kmeans_delete(self)
    return ccall((:vl_kmeans_delete, libvl), Cvoid, (Ptr{VlKMeans},), self)
end

function vl_kmeans_reset(self)
    return ccall((:vl_kmeans_reset, libvl), Cvoid, (Ptr{VlKMeans},), self)
end

function vl_kmeans_cluster(self, data, dimension, numData, numCenters)
    return ccall(
        (:vl_kmeans_cluster, libvl),
        Cdouble,
        (Ptr{VlKMeans}, Ptr{Cvoid}, vl_size, vl_size, vl_size),
        self,
        data,
        dimension,
        numData,
        numCenters,
    )
end

function vl_kmeans_quantize(self, assignments, distances, data, numData)
    return ccall(
        (:vl_kmeans_quantize, libvl),
        Cvoid,
        (Ptr{VlKMeans}, Ptr{vl_uint32}, Ptr{Cvoid}, Ptr{Cvoid}, vl_size),
        self,
        assignments,
        distances,
        data,
        numData,
    )
end

function vl_kmeans_quantize_ANN(self, assignments, distances, data, numData, iteration)
    return ccall(
        (:vl_kmeans_quantize_ANN, libvl),
        Cvoid,
        (Ptr{VlKMeans}, Ptr{vl_uint32}, Ptr{Cvoid}, Ptr{Cvoid}, vl_size, vl_size),
        self,
        assignments,
        distances,
        data,
        numData,
        iteration,
    )
end

function vl_kmeans_set_centers(self, centers, dimension, numCenters)
    return ccall(
        (:vl_kmeans_set_centers, libvl), Cvoid, (Ptr{VlKMeans}, Ptr{Cvoid}, vl_size, vl_size), self, centers, dimension, numCenters
    )
end

function vl_kmeans_init_centers_with_rand_data(self, data, dimensions, numData, numCenters)
    return ccall(
        (:vl_kmeans_init_centers_with_rand_data, libvl),
        Cvoid,
        (Ptr{VlKMeans}, Ptr{Cvoid}, vl_size, vl_size, vl_size),
        self,
        data,
        dimensions,
        numData,
        numCenters,
    )
end

function vl_kmeans_init_centers_plus_plus(self, data, dimensions, numData, numCenters)
    return ccall(
        (:vl_kmeans_init_centers_plus_plus, libvl),
        Cvoid,
        (Ptr{VlKMeans}, Ptr{Cvoid}, vl_size, vl_size, vl_size),
        self,
        data,
        dimensions,
        numData,
        numCenters,
    )
end

function vl_kmeans_refine_centers(self, data, numData)
    return ccall((:vl_kmeans_refine_centers, libvl), Cdouble, (Ptr{VlKMeans}, Ptr{Cvoid}, vl_size), self, data, numData)
end

function vl_kmeans_get_data_type(self)
    return ccall((:vl_kmeans_get_data_type, libvl), vl_type, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_distance(self)
    return ccall((:vl_kmeans_get_distance, libvl), VlVectorComparisonType, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_algorithm(self)
    return ccall((:vl_kmeans_get_algorithm, libvl), VlKMeansAlgorithm, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_initialization(self)
    return ccall((:vl_kmeans_get_initialization, libvl), VlKMeansInitialization, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_num_repetitions(self)
    return ccall((:vl_kmeans_get_num_repetitions, libvl), vl_size, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_dimension(self)
    return ccall((:vl_kmeans_get_dimension, libvl), vl_size, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_num_centers(self)
    return ccall((:vl_kmeans_get_num_centers, libvl), vl_size, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_verbosity(self)
    return ccall((:vl_kmeans_get_verbosity, libvl), Cint, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_max_num_iterations(self)
    return ccall((:vl_kmeans_get_max_num_iterations, libvl), vl_size, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_min_energy_variation(self)
    return ccall((:vl_kmeans_get_min_energy_variation, libvl), Cdouble, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_max_num_comparisons(self)
    return ccall((:vl_kmeans_get_max_num_comparisons, libvl), vl_size, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_num_trees(self)
    return ccall((:vl_kmeans_get_num_trees, libvl), vl_size, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_energy(self)
    return ccall((:vl_kmeans_get_energy, libvl), Cdouble, (Ptr{VlKMeans},), self)
end

function vl_kmeans_get_centers(self)
    return ccall((:vl_kmeans_get_centers, libvl), Ptr{Cvoid}, (Ptr{VlKMeans},), self)
end

function vl_kmeans_set_algorithm(self, algorithm)
    return ccall((:vl_kmeans_set_algorithm, libvl), Cvoid, (Ptr{VlKMeans}, VlKMeansAlgorithm), self, algorithm)
end

function vl_kmeans_set_initialization(self, initialization)
    return ccall((:vl_kmeans_set_initialization, libvl), Cvoid, (Ptr{VlKMeans}, VlKMeansInitialization), self, initialization)
end

function vl_kmeans_set_num_repetitions(self, numRepetitions)
    return ccall((:vl_kmeans_set_num_repetitions, libvl), Cvoid, (Ptr{VlKMeans}, vl_size), self, numRepetitions)
end

function vl_kmeans_set_max_num_iterations(self, maxNumIterations)
    return ccall((:vl_kmeans_set_max_num_iterations, libvl), Cvoid, (Ptr{VlKMeans}, vl_size), self, maxNumIterations)
end

function vl_kmeans_set_min_energy_variation(self, minEnergyVariation)
    return ccall((:vl_kmeans_set_min_energy_variation, libvl), Cvoid, (Ptr{VlKMeans}, Cdouble), self, minEnergyVariation)
end

function vl_kmeans_set_verbosity(self, verbosity)
    return ccall((:vl_kmeans_set_verbosity, libvl), Cvoid, (Ptr{VlKMeans}, Cint), self, verbosity)
end

function vl_kmeans_set_max_num_comparisons(self, maxNumComparisons)
    return ccall((:vl_kmeans_set_max_num_comparisons, libvl), Cvoid, (Ptr{VlKMeans}, vl_size), self, maxNumComparisons)
end

function vl_kmeans_set_num_trees(self, numTrees)
    return ccall((:vl_kmeans_set_num_trees, libvl), Cvoid, (Ptr{VlKMeans}, vl_size), self, numTrees)
end

@cenum _VlLbpMappingType::UInt32 begin
    VlLbpUniform = 0
end

const VlLbpMappingType = _VlLbpMappingType

mutable struct VlLbp_
    dimension::vl_size
    mapping::NTuple{256, vl_uint8}
    transposed::vl_bool
    VlLbp_() = new()
end

const VlLbp = VlLbp_

function vl_lbp_new(type, transposed)
    return ccall((:vl_lbp_new, libvl), Ptr{VlLbp}, (VlLbpMappingType, vl_bool), type, transposed)
end

function vl_lbp_delete(self)
    return ccall((:vl_lbp_delete, libvl), Cvoid, (Ptr{VlLbp},), self)
end

function vl_lbp_process(self, features, image, width, height, cellSize)
    return ccall(
        (:vl_lbp_process, libvl),
        Cvoid,
        (Ptr{VlLbp}, Ptr{Cfloat}, Ptr{Cfloat}, vl_size, vl_size, vl_size),
        self,
        features,
        image,
        width,
        height,
        cellSize,
    )
end

function vl_lbp_get_dimension(self)
    return ccall((:vl_lbp_get_dimension, libvl), vl_size, (Ptr{VlLbp},), self)
end

mutable struct _VlLiopDesc
    numNeighbours::vl_int
    numSpatialBins::vl_int
    intensityThreshold::Cfloat
    dimension::vl_size
    patchSideLength::vl_size
    patchSize::vl_size
    patchPixels::Ptr{vl_uindex}
    patchIntensities::Ptr{Cfloat}
    patchPermutation::Ptr{vl_uindex}
    neighRadius::Cfloat
    neighIntensities::Ptr{Cfloat}
    neighPermutation::Ptr{vl_uindex}
    neighSamplesX::Ptr{Cdouble}
    neighSamplesY::Ptr{Cdouble}
    _VlLiopDesc() = new()
end

const VlLiopDesc = _VlLiopDesc

function vl_liopdesc_new(numNeighbours, numSpatialBins, radius, sideLength)
    return ccall(
        (:vl_liopdesc_new, libvl), Ptr{VlLiopDesc}, (vl_int, vl_int, Cfloat, vl_size), numNeighbours, numSpatialBins, radius, sideLength
    )
end

function vl_liopdesc_new_basic(sideLength)
    return ccall((:vl_liopdesc_new_basic, libvl), Ptr{VlLiopDesc}, (vl_size,), sideLength)
end

function vl_liopdesc_delete(self)
    return ccall((:vl_liopdesc_delete, libvl), Cvoid, (Ptr{VlLiopDesc},), self)
end

function vl_liopdesc_get_dimension(self)
    return ccall((:vl_liopdesc_get_dimension, libvl), vl_size, (Ptr{VlLiopDesc},), self)
end

function vl_liopdesc_get_num_neighbours(self)
    return ccall((:vl_liopdesc_get_num_neighbours, libvl), vl_size, (Ptr{VlLiopDesc},), self)
end

function vl_liopdesc_get_intensity_threshold(self)
    return ccall((:vl_liopdesc_get_intensity_threshold, libvl), Cfloat, (Ptr{VlLiopDesc},), self)
end

function vl_liopdesc_get_num_spatial_bins(self)
    return ccall((:vl_liopdesc_get_num_spatial_bins, libvl), vl_size, (Ptr{VlLiopDesc},), self)
end

function vl_liopdesc_get_neighbourhood_radius(self)
    return ccall((:vl_liopdesc_get_neighbourhood_radius, libvl), Cdouble, (Ptr{VlLiopDesc},), self)
end

function vl_liopdesc_set_intensity_threshold(self, x)
    return ccall((:vl_liopdesc_set_intensity_threshold, libvl), Cvoid, (Ptr{VlLiopDesc}, Cfloat), self, x)
end

function vl_liopdesc_process(liop, desc, patch)
    return ccall((:vl_liopdesc_process, libvl), Cvoid, (Ptr{VlLiopDesc}, Ptr{Cfloat}, Ptr{Cfloat}), liop, desc, patch)
end

struct var"##Ctag#427"
    data::NTuple{4, UInt8}
end

function Base.getproperty(x::Ptr{var"##Ctag#427"}, f::Symbol)
    f === :raw && return Ptr{vl_uint32}(x + 0)
    f === :value && return Ptr{Cfloat}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::var"##Ctag#427", f::Symbol)
    r = Ref{var"##Ctag#427"}(x)
    ptr = Base.unsafe_convert(Ptr{var"##Ctag#427"}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{var"##Ctag#427"}, f::Symbol, v)
    return unsafe_store!(getproperty(x, f), v)
end

struct var"##Ctag#428"
    data::NTuple{4, UInt8}
end

function Base.getproperty(x::Ptr{var"##Ctag#428"}, f::Symbol)
    f === :raw && return Ptr{vl_uint32}(x + 0)
    f === :value && return Ptr{Cfloat}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::var"##Ctag#428", f::Symbol)
    r = Ref{var"##Ctag#428"}(x)
    ptr = Base.unsafe_convert(Ptr{var"##Ctag#428"}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{var"##Ctag#428"}, f::Symbol, v)
    return unsafe_store!(getproperty(x, f), v)
end

struct var"##Ctag#429"
    data::NTuple{8, UInt8}
end

function Base.getproperty(x::Ptr{var"##Ctag#429"}, f::Symbol)
    f === :raw && return Ptr{vl_uint64}(x + 0)
    f === :value && return Ptr{Cdouble}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::var"##Ctag#429", f::Symbol)
    r = Ref{var"##Ctag#429"}(x)
    ptr = Base.unsafe_convert(Ptr{var"##Ctag#429"}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{var"##Ctag#429"}, f::Symbol, v)
    return unsafe_store!(getproperty(x, f), v)
end

struct var"##Ctag#430"
    data::NTuple{8, UInt8}
end

function Base.getproperty(x::Ptr{var"##Ctag#430"}, f::Symbol)
    f === :raw && return Ptr{vl_uint64}(x + 0)
    f === :value && return Ptr{Cdouble}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::var"##Ctag#430", f::Symbol)
    r = Ref{var"##Ctag#430"}(x)
    ptr = Base.unsafe_convert(Ptr{var"##Ctag#430"}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{var"##Ctag#430"}, f::Symbol, v)
    return unsafe_store!(getproperty(x, f), v)
end

function vl_mod_2pi_f(x)
    return ccall((:vl_mod_2pi_f, libvl), Cfloat, (Cfloat,), x)
end

function vl_mod_2pi_d(x)
    return ccall((:vl_mod_2pi_d, libvl), Cdouble, (Cdouble,), x)
end

function vl_floor_f(x)
    return ccall((:vl_floor_f, libvl), Clong, (Cfloat,), x)
end

function vl_floor_d(x)
    return ccall((:vl_floor_d, libvl), Clong, (Cdouble,), x)
end

function vl_ceil_f(x)
    return ccall((:vl_ceil_f, libvl), Clong, (Cfloat,), x)
end

function vl_ceil_d(x)
    return ccall((:vl_ceil_d, libvl), Clong, (Cdouble,), x)
end

function vl_round_f(x)
    return ccall((:vl_round_f, libvl), Clong, (Cfloat,), x)
end

function vl_round_d(x)
    return ccall((:vl_round_d, libvl), Clong, (Cdouble,), x)
end

function vl_abs_f(x)
    return ccall((:vl_abs_f, libvl), Cfloat, (Cfloat,), x)
end

function vl_abs_d(x)
    return ccall((:vl_abs_d, libvl), Cdouble, (Cdouble,), x)
end

function vl_log2_d(x)
    return ccall((:vl_log2_d, libvl), Cdouble, (Cdouble,), x)
end

function vl_log2_f(x)
    return ccall((:vl_log2_f, libvl), Cfloat, (Cfloat,), x)
end

function vl_sqrt_d(x)
    return ccall((:vl_sqrt_d, libvl), Cdouble, (Cdouble,), x)
end

function vl_sqrt_f(x)
    return ccall((:vl_sqrt_f, libvl), Cfloat, (Cfloat,), x)
end

function vl_is_nan_f(x)
    return ccall((:vl_is_nan_f, libvl), vl_bool, (Cfloat,), x)
end

function vl_is_nan_d(x)
    return ccall((:vl_is_nan_d, libvl), vl_bool, (Cdouble,), x)
end

function vl_is_inf_f(x)
    return ccall((:vl_is_inf_f, libvl), vl_bool, (Cfloat,), x)
end

function vl_is_inf_d(x)
    return ccall((:vl_is_inf_d, libvl), vl_bool, (Cdouble,), x)
end

function vl_fast_atan2_f(y, x)
    return ccall((:vl_fast_atan2_f, libvl), Cfloat, (Cfloat, Cfloat), y, x)
end

function vl_fast_atan2_d(y, x)
    return ccall((:vl_fast_atan2_d, libvl), Cdouble, (Cdouble, Cdouble), y, x)
end

function vl_fast_resqrt_f(x)
    return ccall((:vl_fast_resqrt_f, libvl), Cfloat, (Cfloat,), x)
end

function vl_fast_resqrt_d(x)
    return ccall((:vl_fast_resqrt_d, libvl), Cdouble, (Cdouble,), x)
end

function vl_fast_sqrt_f(x)
    return ccall((:vl_fast_sqrt_f, libvl), Cfloat, (Cfloat,), x)
end

function vl_fast_sqrt_d(x)
    return ccall((:vl_fast_sqrt_d, libvl), Cdouble, (Cfloat,), x)
end

function vl_fast_sqrt_ui64(x)
    return ccall((:vl_fast_sqrt_ui64, libvl), vl_uint64, (vl_uint64,), x)
end

function vl_fast_sqrt_ui32(x)
    return ccall((:vl_fast_sqrt_ui32, libvl), vl_uint32, (vl_uint32,), x)
end

function vl_fast_sqrt_ui16(x)
    return ccall((:vl_fast_sqrt_ui16, libvl), vl_uint16, (vl_uint16,), x)
end

function vl_fast_sqrt_ui8(x)
    return ccall((:vl_fast_sqrt_ui8, libvl), vl_uint8, (vl_uint8,), x)
end

# typedef float ( * VlFloatVector3ComparisonFunction ) ( vl_size dimension , float const * X , float const * Y , float const * Z )
const VlFloatVector3ComparisonFunction = Ptr{Cvoid}

# typedef double ( * VlDoubleVector3ComparisonFunction ) ( vl_size dimension , double const * X , double const * Y , double const * Z )
const VlDoubleVector3ComparisonFunction = Ptr{Cvoid}

function vl_get_vector_comparison_type_name(type)
    return ccall((:vl_get_vector_comparison_type_name, libvl), Ptr{Cchar}, (Cint,), type)
end

function vl_get_vector_comparison_function_f(type)
    return ccall((:vl_get_vector_comparison_function_f, libvl), VlFloatVectorComparisonFunction, (VlVectorComparisonType,), type)
end

function vl_get_vector_comparison_function_d(type)
    return ccall((:vl_get_vector_comparison_function_d, libvl), VlDoubleVectorComparisonFunction, (VlVectorComparisonType,), type)
end

function vl_get_vector_3_comparison_function_f(type)
    return ccall((:vl_get_vector_3_comparison_function_f, libvl), VlFloatVector3ComparisonFunction, (VlVectorComparisonType,), type)
end

function vl_get_vector_3_comparison_function_d(type)
    return ccall((:vl_get_vector_3_comparison_function_d, libvl), VlDoubleVector3ComparisonFunction, (VlVectorComparisonType,), type)
end

function vl_eval_vector_comparison_on_all_pairs_f(result, dimension, X, numDataX, Y, numDataY, _function)
    return ccall(
        (:vl_eval_vector_comparison_on_all_pairs_f, libvl),
        Cvoid,
        (Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, Ptr{Cfloat}, vl_size, VlFloatVectorComparisonFunction),
        result,
        dimension,
        X,
        numDataX,
        Y,
        numDataY,
        _function,
    )
end

function vl_eval_vector_comparison_on_all_pairs_d(result, dimension, X, numDataX, Y, numDataY, _function)
    return ccall(
        (:vl_eval_vector_comparison_on_all_pairs_d, libvl),
        Cvoid,
        (Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, Ptr{Cdouble}, vl_size, VlDoubleVectorComparisonFunction),
        result,
        dimension,
        X,
        numDataX,
        Y,
        numDataY,
        _function,
    )
end

function vl_svd2(S, U, V, M)
    return ccall((:vl_svd2, libvl), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), S, U, V, M)
end

function vl_lapack_dlasv2(smin, smax, sv, cv, su, cu, f, g, h)
    return ccall(
        (:vl_lapack_dlasv2, libvl),
        Cvoid,
        (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble),
        smin,
        smax,
        sv,
        cv,
        su,
        cu,
        f,
        g,
        h,
    )
end

function vl_solve_linear_system_3(x, A, b)
    return ccall((:vl_solve_linear_system_3, libvl), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, A, b)
end

function vl_solve_linear_system_2(x, A, b)
    return ccall((:vl_solve_linear_system_2, libvl), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, A, b)
end

function vl_gaussian_elimination(A, numRows, numColumns)
    return ccall((:vl_gaussian_elimination, libvl), Cint, (Ptr{Cdouble}, vl_size, vl_size), A, numRows, numColumns)
end

function _vl_distance_mahalanobis_sq_avx_d(dimension, X, MU, S)
    return ccall(
        (:_vl_distance_mahalanobis_sq_avx_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, MU, S
    )
end

function _vl_distance_l2_avx_d(dimension, X, Y)
    return ccall((:_vl_distance_l2_avx_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_weighted_sigma_avx_d(dimension, S, X, Y, W)
    return ccall(
        (:_vl_weighted_sigma_avx_d, libvl), Cvoid, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), dimension, S, X, Y, W
    )
end

function _vl_weighted_mean_avx_d(dimension, MU, X, W)
    return ccall((:_vl_weighted_mean_avx_d, libvl), Cvoid, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), dimension, MU, X, W)
end

function _vl_distance_mahalanobis_sq_avx_f(dimension, X, MU, S)
    return ccall((:_vl_distance_mahalanobis_sq_avx_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, MU, S)
end

function _vl_distance_l2_avx_f(dimension, X, Y)
    return ccall((:_vl_distance_l2_avx_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_weighted_sigma_avx_f(dimension, S, X, Y, W)
    return ccall((:_vl_weighted_sigma_avx_f, libvl), Cvoid, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat), dimension, S, X, Y, W)
end

function _vl_weighted_mean_avx_f(dimension, MU, X, W)
    return ccall((:_vl_weighted_mean_avx_f, libvl), Cvoid, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat), dimension, MU, X, W)
end

function _vl_dot_sse2_d(dimension, X, Y)
    return ccall((:_vl_dot_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_distance_l2_sse2_d(dimension, X, Y)
    return ccall((:_vl_distance_l2_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_distance_l1_sse2_d(dimension, X, Y)
    return ccall((:_vl_distance_l1_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_distance_chi2_sse2_d(dimension, X, Y)
    return ccall((:_vl_distance_chi2_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_kernel_l2_sse2_d(dimension, X, Y)
    return ccall((:_vl_kernel_l2_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_kernel_l1_sse2_d(dimension, X, Y)
    return ccall((:_vl_kernel_l1_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_kernel_chi2_sse2_d(dimension, X, Y)
    return ccall((:_vl_kernel_chi2_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, Y)
end

function _vl_distance_mahalanobis_sq_sse2_d(dimension, X, MU, S)
    return ccall(
        (:_vl_distance_mahalanobis_sq_sse2_d, libvl), Cdouble, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), dimension, X, MU, S
    )
end

function _vl_weighted_sigma_sse2_d(dimension, S, X, Y, W)
    return ccall(
        (:_vl_weighted_sigma_sse2_d, libvl), Cvoid, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), dimension, S, X, Y, W
    )
end

function _vl_weighted_mean_sse2_d(dimension, MU, X, W)
    return ccall((:_vl_weighted_mean_sse2_d, libvl), Cvoid, (vl_size, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), dimension, MU, X, W)
end

function _vl_dot_sse2_f(dimension, X, Y)
    return ccall((:_vl_dot_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_distance_l2_sse2_f(dimension, X, Y)
    return ccall((:_vl_distance_l2_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_distance_l1_sse2_f(dimension, X, Y)
    return ccall((:_vl_distance_l1_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_distance_chi2_sse2_f(dimension, X, Y)
    return ccall((:_vl_distance_chi2_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_kernel_l2_sse2_f(dimension, X, Y)
    return ccall((:_vl_kernel_l2_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_kernel_l1_sse2_f(dimension, X, Y)
    return ccall((:_vl_kernel_l1_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_kernel_chi2_sse2_f(dimension, X, Y)
    return ccall((:_vl_kernel_chi2_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, Y)
end

function _vl_distance_mahalanobis_sq_sse2_f(dimension, X, MU, S)
    return ccall(
        (:_vl_distance_mahalanobis_sq_sse2_f, libvl), Cfloat, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), dimension, X, MU, S
    )
end

function _vl_weighted_sigma_sse2_f(dimension, S, X, Y, W)
    return ccall(
        (:_vl_weighted_sigma_sse2_f, libvl), Cvoid, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat), dimension, S, X, Y, W
    )
end

function _vl_weighted_mean_sse2_f(dimension, MU, X, W)
    return ccall((:_vl_weighted_mean_sse2_f, libvl), Cvoid, (vl_size, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat), dimension, MU, X, W)
end

const vl_mser_pix = vl_uint8

struct _VlMserReg
    parent::vl_uint
    shortcut::vl_uint
    height::vl_uint
    area::vl_uint
end

const VlMserReg = _VlMserReg

struct _VlMserExtrReg
    parent::Cint
    index::Cint
    value::vl_mser_pix
    shortcut::vl_uint
    area::vl_uint
    variation::Cfloat
    max_stable::vl_uint
end

const VlMserExtrReg = _VlMserExtrReg

struct _VlMserStats
    num_extremal::Cint
    num_unstable::Cint
    num_abs_unstable::Cint
    num_too_big::Cint
    num_too_small::Cint
    num_duplicates::Cint
end

const VlMserStats = _VlMserStats

mutable struct _VlMserFilt
    ndims::Cint
    dims::Ptr{Cint}
    nel::Cint
    subs::Ptr{Cint}
    dsubs::Ptr{Cint}
    strides::Ptr{Cint}
    perm::Ptr{vl_uint}
    joins::Ptr{vl_uint}
    njoins::Cint
    r::Ptr{VlMserReg}
    er::Ptr{VlMserExtrReg}
    mer::Ptr{vl_uint}
    ner::Cint
    nmer::Cint
    rer::Cint
    rmer::Cint
    acc::Ptr{Cfloat}
    ell::Ptr{Cfloat}
    rell::Cint
    nell::Cint
    dof::Cint
    verbose::vl_bool
    delta::Cint
    max_area::Cdouble
    min_area::Cdouble
    max_variation::Cdouble
    min_diversity::Cdouble
    stats::VlMserStats
    _VlMserFilt() = new()
end

const VlMserFilt = _VlMserFilt

function vl_mser_new(ndims, dims)
    return ccall((:vl_mser_new, libvl), Ptr{VlMserFilt}, (Cint, Ptr{Cint}), ndims, dims)
end

function vl_mser_delete(f)
    return ccall((:vl_mser_delete, libvl), Cvoid, (Ptr{VlMserFilt},), f)
end

function vl_mser_process(f, im)
    return ccall((:vl_mser_process, libvl), Cvoid, (Ptr{VlMserFilt}, Ptr{vl_mser_pix}), f, im)
end

function vl_mser_ell_fit(f)
    return ccall((:vl_mser_ell_fit, libvl), Cvoid, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_regions_num(f)
    return ccall((:vl_mser_get_regions_num, libvl), vl_uint, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_regions(f)
    return ccall((:vl_mser_get_regions, libvl), Ptr{vl_uint}, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_ell(f)
    return ccall((:vl_mser_get_ell, libvl), Ptr{Cfloat}, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_ell_num(f)
    return ccall((:vl_mser_get_ell_num, libvl), vl_uint, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_ell_dof(f)
    return ccall((:vl_mser_get_ell_dof, libvl), vl_uint, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_stats(f)
    return ccall((:vl_mser_get_stats, libvl), Ptr{VlMserStats}, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_delta(f)
    return ccall((:vl_mser_get_delta, libvl), vl_mser_pix, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_min_area(f)
    return ccall((:vl_mser_get_min_area, libvl), Cdouble, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_max_area(f)
    return ccall((:vl_mser_get_max_area, libvl), Cdouble, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_max_variation(f)
    return ccall((:vl_mser_get_max_variation, libvl), Cdouble, (Ptr{VlMserFilt},), f)
end

function vl_mser_get_min_diversity(f)
    return ccall((:vl_mser_get_min_diversity, libvl), Cdouble, (Ptr{VlMserFilt},), f)
end

function vl_mser_set_delta(f, x)
    return ccall((:vl_mser_set_delta, libvl), Cvoid, (Ptr{VlMserFilt}, vl_mser_pix), f, x)
end

function vl_mser_set_min_area(f, x)
    return ccall((:vl_mser_set_min_area, libvl), Cvoid, (Ptr{VlMserFilt}, Cdouble), f, x)
end

function vl_mser_set_max_area(f, x)
    return ccall((:vl_mser_set_max_area, libvl), Cvoid, (Ptr{VlMserFilt}, Cdouble), f, x)
end

function vl_mser_set_max_variation(f, x)
    return ccall((:vl_mser_set_max_variation, libvl), Cvoid, (Ptr{VlMserFilt}, Cdouble), f, x)
end

function vl_mser_set_min_diversity(f, x)
    return ccall((:vl_mser_set_min_diversity, libvl), Cvoid, (Ptr{VlMserFilt}, Cdouble), f, x)
end

const vl_mser_acc = Cfloat

mutable struct _VlPgmImage
    width::vl_size
    height::vl_size
    max_value::vl_size
    is_raw::vl_bool
    _VlPgmImage() = new()
end

const VlPgmImage = _VlPgmImage

function vl_pgm_extract_head(f, im)
    return ccall((:vl_pgm_extract_head, libvl), Cint, (Ptr{Libc.FILE}, Ptr{VlPgmImage}), f, im)
end

function vl_pgm_extract_data(f, im, data)
    return ccall((:vl_pgm_extract_data, libvl), Cint, (Ptr{Libc.FILE}, Ptr{VlPgmImage}, Ptr{Cvoid}), f, im, data)
end

function vl_pgm_insert(f, im, data)
    return ccall((:vl_pgm_insert, libvl), Cint, (Ptr{Libc.FILE}, Ptr{VlPgmImage}, Ptr{Cvoid}), f, im, data)
end

function vl_pgm_get_npixels(im)
    return ccall((:vl_pgm_get_npixels, libvl), vl_size, (Ptr{VlPgmImage},), im)
end

function vl_pgm_get_bpp(im)
    return ccall((:vl_pgm_get_bpp, libvl), vl_size, (Ptr{VlPgmImage},), im)
end

function vl_pgm_write(name, data, width, height)
    return ccall((:vl_pgm_write, libvl), Cint, (Ptr{Cchar}, Ptr{vl_uint8}, Cint, Cint), name, data, width, height)
end

function vl_pgm_write_f(name, data, width, height)
    return ccall((:vl_pgm_write_f, libvl), Cint, (Ptr{Cchar}, Ptr{Cfloat}, Cint, Cint), name, data, width, height)
end

function vl_pgm_read_new(name, im, data)
    return ccall((:vl_pgm_read_new, libvl), Cint, (Ptr{Cchar}, Ptr{VlPgmImage}, Ptr{Ptr{vl_uint8}}), name, im, data)
end

function vl_pgm_read_new_f(name, im, data)
    return ccall((:vl_pgm_read_new_f, libvl), Cint, (Ptr{Cchar}, Ptr{VlPgmImage}, Ptr{Ptr{Cfloat}}), name, im, data)
end

function VL_QSORT_prefix_cmp(array, indexA, indexB)
    return ccall((:VL_QSORT_prefix_cmp, libvl), Cint, (Ptr{Cint}, vl_uindex, vl_uindex), array, indexA, indexB)
end

function VL_QSORT_prefix_swap(array, indexA, indexB)
    return ccall((:VL_QSORT_prefix_swap, libvl), Cvoid, (Ptr{Cint}, vl_uindex, vl_uindex), array, indexA, indexB)
end

function VL_QSORT_prefix_sort_recursive(array, _begin, _end)
    return ccall((:VL_QSORT_prefix_sort_recursive, libvl), Cvoid, (Ptr{Cint}, vl_uindex, vl_uindex), array, _begin, _end)
end

function VL_QSORT_prefix_sort(array, size)
    return ccall((:VL_QSORT_prefix_sort, libvl), Cvoid, (Ptr{Cint}, vl_size), array, size)
end

const vl_qs_type = Cdouble

mutable struct _VlQS
    image::Ptr{vl_qs_type}
    height::Cint
    width::Cint
    channels::Cint
    medoid::vl_bool
    sigma::vl_qs_type
    tau::vl_qs_type
    parents::Ptr{Cint}
    dists::Ptr{vl_qs_type}
    density::Ptr{vl_qs_type}
    _VlQS() = new()
end

const VlQS = _VlQS

function vl_quickshift_new(im, height, width, channels)
    return ccall((:vl_quickshift_new, libvl), Ptr{VlQS}, (Ptr{vl_qs_type}, Cint, Cint, Cint), im, height, width, channels)
end

function vl_quickshift_delete(q)
    return ccall((:vl_quickshift_delete, libvl), Cvoid, (Ptr{VlQS},), q)
end

function vl_quickshift_process(q)
    return ccall((:vl_quickshift_process, libvl), Cvoid, (Ptr{VlQS},), q)
end

function vl_quickshift_get_max_dist(q)
    return ccall((:vl_quickshift_get_max_dist, libvl), vl_qs_type, (Ptr{VlQS},), q)
end

function vl_quickshift_get_kernel_size(q)
    return ccall((:vl_quickshift_get_kernel_size, libvl), vl_qs_type, (Ptr{VlQS},), q)
end

function vl_quickshift_get_medoid(q)
    return ccall((:vl_quickshift_get_medoid, libvl), vl_bool, (Ptr{VlQS},), q)
end

function vl_quickshift_get_parents(q)
    return ccall((:vl_quickshift_get_parents, libvl), Ptr{Cint}, (Ptr{VlQS},), q)
end

function vl_quickshift_get_dists(q)
    return ccall((:vl_quickshift_get_dists, libvl), Ptr{vl_qs_type}, (Ptr{VlQS},), q)
end

function vl_quickshift_get_density(q)
    return ccall((:vl_quickshift_get_density, libvl), Ptr{vl_qs_type}, (Ptr{VlQS},), q)
end

function vl_quickshift_set_max_dist(f, tau)
    return ccall((:vl_quickshift_set_max_dist, libvl), Cvoid, (Ptr{VlQS}, vl_qs_type), f, tau)
end

function vl_quickshift_set_kernel_size(f, sigma)
    return ccall((:vl_quickshift_set_kernel_size, libvl), Cvoid, (Ptr{VlQS}, vl_qs_type), f, sigma)
end

function vl_quickshift_set_medoid(f, medoid)
    return ccall((:vl_quickshift_set_medoid, libvl), Cvoid, (Ptr{VlQS}, vl_bool), f, medoid)
end

function vl_rand_init(self)
    return ccall((:vl_rand_init, libvl), Cvoid, (Ptr{VlRand},), self)
end

function vl_rand_seed(self, s)
    return ccall((:vl_rand_seed, libvl), Cvoid, (Ptr{VlRand}, vl_uint32), self, s)
end

function vl_rand_seed_by_array(self, key, keySize)
    return ccall((:vl_rand_seed_by_array, libvl), Cvoid, (Ptr{VlRand}, Ptr{vl_uint32}, vl_size), self, key, keySize)
end

function vl_rand_uint64(self)
    return ccall((:vl_rand_uint64, libvl), vl_uint64, (Ptr{VlRand},), self)
end

function vl_rand_int63(self)
    return ccall((:vl_rand_int63, libvl), vl_int64, (Ptr{VlRand},), self)
end

function vl_rand_uint32(self)
    return ccall((:vl_rand_uint32, libvl), vl_uint32, (Ptr{VlRand},), self)
end

function vl_rand_int31(self)
    return ccall((:vl_rand_int31, libvl), vl_int32, (Ptr{VlRand},), self)
end

function vl_rand_real1(self)
    return ccall((:vl_rand_real1, libvl), Cdouble, (Ptr{VlRand},), self)
end

function vl_rand_real2(self)
    return ccall((:vl_rand_real2, libvl), Cdouble, (Ptr{VlRand},), self)
end

function vl_rand_real3(self)
    return ccall((:vl_rand_real3, libvl), Cdouble, (Ptr{VlRand},), self)
end

function vl_rand_res53(self)
    return ccall((:vl_rand_res53, libvl), Cdouble, (Ptr{VlRand},), self)
end

function vl_rand_uindex(self, range)
    return ccall((:vl_rand_uindex, libvl), vl_uindex, (Ptr{VlRand}, vl_uindex), self, range)
end

function vl_rand_permute_indexes(self, array, size)
    return ccall((:vl_rand_permute_indexes, libvl), Cvoid, (Ptr{VlRand}, Ptr{vl_index}, vl_size), self, array, size)
end

function vl_rodrigues(R_pt, dR_pt, om_pt)
    return ccall((:vl_rodrigues, libvl), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), R_pt, dR_pt, om_pt)
end

function vl_irodrigues(om_pt, dom_pt, R_pt)
    return ccall((:vl_irodrigues, libvl), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), om_pt, dom_pt, R_pt)
end

mutable struct _VlScaleSpaceGeometry
    width::vl_size
    height::vl_size
    firstOctave::vl_index
    lastOctave::vl_index
    octaveResolution::vl_size
    octaveFirstSubdivision::vl_index
    octaveLastSubdivision::vl_index
    baseScale::Cdouble
    nominalScale::Cdouble
    _VlScaleSpaceGeometry() = new()
end

const VlScaleSpaceGeometry = _VlScaleSpaceGeometry

function vl_scalespacegeometry_is_equal(a, b)
    return ccall((:vl_scalespacegeometry_is_equal, libvl), vl_bool, (VlScaleSpaceGeometry, VlScaleSpaceGeometry), a, b)
end

mutable struct _VlScaleSpaceOctaveGeometry
    width::vl_size
    height::vl_size
    step::Cdouble
    _VlScaleSpaceOctaveGeometry() = new()
end

const VlScaleSpaceOctaveGeometry = _VlScaleSpaceOctaveGeometry

function vl_scalespace_get_default_geometry(width, height)
    return ccall((:vl_scalespace_get_default_geometry, libvl), VlScaleSpaceGeometry, (vl_size, vl_size), width, height)
end

function vl_scalespace_new(width, height)
    return ccall((:vl_scalespace_new, libvl), Ptr{VlScaleSpace}, (vl_size, vl_size), width, height)
end

function vl_scalespace_new_with_geometry(geom)
    return ccall((:vl_scalespace_new_with_geometry, libvl), Ptr{VlScaleSpace}, (VlScaleSpaceGeometry,), geom)
end

function vl_scalespace_new_copy(src)
    return ccall((:vl_scalespace_new_copy, libvl), Ptr{VlScaleSpace}, (Ptr{VlScaleSpace},), src)
end

function vl_scalespace_new_shallow_copy(src)
    return ccall((:vl_scalespace_new_shallow_copy, libvl), Ptr{VlScaleSpace}, (Ptr{VlScaleSpace},), src)
end

function vl_scalespace_delete(self)
    return ccall((:vl_scalespace_delete, libvl), Cvoid, (Ptr{VlScaleSpace},), self)
end

function vl_scalespace_put_image(self, image)
    return ccall((:vl_scalespace_put_image, libvl), Cvoid, (Ptr{VlScaleSpace}, Ptr{Cfloat}), self, image)
end

function vl_scalespace_get_geometry(self)
    return ccall((:vl_scalespace_get_geometry, libvl), VlScaleSpaceGeometry, (Ptr{VlScaleSpace},), self)
end

function vl_scalespace_get_octave_geometry(self, o)
    return ccall((:vl_scalespace_get_octave_geometry, libvl), VlScaleSpaceOctaveGeometry, (Ptr{VlScaleSpace}, vl_index), self, o)
end

function vl_scalespace_get_level(self, o, s)
    return ccall((:vl_scalespace_get_level, libvl), Ptr{Cfloat}, (Ptr{VlScaleSpace}, vl_index, vl_index), self, o, s)
end

function vl_scalespace_get_level_const(self, o, s)
    return ccall((:vl_scalespace_get_level_const, libvl), Ptr{Cfloat}, (Ptr{VlScaleSpace}, vl_index, vl_index), self, o, s)
end

function vl_scalespace_get_level_sigma(self, o, s)
    return ccall((:vl_scalespace_get_level_sigma, libvl), Cdouble, (Ptr{VlScaleSpace}, vl_index, vl_index), self, o, s)
end

function VL_SHUFFLE_prefix_swap(array, indexA, indexB)
    return ccall((:VL_SHUFFLE_prefix_swap, libvl), Cvoid, (Ptr{Cint}, vl_uindex, vl_uindex), array, indexA, indexB)
end

function VL_SHUFFLE_prefix_shuffle(array, size, rand)
    return ccall((:VL_SHUFFLE_prefix_shuffle, libvl), Cvoid, (Ptr{Cint}, vl_size, Ptr{VlRand}), array, size, rand)
end

const vl_sift_pix = Cfloat

struct _VlSiftKeypoint
    o::Cint
    ix::Cint
    iy::Cint
    is::Cint
    x::Cfloat
    y::Cfloat
    s::Cfloat
    sigma::Cfloat
end

const VlSiftKeypoint = _VlSiftKeypoint

mutable struct _VlSiftFilt
    sigman::Cdouble
    sigma0::Cdouble
    sigmak::Cdouble
    dsigma0::Cdouble
    width::Cint
    height::Cint
    O::Cint
    S::Cint
    o_min::Cint
    s_min::Cint
    s_max::Cint
    o_cur::Cint
    temp::Ptr{vl_sift_pix}
    octave::Ptr{vl_sift_pix}
    dog::Ptr{vl_sift_pix}
    octave_width::Cint
    octave_height::Cint
    gaussFilter::Ptr{vl_sift_pix}
    gaussFilterSigma::Cdouble
    gaussFilterWidth::vl_size
    keys::Ptr{VlSiftKeypoint}
    nkeys::Cint
    keys_res::Cint
    peak_thresh::Cdouble
    edge_thresh::Cdouble
    norm_thresh::Cdouble
    magnif::Cdouble
    windowSize::Cdouble
    grad::Ptr{vl_sift_pix}
    grad_o::Cint
    _VlSiftFilt() = new()
end

const VlSiftFilt = _VlSiftFilt

function vl_sift_new(width, height, noctaves, nlevels, o_min)
    return ccall((:vl_sift_new, libvl), Ptr{VlSiftFilt}, (Cint, Cint, Cint, Cint, Cint), width, height, noctaves, nlevels, o_min)
end

function vl_sift_delete(f)
    return ccall((:vl_sift_delete, libvl), Cvoid, (Ptr{VlSiftFilt},), f)
end

function vl_sift_process_first_octave(f, im)
    return ccall((:vl_sift_process_first_octave, libvl), Cint, (Ptr{VlSiftFilt}, Ptr{vl_sift_pix}), f, im)
end

function vl_sift_process_next_octave(f)
    return ccall((:vl_sift_process_next_octave, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_detect(f)
    return ccall((:vl_sift_detect, libvl), Cvoid, (Ptr{VlSiftFilt},), f)
end

function vl_sift_calc_keypoint_orientations(f, angles, k)
    return ccall((:vl_sift_calc_keypoint_orientations, libvl), Cint, (Ptr{VlSiftFilt}, Ptr{Cdouble}, Ptr{VlSiftKeypoint}), f, angles, k)
end

function vl_sift_calc_keypoint_descriptor(f, descr, k, angle)
    return ccall(
        (:vl_sift_calc_keypoint_descriptor, libvl),
        Cvoid,
        (Ptr{VlSiftFilt}, Ptr{vl_sift_pix}, Ptr{VlSiftKeypoint}, Cdouble),
        f,
        descr,
        k,
        angle,
    )
end

function vl_sift_calc_raw_descriptor(f, image, descr, widht, height, x, y, s, angle0)
    return ccall(
        (:vl_sift_calc_raw_descriptor, libvl),
        Cvoid,
        (Ptr{VlSiftFilt}, Ptr{vl_sift_pix}, Ptr{vl_sift_pix}, Cint, Cint, Cdouble, Cdouble, Cdouble, Cdouble),
        f,
        image,
        descr,
        widht,
        height,
        x,
        y,
        s,
        angle0,
    )
end

function vl_sift_keypoint_init(f, k, x, y, sigma)
    return ccall(
        (:vl_sift_keypoint_init, libvl), Cvoid, (Ptr{VlSiftFilt}, Ptr{VlSiftKeypoint}, Cdouble, Cdouble, Cdouble), f, k, x, y, sigma
    )
end

function vl_sift_get_octave_index(f)
    return ccall((:vl_sift_get_octave_index, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_noctaves(f)
    return ccall((:vl_sift_get_noctaves, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_octave_first(f)
    return ccall((:vl_sift_get_octave_first, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_octave_width(f)
    return ccall((:vl_sift_get_octave_width, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_octave_height(f)
    return ccall((:vl_sift_get_octave_height, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_nlevels(f)
    return ccall((:vl_sift_get_nlevels, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_nkeypoints(f)
    return ccall((:vl_sift_get_nkeypoints, libvl), Cint, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_peak_thresh(f)
    return ccall((:vl_sift_get_peak_thresh, libvl), Cdouble, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_edge_thresh(f)
    return ccall((:vl_sift_get_edge_thresh, libvl), Cdouble, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_norm_thresh(f)
    return ccall((:vl_sift_get_norm_thresh, libvl), Cdouble, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_magnif(f)
    return ccall((:vl_sift_get_magnif, libvl), Cdouble, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_window_size(f)
    return ccall((:vl_sift_get_window_size, libvl), Cdouble, (Ptr{VlSiftFilt},), f)
end

function vl_sift_get_octave(f, s)
    return ccall((:vl_sift_get_octave, libvl), Ptr{vl_sift_pix}, (Ptr{VlSiftFilt}, Cint), f, s)
end

function vl_sift_get_keypoints(f)
    return ccall((:vl_sift_get_keypoints, libvl), Ptr{VlSiftKeypoint}, (Ptr{VlSiftFilt},), f)
end

function vl_sift_set_peak_thresh(f, t)
    return ccall((:vl_sift_set_peak_thresh, libvl), Cvoid, (Ptr{VlSiftFilt}, Cdouble), f, t)
end

function vl_sift_set_edge_thresh(f, t)
    return ccall((:vl_sift_set_edge_thresh, libvl), Cvoid, (Ptr{VlSiftFilt}, Cdouble), f, t)
end

function vl_sift_set_norm_thresh(f, t)
    return ccall((:vl_sift_set_norm_thresh, libvl), Cvoid, (Ptr{VlSiftFilt}, Cdouble), f, t)
end

function vl_sift_set_magnif(f, m)
    return ccall((:vl_sift_set_magnif, libvl), Cvoid, (Ptr{VlSiftFilt}, Cdouble), f, m)
end

function vl_sift_set_window_size(f, m)
    return ccall((:vl_sift_set_window_size, libvl), Cvoid, (Ptr{VlSiftFilt}, Cdouble), f, m)
end

function vl_slic_segment(segmentation, image, width, height, numChannels, regionSize, regularization, minRegionSize)
    return ccall(
        (:vl_slic_segment, libvl),
        Cvoid,
        (Ptr{vl_uint32}, Ptr{Cfloat}, vl_size, vl_size, vl_size, vl_size, Cfloat, vl_size),
        segmentation,
        image,
        width,
        height,
        numChannels,
        regionSize,
        regularization,
        minRegionSize,
    )
end

@cenum var"##Ctag#501"::Int32 begin
    VL_PROT_UNKNOWN = -1
    VL_PROT_NONE = 0
    VL_PROT_ASCII = 1
    VL_PROT_BINARY = 2
end

function vl_string_copy(destination, destinationSize, source)
    return ccall((:vl_string_copy, libvl), vl_size, (Ptr{Cchar}, vl_size, Ptr{Cchar}), destination, destinationSize, source)
end

function vl_string_copy_sub(destination, destinationSize, beginning, _end)
    return ccall(
        (:vl_string_copy_sub, libvl), vl_size, (Ptr{Cchar}, vl_size, Ptr{Cchar}, Ptr{Cchar}), destination, destinationSize, beginning, _end
    )
end

function vl_string_parse_protocol(string, protocol)
    return ccall((:vl_string_parse_protocol, libvl), Ptr{Cchar}, (Ptr{Cchar}, Ptr{Cint}), string, protocol)
end

function vl_string_protocol_name(prot)
    return ccall((:vl_string_protocol_name, libvl), Ptr{Cchar}, (Cint,), prot)
end

function vl_string_basename(destination, destinationSize, source, maxNumStrippedExtension)
    return ccall(
        (:vl_string_basename, libvl),
        vl_size,
        (Ptr{Cchar}, vl_size, Ptr{Cchar}, vl_size),
        destination,
        destinationSize,
        source,
        maxNumStrippedExtension,
    )
end

function vl_string_replace_wildcard(destination, destinationSize, src, wildcardChar, escapeChar, replacement)
    return ccall(
        (:vl_string_replace_wildcard, libvl),
        vl_size,
        (Ptr{Cchar}, vl_size, Ptr{Cchar}, Cchar, Cchar, Ptr{Cchar}),
        destination,
        destinationSize,
        src,
        wildcardChar,
        escapeChar,
        replacement,
    )
end

function vl_string_find_char_rev(beginning, _end, c)
    return ccall((:vl_string_find_char_rev, libvl), Ptr{Cchar}, (Ptr{Cchar}, Ptr{Cchar}, Cchar), beginning, _end, c)
end

function vl_string_length(string)
    return ccall((:vl_string_length, libvl), vl_size, (Ptr{Cchar},), string)
end

function vl_string_casei_cmp(string1, string2)
    return ccall((:vl_string_casei_cmp, libvl), Cint, (Ptr{Cchar}, Ptr{Cchar}), string1, string2)
end

mutable struct _VlEnumerator
    name::Ptr{Cchar}
    value::vl_index
    _VlEnumerator() = new()
end

const VlEnumerator = _VlEnumerator

function vl_enumeration_get(enumeration, name)
    return ccall((:vl_enumeration_get, libvl), Ptr{VlEnumerator}, (Ptr{VlEnumerator}, Ptr{Cchar}), enumeration, name)
end

function vl_enumeration_get_casei(enumeration, name)
    return ccall((:vl_enumeration_get_casei, libvl), Ptr{VlEnumerator}, (Ptr{VlEnumerator}, Ptr{Cchar}), enumeration, name)
end

function vl_enumeration_get_by_value(enumeration, value)
    return ccall((:vl_enumeration_get_by_value, libvl), Ptr{VlEnumerator}, (Ptr{VlEnumerator}, vl_index), enumeration, value)
end

mutable struct VlSvm_ end

const VlSvm = VlSvm_

@cenum VlSvmSolverType::UInt32 begin
    VlSvmSolverNone = 0
    VlSvmSolverSgd = 1
    VlSvmSolverSdca = 2
end

@cenum VlSvmLossType::UInt32 begin
    VlSvmLossHinge = 0
    VlSvmLossHinge2 = 1
    VlSvmLossL1 = 2
    VlSvmLossL2 = 3
    VlSvmLossLogistic = 4
end

@cenum VlSvmSolverStatus::UInt32 begin
    VlSvmStatusTraining = 1
    VlSvmStatusConverged = 2
    VlSvmStatusMaxNumIterationsReached = 3
end

mutable struct VlSvmStatistics_
    status::VlSvmSolverStatus
    iteration::vl_size
    epoch::vl_size
    objective::Cdouble
    regularizer::Cdouble
    loss::Cdouble
    dualObjective::Cdouble
    dualLoss::Cdouble
    dualityGap::Cdouble
    scoresVariation::Cdouble
    elapsedTime::Cdouble
    VlSvmStatistics_() = new()
end

const VlSvmStatistics = VlSvmStatistics_

function vl_svm_new(type, data, dimension, numData, labels, lambda)
    return ccall(
        (:vl_svm_new, libvl),
        Ptr{VlSvm},
        (VlSvmSolverType, Ptr{Cdouble}, vl_size, vl_size, Ptr{Cdouble}, Cdouble),
        type,
        data,
        dimension,
        numData,
        labels,
        lambda,
    )
end

mutable struct VlSvmDataset_ end

const VlSvmDataset = VlSvmDataset_

function vl_svm_new_with_dataset(type, dataset, labels, lambda)
    return ccall(
        (:vl_svm_new_with_dataset, libvl),
        Ptr{VlSvm},
        (VlSvmSolverType, Ptr{VlSvmDataset}, Ptr{Cdouble}, Cdouble),
        type,
        dataset,
        labels,
        lambda,
    )
end

function vl_svm_new_with_abstract_data(type, data, dimension, numData, labels, lambda)
    return ccall(
        (:vl_svm_new_with_abstract_data, libvl),
        Ptr{VlSvm},
        (VlSvmSolverType, Ptr{Cvoid}, vl_size, vl_size, Ptr{Cdouble}, Cdouble),
        type,
        data,
        dimension,
        numData,
        labels,
        lambda,
    )
end

function vl_svm_delete(self)
    return ccall((:vl_svm_delete, libvl), Cvoid, (Ptr{VlSvm},), self)
end

function vl_svm_get_statistics(self)
    return ccall((:vl_svm_get_statistics, libvl), Ptr{VlSvmStatistics}, (Ptr{VlSvm},), self)
end

function vl_svm_get_model(self)
    return ccall((:vl_svm_get_model, libvl), Ptr{Cdouble}, (Ptr{VlSvm},), self)
end

function vl_svm_get_bias(self)
    return ccall((:vl_svm_get_bias, libvl), Cdouble, (Ptr{VlSvm},), self)
end

function vl_svm_get_dimension(self)
    return ccall((:vl_svm_get_dimension, libvl), vl_size, (Ptr{VlSvm},), self)
end

function vl_svm_get_num_data(self)
    return ccall((:vl_svm_get_num_data, libvl), vl_size, (Ptr{VlSvm},), self)
end

function vl_svm_get_epsilon(self)
    return ccall((:vl_svm_get_epsilon, libvl), Cdouble, (Ptr{VlSvm},), self)
end

function vl_svm_get_bias_learning_rate(self)
    return ccall((:vl_svm_get_bias_learning_rate, libvl), Cdouble, (Ptr{VlSvm},), self)
end

function vl_svm_get_max_num_iterations(self)
    return ccall((:vl_svm_get_max_num_iterations, libvl), vl_size, (Ptr{VlSvm},), self)
end

function vl_svm_get_diagnostic_frequency(self)
    return ccall((:vl_svm_get_diagnostic_frequency, libvl), vl_size, (Ptr{VlSvm},), self)
end

function vl_svm_get_solver(self)
    return ccall((:vl_svm_get_solver, libvl), VlSvmSolverType, (Ptr{VlSvm},), self)
end

function vl_svm_get_bias_multiplier(self)
    return ccall((:vl_svm_get_bias_multiplier, libvl), Cdouble, (Ptr{VlSvm},), self)
end

function vl_svm_get_lambda(self)
    return ccall((:vl_svm_get_lambda, libvl), Cdouble, (Ptr{VlSvm},), self)
end

function vl_svm_get_iteration_number(self)
    return ccall((:vl_svm_get_iteration_number, libvl), vl_size, (Ptr{VlSvm},), self)
end

function vl_svm_get_scores(self)
    return ccall((:vl_svm_get_scores, libvl), Ptr{Cdouble}, (Ptr{VlSvm},), self)
end

function vl_svm_get_weights(self)
    return ccall((:vl_svm_get_weights, libvl), Ptr{Cdouble}, (Ptr{VlSvm},), self)
end

function vl_svm_set_epsilon(self, epsilon)
    return ccall((:vl_svm_set_epsilon, libvl), Cvoid, (Ptr{VlSvm}, Cdouble), self, epsilon)
end

function vl_svm_set_bias_learning_rate(self, rate)
    return ccall((:vl_svm_set_bias_learning_rate, libvl), Cvoid, (Ptr{VlSvm}, Cdouble), self, rate)
end

function vl_svm_set_max_num_iterations(self, maxNumIterations)
    return ccall((:vl_svm_set_max_num_iterations, libvl), Cvoid, (Ptr{VlSvm}, vl_size), self, maxNumIterations)
end

function vl_svm_set_diagnostic_frequency(self, f)
    return ccall((:vl_svm_set_diagnostic_frequency, libvl), Cvoid, (Ptr{VlSvm}, vl_size), self, f)
end

function vl_svm_set_bias_multiplier(self, b)
    return ccall((:vl_svm_set_bias_multiplier, libvl), Cvoid, (Ptr{VlSvm}, Cdouble), self, b)
end

function vl_svm_set_model(self, model)
    return ccall((:vl_svm_set_model, libvl), Cvoid, (Ptr{VlSvm}, Ptr{Cdouble}), self, model)
end

function vl_svm_set_bias(self, b)
    return ccall((:vl_svm_set_bias, libvl), Cvoid, (Ptr{VlSvm}, Cdouble), self, b)
end

function vl_svm_set_iteration_number(self, n)
    return ccall((:vl_svm_set_iteration_number, libvl), Cvoid, (Ptr{VlSvm}, vl_uindex), self, n)
end

function vl_svm_set_weights(self, weights)
    return ccall((:vl_svm_set_weights, libvl), Cvoid, (Ptr{VlSvm}, Ptr{Cdouble}), self, weights)
end

# typedef void ( * VlSvmDiagnosticFunction ) ( struct VlSvm_ * svm , void * data )
const VlSvmDiagnosticFunction = Ptr{Cvoid}

function vl_svm_set_diagnostic_function(self, f, data)
    return ccall((:vl_svm_set_diagnostic_function, libvl), Cvoid, (Ptr{VlSvm}, VlSvmDiagnosticFunction, Ptr{Cvoid}), self, f, data)
end

# typedef double ( * VlSvmLossFunction ) ( double inner , double label )
const VlSvmLossFunction = Ptr{Cvoid}

function vl_svm_set_loss_function(self, f)
    return ccall((:vl_svm_set_loss_function, libvl), Cvoid, (Ptr{VlSvm}, VlSvmLossFunction), self, f)
end

function vl_svm_set_loss_derivative_function(self, f)
    return ccall((:vl_svm_set_loss_derivative_function, libvl), Cvoid, (Ptr{VlSvm}, VlSvmLossFunction), self, f)
end

function vl_svm_set_conjugate_loss_function(self, f)
    return ccall((:vl_svm_set_conjugate_loss_function, libvl), Cvoid, (Ptr{VlSvm}, VlSvmLossFunction), self, f)
end

# typedef double ( * VlSvmDcaUpdateFunction ) ( double alpha , double inner , double norm2 , double label )
const VlSvmDcaUpdateFunction = Ptr{Cvoid}

function vl_svm_set_dca_update_function(self, f)
    return ccall((:vl_svm_set_dca_update_function, libvl), Cvoid, (Ptr{VlSvm}, VlSvmDcaUpdateFunction), self, f)
end

# typedef double ( * VlSvmInnerProductFunction ) ( const void * data , vl_uindex element , double * model )
const VlSvmInnerProductFunction = Ptr{Cvoid}

# typedef void ( * VlSvmAccumulateFunction ) ( const void * data , vl_uindex element , double * model , double multiplier )
const VlSvmAccumulateFunction = Ptr{Cvoid}

function vl_svm_set_data_functions(self, inner, acc)
    return ccall(
        (:vl_svm_set_data_functions, libvl), Cvoid, (Ptr{VlSvm}, VlSvmInnerProductFunction, VlSvmAccumulateFunction), self, inner, acc
    )
end

function vl_svm_set_loss(self, loss)
    return ccall((:vl_svm_set_loss, libvl), Cvoid, (Ptr{VlSvm}, VlSvmLossType), self, loss)
end

function vl_svm_train(self)
    return ccall((:vl_svm_train, libvl), Cvoid, (Ptr{VlSvm},), self)
end

function vl_svm_hinge_loss(label, inner)
    return ccall((:vl_svm_hinge_loss, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_hinge_loss_derivative(label, inner)
    return ccall((:vl_svm_hinge_loss_derivative, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_hinge_conjugate_loss(label, u)
    return ccall((:vl_svm_hinge_conjugate_loss, libvl), Cdouble, (Cdouble, Cdouble), label, u)
end

function vl_svm_hinge_dca_update(alpha, inner, norm2, label)
    return ccall((:vl_svm_hinge_dca_update, libvl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), alpha, inner, norm2, label)
end

function vl_svm_hinge2_loss(label, inner)
    return ccall((:vl_svm_hinge2_loss, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_hinge2_loss_derivative(label, inner)
    return ccall((:vl_svm_hinge2_loss_derivative, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_hinge2_conjugate_loss(label, u)
    return ccall((:vl_svm_hinge2_conjugate_loss, libvl), Cdouble, (Cdouble, Cdouble), label, u)
end

function vl_svm_hinge2_dca_update(alpha, inner, norm2, label)
    return ccall((:vl_svm_hinge2_dca_update, libvl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), alpha, inner, norm2, label)
end

function vl_svm_l1_loss(label, inner)
    return ccall((:vl_svm_l1_loss, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_l1_loss_derivative(label, inner)
    return ccall((:vl_svm_l1_loss_derivative, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_l1_conjugate_loss(label, u)
    return ccall((:vl_svm_l1_conjugate_loss, libvl), Cdouble, (Cdouble, Cdouble), label, u)
end

function vl_svm_l1_dca_update(alpha, inner, norm2, label)
    return ccall((:vl_svm_l1_dca_update, libvl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), alpha, inner, norm2, label)
end

function vl_svm_l2_loss(label, inner)
    return ccall((:vl_svm_l2_loss, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_l2_loss_derivative(label, inner)
    return ccall((:vl_svm_l2_loss_derivative, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_l2_conjugate_loss(label, u)
    return ccall((:vl_svm_l2_conjugate_loss, libvl), Cdouble, (Cdouble, Cdouble), label, u)
end

function vl_svm_l2_dca_update(alpha, inner, norm2, label)
    return ccall((:vl_svm_l2_dca_update, libvl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), alpha, inner, norm2, label)
end

function vl_svm_logistic_loss(label, inner)
    return ccall((:vl_svm_logistic_loss, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_logistic_loss_derivative(label, inner)
    return ccall((:vl_svm_logistic_loss_derivative, libvl), Cdouble, (Cdouble, Cdouble), label, inner)
end

function vl_svm_logistic_conjugate_loss(label, u)
    return ccall((:vl_svm_logistic_conjugate_loss, libvl), Cdouble, (Cdouble, Cdouble), label, u)
end

function vl_svm_logistic_dca_update(alpha, inner, norm2, label)
    return ccall((:vl_svm_logistic_dca_update, libvl), Cdouble, (Cdouble, Cdouble, Cdouble, Cdouble), alpha, inner, norm2, label)
end

function vl_svmdataset_new(dataType, data, dimension, numData)
    return ccall(
        (:vl_svmdataset_new, libvl), Ptr{VlSvmDataset}, (vl_type, Ptr{Cvoid}, vl_size, vl_size), dataType, data, dimension, numData
    )
end

function vl_svmdataset_delete(dataset)
    return ccall((:vl_svmdataset_delete, libvl), Cvoid, (Ptr{VlSvmDataset},), dataset)
end

function vl_svmdataset_set_homogeneous_kernel_map(self, hom)
    return ccall((:vl_svmdataset_set_homogeneous_kernel_map, libvl), Cvoid, (Ptr{VlSvmDataset}, Ptr{VlHomogeneousKernelMap}), self, hom)
end

function vl_svmdataset_get_data(self)
    return ccall((:vl_svmdataset_get_data, libvl), Ptr{Cvoid}, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_num_data(self)
    return ccall((:vl_svmdataset_get_num_data, libvl), vl_size, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_dimension(self)
    return ccall((:vl_svmdataset_get_dimension, libvl), vl_size, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_map(self)
    return ccall((:vl_svmdataset_get_map, libvl), Ptr{Cvoid}, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_mapDim(self)
    return ccall((:vl_svmdataset_get_mapDim, libvl), vl_size, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_accumulate_function(self)
    return ccall((:vl_svmdataset_get_accumulate_function, libvl), VlSvmAccumulateFunction, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_inner_product_function(self)
    return ccall((:vl_svmdataset_get_inner_product_function, libvl), VlSvmInnerProductFunction, (Ptr{VlSvmDataset},), self)
end

function vl_svmdataset_get_homogeneous_kernel_map(self)
    return ccall((:vl_svmdataset_get_homogeneous_kernel_map, libvl), Ptr{VlHomogeneousKernelMap}, (Ptr{VlSvmDataset},), self)
end

function vl_vlad_encode(enc, dataType, means, dimension, numClusters, data, numData, assignments, flags)
    return ccall(
        (:vl_vlad_encode, libvl),
        Cvoid,
        (Ptr{Cvoid}, vl_type, Ptr{Cvoid}, vl_size, vl_size, Ptr{Cvoid}, vl_size, Ptr{Cvoid}, Cint),
        enc,
        dataType,
        means,
        dimension,
        numClusters,
        data,
        numData,
        assignments,
        flags,
    )
end

const VL_ARRAY_MAX_NUM_DIMENSIONS = 16

const VL_FISHER_FLAG_SQUARE_ROOT = 0x01 << 0

const VL_FISHER_FLAG_NORMALIZED = 0x01 << 1

const VL_FISHER_FLAG_IMPROVED = VL_FISHER_FLAG_NORMALIZED | VL_FISHER_FLAG_SQUARE_ROOT

const VL_FISHER_FLAG_FAST = 0x01 << 2

const VL_VERSION_STRING = "0.9.21"

const VL_ERR_MSG_LEN = 1024

const VL_TYPE_FLOAT = 1

const VL_TYPE_DOUBLE = 2

const VL_TYPE_INT8 = 3

const VL_TYPE_UINT8 = 4

const VL_TYPE_INT16 = 5

const VL_TYPE_UINT16 = 6

const VL_TYPE_INT32 = 7

const VL_TYPE_UINT32 = 8

const VL_TYPE_INT64 = 9

const VL_TYPE_UINT64 = 10

const VL_ERR_OK = 0

const VL_ERR_OVERFLOW = 1

const VL_ERR_ALLOC = 2

const VL_ERR_BAD_ARG = 3

const VL_ERR_IO = 4

const VL_ERR_EOF = 5

const VL_ERR_NO_MORE = 5

# const VL_PRINTF = ((*)(vl_get_printf_func))()

# const VL_PRINT = ((*)(vl_get_printf_func))()

const no_argument = 0

const required_argument = 1

const optional_argument = 2

# const VL_HEAP_array = Ptr{VL_HEAP_type}

# const VL_HEAP_array_const = Ptr{VL_HEAP_type}

# const VL_HEAP_cmp = VL_XCAT(VL_HEAP_prefix, _cmp)

# const VL_HEAP_swap = VL_XCAT(VL_HEAP_prefix, _swap)

# const VL_HEAP_up = VL_XCAT(VL_HEAP_prefix, _up)

# const VL_HEAP_down = VL_XCAT(VL_HEAP_prefix, _down)

# const VL_HEAP_push = VL_XCAT(VL_HEAP_prefix, _push)

# const VL_HEAP_pop = VL_XCAT(VL_HEAP_prefix, _pop)

# const VL_HEAP_update = VL_XCAT(VL_HEAP_prefix, _update)

const VL_OS_MACOSX = 1

const VL_THREADS_POSIX = 1

# const VL_COMPILER_GNUC = (((__GNUC__ * 10000) \ +__GNUC_MINOR__) * 100) \ +__GNUC_PATCHLEVEL__

# Skipping MacroDefinition: VL_UNUSED __attribute__ ( ( unused ) )

# Skipping MacroDefinition: VL_INLINE static __inline__

# Skipping MacroDefinition: VL_EXPORT extern

const VL_TRUE = 1

const VL_FALSE = 0

const VL_FL_INT64 = "ll"

const VL_FL_INT32 = ""

const VL_FL_INT16 = "h"

const VL_FL_INT8 = "hh"

const VL_FL_INDEX = VL_FL_INT64

# const VL_FMT_INDEX = VL_FL_INDEX("d")

# const VL_FMT_INTPTR = VL_FMT_INDEX

# const VL_FMT_UINDEX = VL_FL_INDEX("u")

# const VL_FMT_SIZE = VL_FMT_UINDEX

# const VL_FMT_UINTPTR = VL_FMT_UINDEX

const VL_BIG_INT = Clong(0x7fffffff)

const VL_SMALL_INT = -VL_BIG_INT - 1

const VL_BIG_UINT = Culong(0xffffffff)

const VL_IKMACC_MAX = Culong(0x7fffffff)

const VL_PAD_BY_ZERO = 0x00 << 0

const VL_PAD_BY_CONTINUITY = 0x01 << 0

const VL_PAD_MASK = 0x03

const VL_TRANSPOSE = 0x01 << 2

const VL_KDTREE_SPLIT_HEAP_SIZE = 5

const VL_KDTREE_VARIANCE_EST_NUM_SAMPLES = 1024

const VL_E = 2.718281828459045

const VL_LOG_OF_2 = 0.693147180559945

const VL_PI = 3.141592653589793

const VL_EPSILON_F = Float32(1.1920929e-7)

const VL_EPSILON_D = 2.220446049250313e-16

# Skipping MacroDefinition: VL_NAN_F ( vl_nan_f . value )

# Skipping MacroDefinition: VL_INFINITY_F ( vl_infinity_f . value )

# Skipping MacroDefinition: VL_NAN_D ( vl_nan_d . value )

# Skipping MacroDefinition: VL_INFINITY_D ( vl_infinity_d . value )

const FLT = VL_TYPE_DOUBLE

const T = Float64

# const SFX = d

const VSIZE = 2

# const VSFX = d

# const VTYPE = __m128d

# const VMAX = VL_XCAT(_mm_max_p, VSFX)

# const VMUL = VL_XCAT(_mm_mul_p, VSFX)

# const VDIV = VL_XCAT(_mm_div_p, VSFX)

# const VADD = VL_XCAT(_mm_add_p, VSFX)

# const VSUB = VL_XCAT(_mm_sub_p, VSFX)

# const VSTZ = VL_XCAT(_mm_setzero_p, VSFX)

# const VLD1 = VL_XCAT(_mm_load1_p, VSFX)

# const VLDU = VL_XCAT(_mm_loadu_p, VSFX)

# const VST1 = VL_XCAT(_mm_store_s, VSFX)

# const VSET1 = VL_XCAT(_mm_set_s, VSFX)

# const VSHU = VL_XCAT(_mm_shuffle_p, VSFX)

# const VNEQ = VL_XCAT(_mm_cmpneq_p, VSFX)

# const VAND = VL_XCAT(_mm_and_p, VSFX)

# const VANDN = VL_XCAT(_mm_andnot_p, VSFX)

# const VST2 = VL_XCAT(_mm_store_p, VSFX)

# const VST2U = VL_XCAT(_mm_storeu_p, VSFX)

const VL_MSER_PIX_MAXVAL = 256

const VL_MSER_VOID_NODE = Culonglong(1) << 32 - 1

const VL_ERR_PGM_INV_HEAD = 101

const VL_ERR_PGM_INV_META = 102

const VL_ERR_PGM_INV_DATA = 103

const VL_ERR_PGM_IO = 104

# const VL_QSORT_array = Ptr{VL_QSORT_type}

# const VL_QSORT_array_const = Ptr{VL_QSORT_type}

# const VL_QSORT_cmp = VL_XCAT(VL_QSORT_prefix, _cmp)

# const VL_QSORT_swap = VL_XCAT(VL_QSORT_prefix, _swap)

# const VL_QSORT_sort_recursive = VL_XCAT(VL_QSORT_prefix, _sort_recursive)

# const VL_QSORT_sort = VL_XCAT(VL_QSORT_prefix, _sort)

# const VL_QS_INF = VL_INFINITY_D

# const VL_SHUFFLE_array = Ptr{VL_SHUFFLE_type}

# const VL_SHUFFLE_swap = VL_XCAT(VL_SHUFFLE_prefix, _swap)

# const VL_SHUFFLE_shuffle = VL_XCAT(VL_SHUFFLE_prefix, _shuffle)

const VL_VLAD_FLAG_NORMALIZE_COMPONENTS = 0x01 << 0

const VL_VLAD_FLAG_SQUARE_ROOT = 0x01 << 1

const VL_VLAD_FLAG_UNNORMALIZED = 0x01 << 2

const VL_VLAD_FLAG_NORMALIZE_MASS = 0x01 << 3

# exports
const PREFIXES = ["VL_", "vl_", "Vl"]
for name in names(@__MODULE__; all = true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
