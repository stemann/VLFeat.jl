
import Base.zero


export
    VL_VERSION_STRING,
    VL_ERR_MSG_LEN,
    VL_TYPE_FLOAT,
    VL_TYPE_DOUBLE,
    VL_TYPE_INT8,
    VL_TYPE_UINT8,
    VL_TYPE_INT16,
    VL_TYPE_UINT16,
    VL_TYPE_INT32,
    VL_TYPE_UINT32,
    VL_TYPE_INT64,
    VL_TYPE_UINT64,
    VL_ERR_OK,
    VL_ERR_OVERFLOW,
    VL_ERR_ALLOC,
    VL_ERR_BAD_ARG,
    VL_ERR_IO,
    VL_ERR_EOF,
    VL_ERR_NO_MORE,
    vl_uint32,
    vl_type,
    printf_func_t,
    ANONYMOUS_1,
    VlHomogeneousKernelIntersection,
    VlHomogeneousKernelChi2,
    VlHomogeneousKernelJS,
    VlHomogeneousKernelType,
    VlHomogeneousKernelIntersection,
    VlHomogeneousKernelChi2,
    VlHomogeneousKernelJS,
    ANONYMOUS_2,
    VlHomogeneousKernelMapWindowUniform,
    VlHomogeneousKernelMapWindowRectangular,
    VlHomogeneousKernelMapWindowType,
    VlHomogeneousKernelMapWindowUniform,
    VlHomogeneousKernelMapWindowRectangular,
    _VlHomogeneousKernelMap,
    VlHomogeneousKernelMap,
    VL_OS_LINUX,
    VL_THREADS_POSIX,
    VL_TRUE,
    VL_FALSE,
    VL_FL_INT64,
    VL_FL_INT32,
    VL_FL_INT16,
    VL_FL_INT8,
    VL_FL_INDEX,
    VL_FMT_INDEX,
    VL_FMT_INTPTR,
    VL_FMT_UINDEX,
    VL_FMT_SIZE,
    VL_FMT_UINTPTR,
    VL_BIG_INT,
    VL_SMALL_INT,
    VL_BIG_UINT,
    vl_int64,
    vl_int32,
    vl_int16,
    vl_int8,
    vl_uint64,
    vl_uint16,
    vl_uint8,
    vl_int,
    vl_uint,
    vl_bool,
    vl_intptr,
    vl_uintptr,
    vl_size,
    vl_index,
    vl_uindex,
    _VlX86CpuInfo,
    VlX86CpuInfo,
    VL_IKMACC_MAX,
    vl_ikmacc_t,
    VlIKMAlgorithms,
    VL_IKM_LLOYD,
    VL_IKM_ELKAN,
    _VlIKMFilt,
    VlIKMFilt,
    VL_PAD_BY_ZERO,
    VL_PAD_BY_CONTINUITY,
    VL_PAD_MASK,
    VL_TRANSPOSE,
    VL_KDTREE_SPLIT_HEAP_SIZE,
    VL_KDTREE_VARIANCE_EST_NUM_SAMPLES,
    _VlKDTreeNode,
    VlKDTreeNode,
    _VlKDTreeSplitDimension,
    VlKDTreeSplitDimension,
    _VlKDTreeDataIndexEntry,
    VlKDTreeDataIndexEntry,
    VlKDTree,
    _VlKDForestSearchState,
    VlKDForestSearchState,
    _VlKDTreeThresholdingMethod,
    VL_KDTREE_MEDIAN,
    VL_KDTREE_MEAN,
    VlKDTreeThresholdingMethod,
    VL_KDTREE_MEDIAN,
    VL_KDTREE_MEAN,
    _VlKDForestNeighbor,
    VlKDForestNeighbor,
    _VlKDTree,
    Array_624_vl_uint32,
    VlRand,
    _VlVectorComparisonType,
    VlDistanceL1,
    VlDistanceL2,
    VlDistanceChi2,
    VlDistanceHellinger,
    VlDistanceJS,
    VlDistanceMahalanobis,
    VlKernelL1,
    VlKernelL2,
    VlKernelChi2,
    VlKernelHellinger,
    VlKernelJS,
    VlVectorComparisonType,
    Array_5_VlKDTreeSplitDimension,
    VlKDForest,
    _VlKDForestSearcher,
    _VlKDForest,
    VlKDForestSearcher,
    _VlKMeansAlgorithm,
    VlKMeansLloyd,
    VlKMeansElkan,
    VlKMeansANN,
    VlKMeansAlgorithm,
    VlKMeansLloyd,
    VlKMeansElkan,
    VlKMeansANN,
    _VlKMeansInitialization,
    VlKMeansRandomSelection,
    VlKMeansPlusPlus,
    VlKMeansInitialization,
    VlKMeansRandomSelection,
    VlKMeansPlusPlus,
    VlDoubleVectorComparisonFunction,
    _VlKMeans,
    VlKMeans,
    FLT,
    VL_E,
    VL_LOG_OF_2,
    VL_PI,
    VL_EPSILON_F,
    VL_EPSILON_D,
    VlFloatVector3ComparisonFunction,
    VlDoubleVector3ComparisonFunction,
    _VlRand,
    _VlScaleSpaceGeometry,
    VlScaleSpaceGeometry,
    _VlScaleSpaceOctaveGeometry,
    VlScaleSpaceOctaveGeometry,
    _VlScaleSpace,
    VlScaleSpace,
    ANONYMOUS_3,
    VL_PROT_UNKNOWN,
    VL_PROT_NONE,
    VL_PROT_ASCII,
    VL_PROT_BINARY,
    _VlEnumerator,
    VlEnumerator,
    VlSvm_,
    VlSvmDataset_,
    VlSvmDataset,
    VlSvmDiagnosticFunction,
    VlSvmLossFunction,
    VlSvmDcaUpdateFunction,
    VlSvmInnerProductFunction,
    VlSvmAccumulateFunction,
    _VlAIB,
    VlAIB,
    VL_ARRAY_MAX_NUM_DIMENSIONS,
    Array_16_vl_size,
    _VlArray,
    VlArray,
    _VlFrameType,
    VL_FRAMETYPE_DISC,
    VL_FRAMETYPE_ORIENTED_DISC,
    VL_FRAMETYPE_ELLIPSE,
    VL_FRAMETYPE_ORIENTED_ELLIPSE,
    VL_FRAMETYPE_NUM,
    VlFrameType,
    VL_FRAMETYPE_DISC,
    VL_FRAMETYPE_ORIENTED_DISC,
    VL_FRAMETYPE_ELLIPSE,
    VL_FRAMETYPE_ORIENTED_ELLIPSE,
    VL_FRAMETYPE_NUM,
    _VlFrameDisc,
    VlFrameDisc,
    _VlFrameOrientedDisc,
    VlFrameOrientedDisc,
    _VlFrameEllipse,
    VlFrameEllipse,
    _VlFrameOrientedEllipse,
    VlFrameOrientedEllipse,
    _VlCovDetFeatureOrientation,
    VlCovDetFeatureOrientation,
    _VlCovDetFeatureLaplacianScale,
    VlCovDetFeatureLaplacianScale,
    _VlCovDetMethod,
    VL_COVDET_METHOD_DOG,
    VL_COVDET_METHOD_HESSIAN,
    VL_COVDET_METHOD_HESSIAN_LAPLACE,
    VL_COVDET_METHOD_HARRIS_LAPLACE,
    VL_COVDET_METHOD_MULTISCALE_HESSIAN,
    VL_COVDET_METHOD_MULTISCALE_HARRIS,
    VL_COVDET_METHOD_NUM,
    VlCovDetMethod,
    VL_COVDET_METHOD_DOG,
    VL_COVDET_METHOD_HESSIAN,
    VL_COVDET_METHOD_HESSIAN_LAPLACE,
    VL_COVDET_METHOD_HARRIS_LAPLACE,
    VL_COVDET_METHOD_MULTISCALE_HESSIAN,
    VL_COVDET_METHOD_MULTISCALE_HARRIS,
    VL_COVDET_METHOD_NUM,
    _VlCovDet,
    VlCovDet,
    VlDsiftKeypoint_,
    VlDsiftKeypoint,
    VlDsiftDescriptorGeometry_,
    VlDsiftDescriptorGeometry,
    VlDsiftFilter_,
    VlDsiftFilter,
    VL_FISHER_FLAG_SQUARE_ROOT,
    VL_FISHER_FLAG_NORMALIZED,
    VL_FISHER_FLAG_IMPROVED,
    VL_FISHER_FLAG_FAST,
    no_argument,
    required_argument,
    optional_argument,
    option,
    _VlGMM,
    VlGMM,
    VL_HEAP_array,
    _VLHIKMTree,
    _VLHIKMNode,
    _VlHIKMNode,
    VlHIKMNode,
    _VlHIKMTree,
    VlHIKMTree,
    VlHogVariant_,
    VlHogVariantDalalTriggs,
    VlHogVariantUoctti,
    VlHogVariant,
    VlHog_,
    VlHog,
    _VlLbpMappingType,
    VlLbpUniform,
    VlLbpMappingType,
    VlLbpUniform,
    Array_256_vl_uint8,
    VlLbp_,
    VlLbp,
    _VlLiopDesc,
    VlLiopDesc,
    VL_MSER_PIX_MAXVAL,
    vl_mser_pix,
    _VlMserReg,
    VlMserReg,
    _VlMserExtrReg,
    VlMserExtrReg,
    _VlMserStats,
    VlMserStats,
    _VlMserFilt,
    VlMserFilt,
    vl_mser_acc,
    VL_ERR_PGM_INV_HEAD,
    VL_ERR_PGM_INV_META,
    VL_ERR_PGM_INV_DATA,
    VL_ERR_PGM_IO,
    _VlPgmImage,
    VlPgmImage,
    VL_QSORT_array,
    VL_QS_INF,
    vl_qs_type,
    _VlQS,
    VlQS,
    VL_SHUFFLE_array,
    vl_sift_pix,
    _VlSiftKeypoint,
    VlSiftKeypoint,
    _VlSiftFilt,
    VlSiftFilt,
    VlSvm,
    ANONYMOUS_4,
    VlSvmSolverNone,
    VlSvmSolverSgd,
    VlSvmSolverSdca,
    VlSvmSolverType,
    VlSvmSolverNone,
    VlSvmSolverSgd,
    VlSvmSolverSdca,
    ANONYMOUS_5,
    VlSvmLossHinge,
    VlSvmLossHinge2,
    VlSvmLossL1,
    VlSvmLossL2,
    VlSvmLossLogistic,
    VlSvmLossType,
    VlSvmLossHinge,
    VlSvmLossHinge2,
    VlSvmLossL1,
    VlSvmLossL2,
    VlSvmLossLogistic,
    ANONYMOUS_6,
    VlSvmStatusTraining,
    VlSvmStatusConverged,
    VlSvmStatusMaxNumIterationsReached,
    VlSvmSolverStatus,
    VlSvmStatusTraining,
    VlSvmStatusConverged,
    VlSvmStatusMaxNumIterationsReached,
    VlSvmStatistics_,
    VlSvmStatistics,
    VL_VLAD_FLAG_NORMALIZE_COMPONENTS,
    VL_VLAD_FLAG_SQUARE_ROOT,
    VL_VLAD_FLAG_UNNORMALIZED,
    VL_VLAD_FLAG_NORMALIZE_MASS


