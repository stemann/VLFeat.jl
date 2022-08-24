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

const VL_PRINTF = ((*)(vl_get_printf_func))()

const VL_PRINT = ((*)(vl_get_printf_func))()

const no_argument = 0

const required_argument = 1

const optional_argument = 2

const VL_HEAP_array = Ptr{VL_HEAP_type}

const VL_HEAP_array_const = Ptr{VL_HEAP_type}

const VL_HEAP_cmp = VL_XCAT(VL_HEAP_prefix, _cmp)

const VL_HEAP_swap = VL_XCAT(VL_HEAP_prefix, _swap)

const VL_HEAP_up = VL_XCAT(VL_HEAP_prefix, _up)

const VL_HEAP_down = VL_XCAT(VL_HEAP_prefix, _down)

const VL_HEAP_push = VL_XCAT(VL_HEAP_prefix, _push)

const VL_HEAP_pop = VL_XCAT(VL_HEAP_prefix, _pop)

const VL_HEAP_update = VL_XCAT(VL_HEAP_prefix, _update)

const VL_OS_MACOSX = 1

const VL_THREADS_POSIX = 1

const VL_COMPILER_GNUC = (((__GNUC__ * 10000) \ +__GNUC_MINOR__) * 100) \ +__GNUC_PATCHLEVEL__

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

const VL_FMT_INDEX = VL_FL_INDEX("d")

const VL_FMT_INTPTR = VL_FMT_INDEX

const VL_FMT_UINDEX = VL_FL_INDEX("u")

const VL_FMT_SIZE = VL_FMT_UINDEX

const VL_FMT_UINTPTR = VL_FMT_UINDEX

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

const VL_EPSILON_F = 1.1920929e-7F

const VL_EPSILON_D = 2.220446049250313e-16

# Skipping MacroDefinition: VL_NAN_F ( vl_nan_f . value )

# Skipping MacroDefinition: VL_INFINITY_F ( vl_infinity_f . value )

# Skipping MacroDefinition: VL_NAN_D ( vl_nan_d . value )

# Skipping MacroDefinition: VL_INFINITY_D ( vl_infinity_d . value )

const FLT = VL_TYPE_DOUBLE

const T = Float64

const SFX = d

const VSIZE = 2

const VSFX = d

const VTYPE = __m128d

const VMAX = VL_XCAT(_mm_max_p, VSFX)

const VMUL = VL_XCAT(_mm_mul_p, VSFX)

const VDIV = VL_XCAT(_mm_div_p, VSFX)

const VADD = VL_XCAT(_mm_add_p, VSFX)

const VSUB = VL_XCAT(_mm_sub_p, VSFX)

const VSTZ = VL_XCAT(_mm_setzero_p, VSFX)

const VLD1 = VL_XCAT(_mm_load1_p, VSFX)

const VLDU = VL_XCAT(_mm_loadu_p, VSFX)

const VST1 = VL_XCAT(_mm_store_s, VSFX)

const VSET1 = VL_XCAT(_mm_set_s, VSFX)

const VSHU = VL_XCAT(_mm_shuffle_p, VSFX)

const VNEQ = VL_XCAT(_mm_cmpneq_p, VSFX)

const VAND = VL_XCAT(_mm_and_p, VSFX)

const VANDN = VL_XCAT(_mm_andnot_p, VSFX)

const VST2 = VL_XCAT(_mm_store_p, VSFX)

const VST2U = VL_XCAT(_mm_storeu_p, VSFX)

const VL_MSER_PIX_MAXVAL = 256

const VL_MSER_VOID_NODE = Culonglong(1) << 32 - 1

const VL_ERR_PGM_INV_HEAD = 101

const VL_ERR_PGM_INV_META = 102

const VL_ERR_PGM_INV_DATA = 103

const VL_ERR_PGM_IO = 104

const VL_QSORT_array = Ptr{VL_QSORT_type}

const VL_QSORT_array_const = Ptr{VL_QSORT_type}

const VL_QSORT_cmp = VL_XCAT(VL_QSORT_prefix, _cmp)

const VL_QSORT_swap = VL_XCAT(VL_QSORT_prefix, _swap)

const VL_QSORT_sort_recursive = VL_XCAT(VL_QSORT_prefix, _sort_recursive)

const VL_QSORT_sort = VL_XCAT(VL_QSORT_prefix, _sort)

const VL_QS_INF = VL_INFINITY_D

const VL_SHUFFLE_array = Ptr{VL_SHUFFLE_type}

const VL_SHUFFLE_swap = VL_XCAT(VL_SHUFFLE_prefix, _swap)

const VL_SHUFFLE_shuffle = VL_XCAT(VL_SHUFFLE_prefix, _shuffle)

const VL_VLAD_FLAG_NORMALIZE_COMPONENTS = 0x01 << 0

const VL_VLAD_FLAG_SQUARE_ROOT = 0x01 << 1

const VL_VLAD_FLAG_UNNORMALIZED = 0x01 << 2

const VL_VLAD_FLAG_NORMALIZE_MASS = 0x01 << 3