const VL_VERSION_STRING = "0.9.18"
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

# Skipping MacroDefinition: VL_PRINTF ( * vl_get_printf_func ( ) )
# Skipping MacroDefinition: VL_PRINT ( * vl_get_printf_func ( ) )
# Skipping MacroDefinition: VL_MIN ( x , y ) ( ( ( x ) < ( y ) ) ? ( x ) : ( y ) )
# Skipping MacroDefinition: VL_MAX ( x , y ) ( ( ( x ) > ( y ) ) ? ( x ) : ( y ) )
# Skipping MacroDefinition: VL_SHIFT_LEFT ( x , n ) ( ( ( n ) >= 0 ) ? ( ( x ) << ( n ) ) : ( ( x ) >> - ( n ) ) )

typealias vl_uint32 Uint32
typealias vl_type vl_uint32
typealias printf_func_t Ptr{Void}

# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 Uint32
const VlHomogeneousKernelIntersection = (uint32)(0)
const VlHomogeneousKernelChi2 = (uint32)(1)
const VlHomogeneousKernelJS = (uint32)(2)
# end enum ANONYMOUS_1

# begin enum VlHomogeneousKernelType
typealias VlHomogeneousKernelType Uint32
const VlHomogeneousKernelIntersection = (uint32)(0)
const VlHomogeneousKernelChi2 = (uint32)(1)
const VlHomogeneousKernelJS = (uint32)(2)
# end enum VlHomogeneousKernelType

# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 Uint32
const VlHomogeneousKernelMapWindowUniform = (uint32)(0)
const VlHomogeneousKernelMapWindowRectangular = (uint32)(1)
# end enum ANONYMOUS_2

# begin enum VlHomogeneousKernelMapWindowType
typealias VlHomogeneousKernelMapWindowType Uint32
const VlHomogeneousKernelMapWindowUniform = (uint32)(0)
const VlHomogeneousKernelMapWindowRectangular = (uint32)(1)
# end enum VlHomogeneousKernelMapWindowType

typealias _VlHomogeneousKernelMap Void
typealias VlHomogeneousKernelMap Void

# Skipping MacroDefinition: VL_STRINGIFY ( x ) # x
# Skipping MacroDefinition: VL_XSTRINGIFY ( x ) VL_STRINGIFY ( x )
# Skipping MacroDefinition: VL_CAT ( x , y ) x ## y
# Skipping MacroDefinition: VL_XCAT ( x , y ) VL_CAT ( x , y )
# Skipping MacroDefinition: VL_XCAT3 ( x , y , z ) VL_XCAT ( VL_XCAT ( x , y ) , z )
# Skipping MacroDefinition: VL_XCAT4 ( x , y , z , u ) VL_XCAT ( VL_XCAT3 ( x , y , z ) , u )
# Skipping MacroDefinition: VL_XCAT5 ( x , y , z , u , v ) VL_XCAT ( VL_XCAT4 ( x , y , z , u ) , v )
# Skipping MacroDefinition: VL_YESNO ( x ) ( ( x ) ? "yes" : "no" )

const VL_OS_LINUX = 1
const VL_THREADS_POSIX = 1
const VL_TRUE = 1
const VL_FALSE = 0

# Skipping MacroDefinition: VL_INT8_C ( x ) x
# Skipping MacroDefinition: VL_INT16_C ( x ) x
# Skipping MacroDefinition: VL_INT32_C ( x ) x
# Skipping MacroDefinition: VL_INT64_C ( x ) x ## L
# Skipping MacroDefinition: VL_UINT8_C ( x ) x
# Skipping MacroDefinition: VL_UINT16_C ( x ) x
# Skipping MacroDefinition: VL_UINT32_C ( x ) x ## U
# Skipping MacroDefinition: VL_UINT64_C ( x ) x ## UL

const VL_FL_INT64 = "ll"
const VL_FL_INT32 = ""
const VL_FL_INT16 = "h"
const VL_FL_INT8 = "hh"
const VL_FL_INDEX = VL_FL_INT64
const VL_FMT_INDEX = VL_FL_INDEX
const VL_FMT_INTPTR = VL_FMT_INDEX
const VL_FMT_UINDEX = VL_FL_INDEX
const VL_FMT_SIZE = VL_FMT_UINDEX
const VL_FMT_UINTPTR = VL_FMT_UINDEX
const VL_BIG_INT = 0x7fffffff
const VL_SMALL_INT = -VL_BIG_INT - 1
const VL_BIG_UINT = 0xffffffff

typealias vl_int64 Clonglong
typealias vl_int32 Cint
typealias vl_int16 Int16
typealias vl_int8 Uint8
typealias vl_uint64 Culonglong
typealias vl_uint16 Uint16
typealias vl_uint8 Cuchar
typealias vl_int Cint
typealias vl_uint Uint32
typealias vl_bool Cint
typealias vl_intptr vl_int64
typealias vl_uintptr vl_uint64
typealias vl_size vl_uint64
typealias vl_index vl_int64
typealias vl_uindex vl_uint64

type _VlX86CpuInfo
    vendor::Void
    hasAVX::vl_bool
    hasSSE42::vl_bool
    hasSSE41::vl_bool
    hasSSE3::vl_bool
    hasSSE2::vl_bool
    hasSSE::vl_bool
    hasMMX::vl_bool
end

type VlX86CpuInfo
    vendor::Void
    hasAVX::vl_bool
    hasSSE42::vl_bool
    hasSSE41::vl_bool
    hasSSE3::vl_bool
    hasSSE2::vl_bool
    hasSSE::vl_bool
    hasMMX::vl_bool
end

const VL_IKMACC_MAX = 0x7fffffff

typealias vl_ikmacc_t vl_int32

# begin enum VlIKMAlgorithms
typealias VlIKMAlgorithms Uint32
const VL_IKM_LLOYD = (uint32)(0)
const VL_IKM_ELKAN = (uint32)(1)
# end enum VlIKMAlgorithms

type _VlIKMFilt
    M::vl_size
    K::vl_size
    max_niters::vl_size
    method::Cint
    verb::Cint
    centers::Ptr{vl_ikmacc_t}
    inter_dist::Ptr{vl_ikmacc_t}
end

type VlIKMFilt
    M::vl_size
    K::vl_size
    max_niters::vl_size
    method::Cint
    verb::Cint
    centers::Ptr{vl_ikmacc_t}
    inter_dist::Ptr{vl_ikmacc_t}
end

const VL_PAD_BY_ZERO = 0x00 << 0
const VL_PAD_BY_CONTINUITY = 0x01 << 0
const VL_PAD_MASK = 0x03
const VL_TRANSPOSE = 0x01 << 2
const VL_KDTREE_SPLIT_HEAP_SIZE = 5
const VL_KDTREE_VARIANCE_EST_NUM_SAMPLES = 1024

type _VlKDTreeNode
    parent::vl_uindex
    lowerChild::vl_index
    upperChild::vl_index
    splitDimension::Uint32
    splitThreshold::Cdouble
    lowerBound::Cdouble
    upperBound::Cdouble
end

typealias VlKDTreeNode _VlKDTreeNode

type _VlKDTreeSplitDimension
    dimension::Uint32
    mean::Cdouble
    variance::Cdouble
end

typealias VlKDTreeSplitDimension _VlKDTreeSplitDimension

type _VlKDTreeDataIndexEntry
    index::vl_index
    value::Cdouble
end

typealias VlKDTreeDataIndexEntry _VlKDTreeDataIndexEntry

type VlKDTree
    nodes::Ptr{VlKDTreeNode}
    numUsedNodes::vl_size
    numAllocatedNodes::vl_size
    dataIndex::Ptr{VlKDTreeDataIndexEntry}
    depth::Uint32
end

type _VlKDForestSearchState
    tree::Ptr{VlKDTree}
    nodeIndex::vl_uindex
    distanceLowerBound::Cdouble
end

typealias VlKDForestSearchState _VlKDForestSearchState

# begin enum _VlKDTreeThresholdingMethod
typealias _VlKDTreeThresholdingMethod Uint32
const VL_KDTREE_MEDIAN = (uint32)(0)
const VL_KDTREE_MEAN = (uint32)(1)
# end enum _VlKDTreeThresholdingMethod

# begin enum VlKDTreeThresholdingMethod
typealias VlKDTreeThresholdingMethod Uint32
const VL_KDTREE_MEDIAN = (uint32)(0)
const VL_KDTREE_MEAN = (uint32)(1)
# end enum VlKDTreeThresholdingMethod

type _VlKDForestNeighbor
    distance::Cdouble
    index::vl_uindex
end

type VlKDForestNeighbor
    distance::Cdouble
    index::vl_uindex
end

type _VlKDTree
    nodes::Ptr{VlKDTreeNode}
    numUsedNodes::vl_size
    numAllocatedNodes::vl_size
    dataIndex::Ptr{VlKDTreeDataIndexEntry}
    depth::Uint32
end

immutable Array_624_vl_uint32
    d1::vl_uint32
    d2::vl_uint32
    d3::vl_uint32
    d4::vl_uint32
    d5::vl_uint32
    d6::vl_uint32
    d7::vl_uint32
    d8::vl_uint32
    d9::vl_uint32
    d10::vl_uint32
    d11::vl_uint32
    d12::vl_uint32
    d13::vl_uint32
    d14::vl_uint32
    d15::vl_uint32
    d16::vl_uint32
    d17::vl_uint32
    d18::vl_uint32
    d19::vl_uint32
    d20::vl_uint32
    d21::vl_uint32
    d22::vl_uint32
    d23::vl_uint32
    d24::vl_uint32
    d25::vl_uint32
    d26::vl_uint32
    d27::vl_uint32
    d28::vl_uint32
    d29::vl_uint32
    d30::vl_uint32
    d31::vl_uint32
    d32::vl_uint32
    d33::vl_uint32
    d34::vl_uint32
    d35::vl_uint32
    d36::vl_uint32
    d37::vl_uint32
    d38::vl_uint32
    d39::vl_uint32
    d40::vl_uint32
    d41::vl_uint32
    d42::vl_uint32
    d43::vl_uint32
    d44::vl_uint32
    d45::vl_uint32
    d46::vl_uint32
    d47::vl_uint32
    d48::vl_uint32
    d49::vl_uint32
    d50::vl_uint32
    d51::vl_uint32
    d52::vl_uint32
    d53::vl_uint32
    d54::vl_uint32
    d55::vl_uint32
    d56::vl_uint32
    d57::vl_uint32
    d58::vl_uint32
    d59::vl_uint32
    d60::vl_uint32
    d61::vl_uint32
    d62::vl_uint32
    d63::vl_uint32
    d64::vl_uint32
    d65::vl_uint32
    d66::vl_uint32
    d67::vl_uint32
    d68::vl_uint32
    d69::vl_uint32
    d70::vl_uint32
    d71::vl_uint32
    d72::vl_uint32
    d73::vl_uint32
    d74::vl_uint32
    d75::vl_uint32
    d76::vl_uint32
    d77::vl_uint32
    d78::vl_uint32
    d79::vl_uint32
    d80::vl_uint32
    d81::vl_uint32
    d82::vl_uint32
    d83::vl_uint32
    d84::vl_uint32
    d85::vl_uint32
    d86::vl_uint32
    d87::vl_uint32
    d88::vl_uint32
    d89::vl_uint32
    d90::vl_uint32
    d91::vl_uint32
    d92::vl_uint32
    d93::vl_uint32
    d94::vl_uint32
    d95::vl_uint32
    d96::vl_uint32
    d97::vl_uint32
    d98::vl_uint32
    d99::vl_uint32
    d100::vl_uint32
    d101::vl_uint32
    d102::vl_uint32
    d103::vl_uint32
    d104::vl_uint32
    d105::vl_uint32
    d106::vl_uint32
    d107::vl_uint32
    d108::vl_uint32
    d109::vl_uint32
    d110::vl_uint32
    d111::vl_uint32
    d112::vl_uint32
    d113::vl_uint32
    d114::vl_uint32
    d115::vl_uint32
    d116::vl_uint32
    d117::vl_uint32
    d118::vl_uint32
    d119::vl_uint32
    d120::vl_uint32
    d121::vl_uint32
    d122::vl_uint32
    d123::vl_uint32
    d124::vl_uint32
    d125::vl_uint32
    d126::vl_uint32
    d127::vl_uint32
    d128::vl_uint32
    d129::vl_uint32
    d130::vl_uint32
    d131::vl_uint32
    d132::vl_uint32
    d133::vl_uint32
    d134::vl_uint32
    d135::vl_uint32
    d136::vl_uint32
    d137::vl_uint32
    d138::vl_uint32
    d139::vl_uint32
    d140::vl_uint32
    d141::vl_uint32
    d142::vl_uint32
    d143::vl_uint32
    d144::vl_uint32
    d145::vl_uint32
    d146::vl_uint32
    d147::vl_uint32
    d148::vl_uint32
    d149::vl_uint32
    d150::vl_uint32
    d151::vl_uint32
    d152::vl_uint32
    d153::vl_uint32
    d154::vl_uint32
    d155::vl_uint32
    d156::vl_uint32
    d157::vl_uint32
    d158::vl_uint32
    d159::vl_uint32
    d160::vl_uint32
    d161::vl_uint32
    d162::vl_uint32
    d163::vl_uint32
    d164::vl_uint32
    d165::vl_uint32
    d166::vl_uint32
    d167::vl_uint32
    d168::vl_uint32
    d169::vl_uint32
    d170::vl_uint32
    d171::vl_uint32
    d172::vl_uint32
    d173::vl_uint32
    d174::vl_uint32
    d175::vl_uint32
    d176::vl_uint32
    d177::vl_uint32
    d178::vl_uint32
    d179::vl_uint32
    d180::vl_uint32
    d181::vl_uint32
    d182::vl_uint32
    d183::vl_uint32
    d184::vl_uint32
    d185::vl_uint32
    d186::vl_uint32
    d187::vl_uint32
    d188::vl_uint32
    d189::vl_uint32
    d190::vl_uint32
    d191::vl_uint32
    d192::vl_uint32
    d193::vl_uint32
    d194::vl_uint32
    d195::vl_uint32
    d196::vl_uint32
    d197::vl_uint32
    d198::vl_uint32
    d199::vl_uint32
    d200::vl_uint32
    d201::vl_uint32
    d202::vl_uint32
    d203::vl_uint32
    d204::vl_uint32
    d205::vl_uint32
    d206::vl_uint32
    d207::vl_uint32
    d208::vl_uint32
    d209::vl_uint32
    d210::vl_uint32
    d211::vl_uint32
    d212::vl_uint32
    d213::vl_uint32
    d214::vl_uint32
    d215::vl_uint32
    d216::vl_uint32
    d217::vl_uint32
    d218::vl_uint32
    d219::vl_uint32
    d220::vl_uint32
    d221::vl_uint32
    d222::vl_uint32
    d223::vl_uint32
    d224::vl_uint32
    d225::vl_uint32
    d226::vl_uint32
    d227::vl_uint32
    d228::vl_uint32
    d229::vl_uint32
    d230::vl_uint32
    d231::vl_uint32
    d232::vl_uint32
    d233::vl_uint32
    d234::vl_uint32
    d235::vl_uint32
    d236::vl_uint32
    d237::vl_uint32
    d238::vl_uint32
    d239::vl_uint32
    d240::vl_uint32
    d241::vl_uint32
    d242::vl_uint32
    d243::vl_uint32
    d244::vl_uint32
    d245::vl_uint32
    d246::vl_uint32
    d247::vl_uint32
    d248::vl_uint32
    d249::vl_uint32
    d250::vl_uint32
    d251::vl_uint32
    d252::vl_uint32
    d253::vl_uint32
    d254::vl_uint32
    d255::vl_uint32
    d256::vl_uint32
    d257::vl_uint32
    d258::vl_uint32
    d259::vl_uint32
    d260::vl_uint32
    d261::vl_uint32
    d262::vl_uint32
    d263::vl_uint32
    d264::vl_uint32
    d265::vl_uint32
    d266::vl_uint32
    d267::vl_uint32
    d268::vl_uint32
    d269::vl_uint32
    d270::vl_uint32
    d271::vl_uint32
    d272::vl_uint32
    d273::vl_uint32
    d274::vl_uint32
    d275::vl_uint32
    d276::vl_uint32
    d277::vl_uint32
    d278::vl_uint32
    d279::vl_uint32
    d280::vl_uint32
    d281::vl_uint32
    d282::vl_uint32
    d283::vl_uint32
    d284::vl_uint32
    d285::vl_uint32
    d286::vl_uint32
    d287::vl_uint32
    d288::vl_uint32
    d289::vl_uint32
    d290::vl_uint32
    d291::vl_uint32
    d292::vl_uint32
    d293::vl_uint32
    d294::vl_uint32
    d295::vl_uint32
    d296::vl_uint32
    d297::vl_uint32
    d298::vl_uint32
    d299::vl_uint32
    d300::vl_uint32
    d301::vl_uint32
    d302::vl_uint32
    d303::vl_uint32
    d304::vl_uint32
    d305::vl_uint32
    d306::vl_uint32
    d307::vl_uint32
    d308::vl_uint32
    d309::vl_uint32
    d310::vl_uint32
    d311::vl_uint32
    d312::vl_uint32
    d313::vl_uint32
    d314::vl_uint32
    d315::vl_uint32
    d316::vl_uint32
    d317::vl_uint32
    d318::vl_uint32
    d319::vl_uint32
    d320::vl_uint32
    d321::vl_uint32
    d322::vl_uint32
    d323::vl_uint32
    d324::vl_uint32
    d325::vl_uint32
    d326::vl_uint32
    d327::vl_uint32
    d328::vl_uint32
    d329::vl_uint32
    d330::vl_uint32
    d331::vl_uint32
    d332::vl_uint32
    d333::vl_uint32
    d334::vl_uint32
    d335::vl_uint32
    d336::vl_uint32
    d337::vl_uint32
    d338::vl_uint32
    d339::vl_uint32
    d340::vl_uint32
    d341::vl_uint32
    d342::vl_uint32
    d343::vl_uint32
    d344::vl_uint32
    d345::vl_uint32
    d346::vl_uint32
    d347::vl_uint32
    d348::vl_uint32
    d349::vl_uint32
    d350::vl_uint32
    d351::vl_uint32
    d352::vl_uint32
    d353::vl_uint32
    d354::vl_uint32
    d355::vl_uint32
    d356::vl_uint32
    d357::vl_uint32
    d358::vl_uint32
    d359::vl_uint32
    d360::vl_uint32
    d361::vl_uint32
    d362::vl_uint32
    d363::vl_uint32
    d364::vl_uint32
    d365::vl_uint32
    d366::vl_uint32
    d367::vl_uint32
    d368::vl_uint32
    d369::vl_uint32
    d370::vl_uint32
    d371::vl_uint32
    d372::vl_uint32
    d373::vl_uint32
    d374::vl_uint32
    d375::vl_uint32
    d376::vl_uint32
    d377::vl_uint32
    d378::vl_uint32
    d379::vl_uint32
    d380::vl_uint32
    d381::vl_uint32
    d382::vl_uint32
    d383::vl_uint32
    d384::vl_uint32
    d385::vl_uint32
    d386::vl_uint32
    d387::vl_uint32
    d388::vl_uint32
    d389::vl_uint32
    d390::vl_uint32
    d391::vl_uint32
    d392::vl_uint32
    d393::vl_uint32
    d394::vl_uint32
    d395::vl_uint32
    d396::vl_uint32
    d397::vl_uint32
    d398::vl_uint32
    d399::vl_uint32
    d400::vl_uint32
    d401::vl_uint32
    d402::vl_uint32
    d403::vl_uint32
    d404::vl_uint32
    d405::vl_uint32
    d406::vl_uint32
    d407::vl_uint32
    d408::vl_uint32
    d409::vl_uint32
    d410::vl_uint32
    d411::vl_uint32
    d412::vl_uint32
    d413::vl_uint32
    d414::vl_uint32
    d415::vl_uint32
    d416::vl_uint32
    d417::vl_uint32
    d418::vl_uint32
    d419::vl_uint32
    d420::vl_uint32
    d421::vl_uint32
    d422::vl_uint32
    d423::vl_uint32
    d424::vl_uint32
    d425::vl_uint32
    d426::vl_uint32
    d427::vl_uint32
    d428::vl_uint32
    d429::vl_uint32
    d430::vl_uint32
    d431::vl_uint32
    d432::vl_uint32
    d433::vl_uint32
    d434::vl_uint32
    d435::vl_uint32
    d436::vl_uint32
    d437::vl_uint32
    d438::vl_uint32
    d439::vl_uint32
    d440::vl_uint32
    d441::vl_uint32
    d442::vl_uint32
    d443::vl_uint32
    d444::vl_uint32
    d445::vl_uint32
    d446::vl_uint32
    d447::vl_uint32
    d448::vl_uint32
    d449::vl_uint32
    d450::vl_uint32
    d451::vl_uint32
    d452::vl_uint32
    d453::vl_uint32
    d454::vl_uint32
    d455::vl_uint32
    d456::vl_uint32
    d457::vl_uint32
    d458::vl_uint32
    d459::vl_uint32
    d460::vl_uint32
    d461::vl_uint32
    d462::vl_uint32
    d463::vl_uint32
    d464::vl_uint32
    d465::vl_uint32
    d466::vl_uint32
    d467::vl_uint32
    d468::vl_uint32
    d469::vl_uint32
    d470::vl_uint32
    d471::vl_uint32
    d472::vl_uint32
    d473::vl_uint32
    d474::vl_uint32
    d475::vl_uint32
    d476::vl_uint32
    d477::vl_uint32
    d478::vl_uint32
    d479::vl_uint32
    d480::vl_uint32
    d481::vl_uint32
    d482::vl_uint32
    d483::vl_uint32
    d484::vl_uint32
    d485::vl_uint32
    d486::vl_uint32
    d487::vl_uint32
    d488::vl_uint32
    d489::vl_uint32
    d490::vl_uint32
    d491::vl_uint32
    d492::vl_uint32
    d493::vl_uint32
    d494::vl_uint32
    d495::vl_uint32
    d496::vl_uint32
    d497::vl_uint32
    d498::vl_uint32
    d499::vl_uint32
    d500::vl_uint32
    d501::vl_uint32
    d502::vl_uint32
    d503::vl_uint32
    d504::vl_uint32
    d505::vl_uint32
    d506::vl_uint32
    d507::vl_uint32
    d508::vl_uint32
    d509::vl_uint32
    d510::vl_uint32
    d511::vl_uint32
    d512::vl_uint32
    d513::vl_uint32
    d514::vl_uint32
    d515::vl_uint32
    d516::vl_uint32
    d517::vl_uint32
    d518::vl_uint32
    d519::vl_uint32
    d520::vl_uint32
    d521::vl_uint32
    d522::vl_uint32
    d523::vl_uint32
    d524::vl_uint32
    d525::vl_uint32
    d526::vl_uint32
    d527::vl_uint32
    d528::vl_uint32
    d529::vl_uint32
    d530::vl_uint32
    d531::vl_uint32
    d532::vl_uint32
    d533::vl_uint32
    d534::vl_uint32
    d535::vl_uint32
    d536::vl_uint32
    d537::vl_uint32
    d538::vl_uint32
    d539::vl_uint32
    d540::vl_uint32
    d541::vl_uint32
    d542::vl_uint32
    d543::vl_uint32
    d544::vl_uint32
    d545::vl_uint32
    d546::vl_uint32
    d547::vl_uint32
    d548::vl_uint32
    d549::vl_uint32
    d550::vl_uint32
    d551::vl_uint32
    d552::vl_uint32
    d553::vl_uint32
    d554::vl_uint32
    d555::vl_uint32
    d556::vl_uint32
    d557::vl_uint32
    d558::vl_uint32
    d559::vl_uint32
    d560::vl_uint32
    d561::vl_uint32
    d562::vl_uint32
    d563::vl_uint32
    d564::vl_uint32
    d565::vl_uint32
    d566::vl_uint32
    d567::vl_uint32
    d568::vl_uint32
    d569::vl_uint32
    d570::vl_uint32
    d571::vl_uint32
    d572::vl_uint32
    d573::vl_uint32
    d574::vl_uint32
    d575::vl_uint32
    d576::vl_uint32
    d577::vl_uint32
    d578::vl_uint32
    d579::vl_uint32
    d580::vl_uint32
    d581::vl_uint32
    d582::vl_uint32
    d583::vl_uint32
    d584::vl_uint32
    d585::vl_uint32
    d586::vl_uint32
    d587::vl_uint32
    d588::vl_uint32
    d589::vl_uint32
    d590::vl_uint32
    d591::vl_uint32
    d592::vl_uint32
    d593::vl_uint32
    d594::vl_uint32
    d595::vl_uint32
    d596::vl_uint32
    d597::vl_uint32
    d598::vl_uint32
    d599::vl_uint32
    d600::vl_uint32
    d601::vl_uint32
    d602::vl_uint32
    d603::vl_uint32
    d604::vl_uint32
    d605::vl_uint32
    d606::vl_uint32
    d607::vl_uint32
    d608::vl_uint32
    d609::vl_uint32
    d610::vl_uint32
    d611::vl_uint32
    d612::vl_uint32
    d613::vl_uint32
    d614::vl_uint32
    d615::vl_uint32
    d616::vl_uint32
    d617::vl_uint32
    d618::vl_uint32
    d619::vl_uint32
    d620::vl_uint32
    d621::vl_uint32
    d622::vl_uint32
    d623::vl_uint32
    d624::vl_uint32
end

zero(::Type{Array_624_vl_uint32}) = Array_624_vl_uint32(fill(zero(vl_uint32),624)...)

type VlRand
    mt::Array_624_vl_uint32
    mti::vl_uint32
end

# begin enum _VlVectorComparisonType
typealias _VlVectorComparisonType Uint32
const VlDistanceL1 = (uint32)(0)
const VlDistanceL2 = (uint32)(1)
const VlDistanceChi2 = (uint32)(2)
const VlDistanceHellinger = (uint32)(3)
const VlDistanceJS = (uint32)(4)
const VlDistanceMahalanobis = (uint32)(5)
const VlKernelL1 = (uint32)(6)
const VlKernelL2 = (uint32)(7)
const VlKernelChi2 = (uint32)(8)
const VlKernelHellinger = (uint32)(9)
const VlKernelJS = (uint32)(10)
# end enum _VlVectorComparisonType

typealias VlVectorComparisonType _VlVectorComparisonType

immutable Array_5_VlKDTreeSplitDimension
    d1::VlKDTreeSplitDimension
    d2::VlKDTreeSplitDimension
    d3::VlKDTreeSplitDimension
    d4::VlKDTreeSplitDimension
    d5::VlKDTreeSplitDimension
end

zero(::Type{Array_5_VlKDTreeSplitDimension}) = Array_5_VlKDTreeSplitDimension(fill(zero(VlKDTreeSplitDimension),5)...)

type VlKDForest
    dimension::vl_size
    rand::Ptr{VlRand}
    dataType::vl_type
    data::Ptr{Void}
    numData::vl_size
    distance::VlVectorComparisonType
    distanceFunction::Ptr{Void}
    trees::Ptr{Ptr{VlKDTree}}
    numTrees::vl_size
    thresholdingMethod::VlKDTreeThresholdingMethod
    splitHeapArray::Array_5_VlKDTreeSplitDimension
    splitHeapNumNodes::vl_size
    splitHeapSize::vl_size
    maxNumNodes::vl_size
    searchMaxNumComparisons::vl_size
    numSearchers::vl_size
    headSearcher::Ptr{Void} #{_VlKDForestSearcher}
end

type _VlKDForestSearcher
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

type _VlKDForest
    dimension::vl_size
    rand::Ptr{VlRand}
    dataType::vl_type
    data::Ptr{Void}
    numData::vl_size
    distance::VlVectorComparisonType
    distanceFunction::Ptr{Void}
    trees::Ptr{Ptr{VlKDTree}}
    numTrees::vl_size
    thresholdingMethod::VlKDTreeThresholdingMethod
    splitHeapArray::Array_5_VlKDTreeSplitDimension
    splitHeapNumNodes::vl_size
    splitHeapSize::vl_size
    maxNumNodes::vl_size
    searchMaxNumComparisons::vl_size
    numSearchers::vl_size
    headSearcher::Ptr{_VlKDForestSearcher}
end

type VlKDForestSearcher
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

# begin enum _VlKMeansAlgorithm
typealias _VlKMeansAlgorithm Uint32
const VlKMeansLloyd = (uint32)(0)
const VlKMeansElkan = (uint32)(1)
const VlKMeansANN = (uint32)(2)
# end enum _VlKMeansAlgorithm

# begin enum VlKMeansAlgorithm
typealias VlKMeansAlgorithm Uint32
const VlKMeansLloyd = (uint32)(0)
const VlKMeansElkan = (uint32)(1)
const VlKMeansANN = (uint32)(2)
# end enum VlKMeansAlgorithm

# begin enum _VlKMeansInitialization
typealias _VlKMeansInitialization Uint32
const VlKMeansRandomSelection = (uint32)(0)
const VlKMeansPlusPlus = (uint32)(1)
# end enum _VlKMeansInitialization

# begin enum VlKMeansInitialization
typealias VlKMeansInitialization Uint32
const VlKMeansRandomSelection = (uint32)(0)
const VlKMeansPlusPlus = (uint32)(1)
# end enum VlKMeansInitialization

typealias VlDoubleVectorComparisonFunction Ptr{Void}

type _VlKMeans
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
    centers::Ptr{Void}
    centerDistances::Ptr{Void}
    energy::Cdouble
    floatVectorComparisonFn::Cint
    doubleVectorComparisonFn::VlDoubleVectorComparisonFunction
end

type VlKMeans
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
    centers::Ptr{Void}
    centerDistances::Ptr{Void}
    energy::Cdouble
    floatVectorComparisonFn::Cint
    doubleVectorComparisonFn::VlDoubleVectorComparisonFunction
end

const FLT = VL_TYPE_FLOAT
const VL_E = 2.718281828459045
const VL_LOG_OF_2 = 0.693147180559945
const VL_PI = 3.141592653589793
const VL_EPSILON_F = 1.1920929e-7
const VL_EPSILON_D = 2.220446049250313e-16

# Skipping MacroDefinition: VL_NAN_F ( vl_nan_f . value )
# Skipping MacroDefinition: VL_INFINITY_F ( vl_infinity_f . value )
# Skipping MacroDefinition: VL_NAN_D ( vl_nan_d . value )
# Skipping MacroDefinition: VL_INFINITY_D ( vl_infinity_d . value )
# Skipping MacroDefinition: VL_FAST_SQRT_UI ( T , SFX ) VL_INLINE T vl_fast_sqrt_ ## SFX ( T x ) { T y = 0 ; T tmp = 0 ; int twice_k ; for ( twice_k = 8 * sizeof ( T ) - 2 ; twice_k >= 0 ; twice_k -= 2 ) { y <<= 1 ; /* y = 2 * y */ tmp = ( 2 * y + 1 ) << twice_k ; if ( x >= tmp ) { x -= tmp ; y += 1 ; } } return y ; }

typealias VlFloatVector3ComparisonFunction Ptr{Void}
typealias VlDoubleVector3ComparisonFunction Ptr{Void}

type _VlRand
    mt::Array_624_vl_uint32
    mti::vl_uint32
end

type _VlScaleSpaceGeometry
    width::vl_size
    height::vl_size
    firstOctave::vl_index
    lastOctave::vl_index
    octaveResolution::vl_size
    octaveFirstSubdivision::vl_index
    octaveLastSubdivision::vl_index
    baseScale::Cdouble
    nominalScale::Cdouble
end

type VlScaleSpaceGeometry
    width::vl_size
    height::vl_size
    firstOctave::vl_index
    lastOctave::vl_index
    octaveResolution::vl_size
    octaveFirstSubdivision::vl_index
    octaveLastSubdivision::vl_index
    baseScale::Cdouble
    nominalScale::Cdouble
end

type _VlScaleSpaceOctaveGeometry
    width::vl_size
    height::vl_size
    step::Cdouble
end

type VlScaleSpaceOctaveGeometry
    width::vl_size
    height::vl_size
    step::Cdouble
end

typealias _VlScaleSpace Void
typealias VlScaleSpace Void

# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 Cint
const VL_PROT_UNKNOWN = (int32)(-1)
const VL_PROT_NONE = (int32)(0)
const VL_PROT_ASCII = (int32)(1)
const VL_PROT_BINARY = (int32)(2)
# end enum ANONYMOUS_3

type _VlEnumerator
    name::Ptr{Uint8}
    value::vl_index
end

type VlEnumerator
    name::Ptr{Uint8}
    value::vl_index
end

typealias VlSvm_ Void
typealias VlSvmDataset_ Void
typealias VlSvmDataset Void
typealias VlSvmDiagnosticFunction Ptr{Void}
typealias VlSvmLossFunction Ptr{Void}
typealias VlSvmDcaUpdateFunction Ptr{Void}
typealias VlSvmInnerProductFunction Ptr{Void}
typealias VlSvmAccumulateFunction Ptr{Void}

type _VlAIB
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
end

type VlAIB
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
end

const VL_ARRAY_MAX_NUM_DIMENSIONS = 16

immutable Array_16_vl_size
    d1::vl_size
    d2::vl_size
    d3::vl_size
    d4::vl_size
    d5::vl_size
    d6::vl_size
    d7::vl_size
    d8::vl_size
    d9::vl_size
    d10::vl_size
    d11::vl_size
    d12::vl_size
    d13::vl_size
    d14::vl_size
    d15::vl_size
    d16::vl_size
end

zero(::Type{Array_16_vl_size}) = Array_16_vl_size(fill(zero(vl_size),16)...)

type _VlArray
    _type::vl_type
    isEnvelope::vl_bool
    isSparse::vl_bool
    numDimensions::vl_size
    dimensions::Array_16_vl_size
    data::Ptr{Void}
    rowPointers::Ptr{Void}
    columnPointers::Ptr{Void}
end

type VlArray
    _type::vl_type
    isEnvelope::vl_bool
    isSparse::vl_bool
    numDimensions::vl_size
    dimensions::Array_16_vl_size
    data::Ptr{Void}
    rowPointers::Ptr{Void}
    columnPointers::Ptr{Void}
end

# begin enum _VlFrameType
typealias _VlFrameType Uint32
const VL_FRAMETYPE_DISC = (uint32)(1)
const VL_FRAMETYPE_ORIENTED_DISC = (uint32)(2)
const VL_FRAMETYPE_ELLIPSE = (uint32)(3)
const VL_FRAMETYPE_ORIENTED_ELLIPSE = (uint32)(4)
const VL_FRAMETYPE_NUM = (uint32)(5)
# end enum _VlFrameType

# begin enum VlFrameType
typealias VlFrameType Uint32
const VL_FRAMETYPE_DISC = (uint32)(1)
const VL_FRAMETYPE_ORIENTED_DISC = (uint32)(2)
const VL_FRAMETYPE_ELLIPSE = (uint32)(3)
const VL_FRAMETYPE_ORIENTED_ELLIPSE = (uint32)(4)
const VL_FRAMETYPE_NUM = (uint32)(5)
# end enum VlFrameType

type _VlFrameDisc
    x::Cfloat
    y::Cfloat
    sigma::Cfloat
end

type VlFrameDisc
    x::Cfloat
    y::Cfloat
    sigma::Cfloat
end

type _VlFrameOrientedDisc
    x::Cfloat
    y::Cfloat
    sigma::Cfloat
    angle::Cfloat
end

type VlFrameOrientedDisc
    x::Cfloat
    y::Cfloat
    sigma::Cfloat
    angle::Cfloat
end

type _VlFrameEllipse
    x::Cfloat
    y::Cfloat
    e11::Cfloat
    e12::Cfloat
    e22::Cfloat
end

type VlFrameEllipse
    x::Cfloat
    y::Cfloat
    e11::Cfloat
    e12::Cfloat
    e22::Cfloat
end

type _VlFrameOrientedEllipse
    x::Cfloat
    y::Cfloat
    a11::Cfloat
    a12::Cfloat
    a21::Cfloat
    a22::Cfloat
end

type VlFrameOrientedEllipse
    x::Cfloat
    y::Cfloat
    a11::Cfloat
    a12::Cfloat
    a21::Cfloat
    a22::Cfloat
end

type _VlCovDetFeatureOrientation
    angle::Cdouble
    score::Cdouble
end

type VlCovDetFeatureOrientation
    angle::Cdouble
    score::Cdouble
end

type _VlCovDetFeatureLaplacianScale
    scale::Cdouble
    score::Cdouble
end

type VlCovDetFeatureLaplacianScale
    scale::Cdouble
    score::Cdouble
end

# begin enum _VlCovDetMethod
typealias _VlCovDetMethod Uint32
const VL_COVDET_METHOD_DOG = (uint32)(1)
const VL_COVDET_METHOD_HESSIAN = (uint32)(2)
const VL_COVDET_METHOD_HESSIAN_LAPLACE = (uint32)(3)
const VL_COVDET_METHOD_HARRIS_LAPLACE = (uint32)(4)
const VL_COVDET_METHOD_MULTISCALE_HESSIAN = (uint32)(5)
const VL_COVDET_METHOD_MULTISCALE_HARRIS = (uint32)(6)
const VL_COVDET_METHOD_NUM = (uint32)(7)
# end enum _VlCovDetMethod

# begin enum VlCovDetMethod
typealias VlCovDetMethod Uint32
const VL_COVDET_METHOD_DOG = (uint32)(1)
const VL_COVDET_METHOD_HESSIAN = (uint32)(2)
const VL_COVDET_METHOD_HESSIAN_LAPLACE = (uint32)(3)
const VL_COVDET_METHOD_HARRIS_LAPLACE = (uint32)(4)
const VL_COVDET_METHOD_MULTISCALE_HESSIAN = (uint32)(5)
const VL_COVDET_METHOD_MULTISCALE_HARRIS = (uint32)(6)
const VL_COVDET_METHOD_NUM = (uint32)(7)
# end enum VlCovDetMethod

typealias _VlCovDet Void
typealias VlCovDet Void

type VlDsiftKeypoint_
    x::Cdouble
    y::Cdouble
    s::Cdouble
    norm::Cdouble
end

type VlDsiftKeypoint
    x::Cdouble
    y::Cdouble
    s::Cdouble
    norm::Cdouble
end

type VlDsiftDescriptorGeometry_
    numBinT::Cint
    numBinX::Cint
    numBinY::Cint
    binSizeX::Cint
    binSizeY::Cint
end

type VlDsiftDescriptorGeometry
    numBinT::Cint
    numBinX::Cint
    numBinY::Cint
    binSizeX::Cint
    binSizeY::Cint
end

type VlDsiftFilter_
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
end

type VlDsiftFilter
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
end

const VL_FISHER_FLAG_SQUARE_ROOT = 0x01 << 0
const VL_FISHER_FLAG_NORMALIZED = 0x01 << 1
const VL_FISHER_FLAG_IMPROVED = VL_FISHER_FLAG_NORMALIZED | VL_FISHER_FLAG_SQUARE_ROOT
const VL_FISHER_FLAG_FAST = 0x01 << 2
const no_argument = 0
const required_argument = 1
const optional_argument = 2

type option
    name::Ptr{Uint8}
    has_arg::Cint
    flag::Ptr{Cint}
    val::Cint
end

typealias _VlGMM Void
typealias VlGMM Void

#const VL_HEAP_array = $(Expr(:incomplete, "incomplete: premature end of input"))

# Skipping MacroDefinition: VL_HEAP_array_const VL_HEAP_type const *
# Skipping MacroDefinition: VL_HEAP_cmp VL_XCAT ( VL_HEAP_prefix , _cmp )
# Skipping MacroDefinition: VL_HEAP_swap VL_XCAT ( VL_HEAP_prefix , _swap )
# Skipping MacroDefinition: VL_HEAP_up VL_XCAT ( VL_HEAP_prefix , _up )
# Skipping MacroDefinition: VL_HEAP_down VL_XCAT ( VL_HEAP_prefix , _down )
# Skipping MacroDefinition: VL_HEAP_push VL_XCAT ( VL_HEAP_prefix , _push )
# Skipping MacroDefinition: VL_HEAP_pop VL_XCAT ( VL_HEAP_prefix , _pop )
# Skipping MacroDefinition: VL_HEAP_update VL_XCAT ( VL_HEAP_prefix , _update )

typealias _VLHIKMTree Void
typealias _VLHIKMNode Void

type _VlHIKMNode
    filter::Ptr{VlIKMFilt}
    children::Ptr{Ptr{_VlHIKMNode}}
end

type VlHIKMNode
    filter::Ptr{VlIKMFilt}
    children::Ptr{Ptr{_VlHIKMNode}}
end

type _VlHIKMTree
    M::vl_size
    K::vl_size
    depth::vl_size
    max_niters::vl_size
    method::Cint
    verb::Cint
    root::Ptr{VlHIKMNode}
end

type VlHIKMTree
    M::vl_size
    K::vl_size
    depth::vl_size
    max_niters::vl_size
    method::Cint
    verb::Cint
    root::Ptr{VlHIKMNode}
end

# begin enum VlHogVariant_
typealias VlHogVariant_ Uint32
const VlHogVariantDalalTriggs = (uint32)(0)
const VlHogVariantUoctti = (uint32)(1)
# end enum VlHogVariant_

typealias VlHogVariant VlHogVariant_

type VlHog_
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
end

typealias VlHog VlHog_

# begin enum _VlLbpMappingType
typealias _VlLbpMappingType Uint32
const VlLbpUniform = (uint32)(0)
# end enum _VlLbpMappingType

# begin enum VlLbpMappingType
typealias VlLbpMappingType Uint32
const VlLbpUniform = (uint32)(0)
# end enum VlLbpMappingType

immutable Array_256_vl_uint8
    d1::vl_uint8
    d2::vl_uint8
    d3::vl_uint8
    d4::vl_uint8
    d5::vl_uint8
    d6::vl_uint8
    d7::vl_uint8
    d8::vl_uint8
    d9::vl_uint8
    d10::vl_uint8
    d11::vl_uint8
    d12::vl_uint8
    d13::vl_uint8
    d14::vl_uint8
    d15::vl_uint8
    d16::vl_uint8
    d17::vl_uint8
    d18::vl_uint8
    d19::vl_uint8
    d20::vl_uint8
    d21::vl_uint8
    d22::vl_uint8
    d23::vl_uint8
    d24::vl_uint8
    d25::vl_uint8
    d26::vl_uint8
    d27::vl_uint8
    d28::vl_uint8
    d29::vl_uint8
    d30::vl_uint8
    d31::vl_uint8
    d32::vl_uint8
    d33::vl_uint8
    d34::vl_uint8
    d35::vl_uint8
    d36::vl_uint8
    d37::vl_uint8
    d38::vl_uint8
    d39::vl_uint8
    d40::vl_uint8
    d41::vl_uint8
    d42::vl_uint8
    d43::vl_uint8
    d44::vl_uint8
    d45::vl_uint8
    d46::vl_uint8
    d47::vl_uint8
    d48::vl_uint8
    d49::vl_uint8
    d50::vl_uint8
    d51::vl_uint8
    d52::vl_uint8
    d53::vl_uint8
    d54::vl_uint8
    d55::vl_uint8
    d56::vl_uint8
    d57::vl_uint8
    d58::vl_uint8
    d59::vl_uint8
    d60::vl_uint8
    d61::vl_uint8
    d62::vl_uint8
    d63::vl_uint8
    d64::vl_uint8
    d65::vl_uint8
    d66::vl_uint8
    d67::vl_uint8
    d68::vl_uint8
    d69::vl_uint8
    d70::vl_uint8
    d71::vl_uint8
    d72::vl_uint8
    d73::vl_uint8
    d74::vl_uint8
    d75::vl_uint8
    d76::vl_uint8
    d77::vl_uint8
    d78::vl_uint8
    d79::vl_uint8
    d80::vl_uint8
    d81::vl_uint8
    d82::vl_uint8
    d83::vl_uint8
    d84::vl_uint8
    d85::vl_uint8
    d86::vl_uint8
    d87::vl_uint8
    d88::vl_uint8
    d89::vl_uint8
    d90::vl_uint8
    d91::vl_uint8
    d92::vl_uint8
    d93::vl_uint8
    d94::vl_uint8
    d95::vl_uint8
    d96::vl_uint8
    d97::vl_uint8
    d98::vl_uint8
    d99::vl_uint8
    d100::vl_uint8
    d101::vl_uint8
    d102::vl_uint8
    d103::vl_uint8
    d104::vl_uint8
    d105::vl_uint8
    d106::vl_uint8
    d107::vl_uint8
    d108::vl_uint8
    d109::vl_uint8
    d110::vl_uint8
    d111::vl_uint8
    d112::vl_uint8
    d113::vl_uint8
    d114::vl_uint8
    d115::vl_uint8
    d116::vl_uint8
    d117::vl_uint8
    d118::vl_uint8
    d119::vl_uint8
    d120::vl_uint8
    d121::vl_uint8
    d122::vl_uint8
    d123::vl_uint8
    d124::vl_uint8
    d125::vl_uint8
    d126::vl_uint8
    d127::vl_uint8
    d128::vl_uint8
    d129::vl_uint8
    d130::vl_uint8
    d131::vl_uint8
    d132::vl_uint8
    d133::vl_uint8
    d134::vl_uint8
    d135::vl_uint8
    d136::vl_uint8
    d137::vl_uint8
    d138::vl_uint8
    d139::vl_uint8
    d140::vl_uint8
    d141::vl_uint8
    d142::vl_uint8
    d143::vl_uint8
    d144::vl_uint8
    d145::vl_uint8
    d146::vl_uint8
    d147::vl_uint8
    d148::vl_uint8
    d149::vl_uint8
    d150::vl_uint8
    d151::vl_uint8
    d152::vl_uint8
    d153::vl_uint8
    d154::vl_uint8
    d155::vl_uint8
    d156::vl_uint8
    d157::vl_uint8
    d158::vl_uint8
    d159::vl_uint8
    d160::vl_uint8
    d161::vl_uint8
    d162::vl_uint8
    d163::vl_uint8
    d164::vl_uint8
    d165::vl_uint8
    d166::vl_uint8
    d167::vl_uint8
    d168::vl_uint8
    d169::vl_uint8
    d170::vl_uint8
    d171::vl_uint8
    d172::vl_uint8
    d173::vl_uint8
    d174::vl_uint8
    d175::vl_uint8
    d176::vl_uint8
    d177::vl_uint8
    d178::vl_uint8
    d179::vl_uint8
    d180::vl_uint8
    d181::vl_uint8
    d182::vl_uint8
    d183::vl_uint8
    d184::vl_uint8
    d185::vl_uint8
    d186::vl_uint8
    d187::vl_uint8
    d188::vl_uint8
    d189::vl_uint8
    d190::vl_uint8
    d191::vl_uint8
    d192::vl_uint8
    d193::vl_uint8
    d194::vl_uint8
    d195::vl_uint8
    d196::vl_uint8
    d197::vl_uint8
    d198::vl_uint8
    d199::vl_uint8
    d200::vl_uint8
    d201::vl_uint8
    d202::vl_uint8
    d203::vl_uint8
    d204::vl_uint8
    d205::vl_uint8
    d206::vl_uint8
    d207::vl_uint8
    d208::vl_uint8
    d209::vl_uint8
    d210::vl_uint8
    d211::vl_uint8
    d212::vl_uint8
    d213::vl_uint8
    d214::vl_uint8
    d215::vl_uint8
    d216::vl_uint8
    d217::vl_uint8
    d218::vl_uint8
    d219::vl_uint8
    d220::vl_uint8
    d221::vl_uint8
    d222::vl_uint8
    d223::vl_uint8
    d224::vl_uint8
    d225::vl_uint8
    d226::vl_uint8
    d227::vl_uint8
    d228::vl_uint8
    d229::vl_uint8
    d230::vl_uint8
    d231::vl_uint8
    d232::vl_uint8
    d233::vl_uint8
    d234::vl_uint8
    d235::vl_uint8
    d236::vl_uint8
    d237::vl_uint8
    d238::vl_uint8
    d239::vl_uint8
    d240::vl_uint8
    d241::vl_uint8
    d242::vl_uint8
    d243::vl_uint8
    d244::vl_uint8
    d245::vl_uint8
    d246::vl_uint8
    d247::vl_uint8
    d248::vl_uint8
    d249::vl_uint8
    d250::vl_uint8
    d251::vl_uint8
    d252::vl_uint8
    d253::vl_uint8
    d254::vl_uint8
    d255::vl_uint8
    d256::vl_uint8
end

zero(::Type{Array_256_vl_uint8}) = Array_256_vl_uint8(fill(zero(vl_uint8),256)...)

type VlLbp_
    dimension::vl_size
    mapping::Array_256_vl_uint8
    transposed::vl_bool
end

type VlLbp
    dimension::vl_size
    mapping::Array_256_vl_uint8
    transposed::vl_bool
end

type _VlLiopDesc
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
end

type VlLiopDesc
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
end

const VL_MSER_PIX_MAXVAL = 256

# Skipping MacroDefinition: VL_MSER_VOID_NODE ( ( 1ULL << 32 ) - 1 )

typealias vl_mser_pix vl_uint8

type _VlMserReg
    parent::vl_uint
    shortcut::vl_uint
    height::vl_uint
    area::vl_uint
end

typealias VlMserReg _VlMserReg

type _VlMserExtrReg
    parent::Cint
    index::Cint
    value::vl_mser_pix
    shortcut::vl_uint
    area::vl_uint
    variation::Cfloat
    max_stable::vl_uint
end

typealias VlMserExtrReg _VlMserExtrReg

type _VlMserStats
    num_extremal::Cint
    num_unstable::Cint
    num_abs_unstable::Cint
    num_too_big::Cint
    num_too_small::Cint
    num_duplicates::Cint
end

typealias VlMserStats _VlMserStats

type _VlMserFilt
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
end

typealias VlMserFilt _VlMserFilt
typealias vl_mser_acc Cfloat

const VL_ERR_PGM_INV_HEAD = 101
const VL_ERR_PGM_INV_META = 102
const VL_ERR_PGM_INV_DATA = 103
const VL_ERR_PGM_IO = 104

type _VlPgmImage
    width::vl_size
    height::vl_size
    max_value::vl_size
    is_raw::vl_bool
end

type VlPgmImage
    width::vl_size
    height::vl_size
    max_value::vl_size
    is_raw::vl_bool
end

# const VL_QSORT_array = $(Expr(:incomplete, "incomplete: premature end of input"))

# Skipping MacroDefinition: VL_QSORT_array_const VL_QSORT_type const *
# Skipping MacroDefinition: VL_QSORT_cmp VL_XCAT ( VL_QSORT_prefix , _cmp )
# Skipping MacroDefinition: VL_QSORT_swap VL_XCAT ( VL_QSORT_prefix , _swap )
# Skipping MacroDefinition: VL_QSORT_sort_recursive VL_XCAT ( VL_QSORT_prefix , _sort_recursive )
# Skipping MacroDefinition: VL_QSORT_sort VL_XCAT ( VL_QSORT_prefix , _sort )

# const VL_QS_INF = VL_INFINITY_D

typealias vl_qs_type Cdouble

type _VlQS
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
end

type VlQS
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
end

# const VL_SHUFFLE_array = $(Expr(:incomplete, "incomplete: premature end of input"))

# Skipping MacroDefinition: VL_SHUFFLE_swap VL_XCAT ( VL_SHUFFLE_prefix , _swap )
# Skipping MacroDefinition: VL_SHUFFLE_shuffle VL_XCAT ( VL_SHUFFLE_prefix , _shuffle )

typealias vl_sift_pix Cfloat

type _VlSiftKeypoint
    o::Cint
    ix::Cint
    iy::Cint
    is::Cint
    x::Cfloat
    y::Cfloat
    s::Cfloat
    sigma::Cfloat
end

type VlSiftKeypoint
    o::Cint
    ix::Cint
    iy::Cint
    is::Cint
    x::Cfloat
    y::Cfloat
    s::Cfloat
    sigma::Cfloat
end

type _VlSiftFilt
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
end

type VlSiftFilt
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
end

typealias VlSvm Void

# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 Uint32
const VlSvmSolverNone = (uint32)(0)
const VlSvmSolverSgd = (uint32)(1)
const VlSvmSolverSdca = (uint32)(2)
# end enum ANONYMOUS_4

# begin enum VlSvmSolverType
typealias VlSvmSolverType Uint32
const VlSvmSolverNone = (uint32)(0)
const VlSvmSolverSgd = (uint32)(1)
const VlSvmSolverSdca = (uint32)(2)
# end enum VlSvmSolverType

# begin enum ANONYMOUS_5
typealias ANONYMOUS_5 Uint32
const VlSvmLossHinge = (uint32)(0)
const VlSvmLossHinge2 = (uint32)(1)
const VlSvmLossL1 = (uint32)(2)
const VlSvmLossL2 = (uint32)(3)
const VlSvmLossLogistic = (uint32)(4)
# end enum ANONYMOUS_5

# begin enum VlSvmLossType
typealias VlSvmLossType Uint32
const VlSvmLossHinge = (uint32)(0)
const VlSvmLossHinge2 = (uint32)(1)
const VlSvmLossL1 = (uint32)(2)
const VlSvmLossL2 = (uint32)(3)
const VlSvmLossLogistic = (uint32)(4)
# end enum VlSvmLossType

# begin enum ANONYMOUS_6
typealias ANONYMOUS_6 Uint32
const VlSvmStatusTraining = (uint32)(1)
const VlSvmStatusConverged = (uint32)(2)
const VlSvmStatusMaxNumIterationsReached = (uint32)(3)
# end enum ANONYMOUS_6

# begin enum VlSvmSolverStatus
typealias VlSvmSolverStatus Uint32
const VlSvmStatusTraining = (uint32)(1)
const VlSvmStatusConverged = (uint32)(2)
const VlSvmStatusMaxNumIterationsReached = (uint32)(3)
# end enum VlSvmSolverStatus

type VlSvmStatistics_
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
end

type VlSvmStatistics
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
end

const VL_VLAD_FLAG_NORMALIZE_COMPONENTS = 0x01 << 0
const VL_VLAD_FLAG_SQUARE_ROOT = 0x01 << 1
const VL_VLAD_FLAG_UNNORMALIZED = 0x01 << 2
const VL_VLAD_FLAG_NORMALIZE_MASS = 0x01 << 3
