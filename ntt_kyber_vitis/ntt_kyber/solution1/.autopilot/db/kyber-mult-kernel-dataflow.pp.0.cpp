# 1 "kyber-mult-kernel-dataflow.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 376 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 105 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "kyber-mult-kernel-dataflow.cpp" 2
# 1 "./kyber-mult-kernel.h" 1


# 1 "/eda/xilinx/Vitis_HLS/2023.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 1 3
# 63 "/eda/xilinx/Vitis_HLS/2023.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 416 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 417 "/usr/include/features.h" 2 3 4
# 438 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 501 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 502 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 503 "/usr/include/sys/cdefs.h" 2 3 4
# 439 "/usr/include/features.h" 2 3 4
# 462 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 463 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 140 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 141 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 64 "/eda/xilinx/Vitis_HLS/2023.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 2 3
# 4 "./kyber-mult-kernel.h" 2
# 14 "./kyber-mult-kernel.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 1
# 10 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h" 1
# 41 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_decl.h" 1
# 54 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_decl.h"
enum ap_q_mode {
  AP_RND,
  AP_RND_ZERO,
  AP_RND_MIN_INF,
  AP_RND_INF,
  AP_RND_CONV,
  AP_TRN,
  AP_TRN_ZERO,
};
# 76 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_decl.h"
enum ap_o_mode {
  AP_SAT,
  AP_SAT_ZERO,
  AP_SAT_SYM,
  AP_WRAP,
  AP_WRAP_SM,
};
# 133 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_decl.h"
template <int _AP_W, bool _AP_S>
struct ap_int_base;

template <int _AP_W>
struct ap_int;

template <int _AP_W>
struct ap_uint;

template <int _AP_W, bool _AP_S>
struct ap_range_ref;

template <int _AP_W, bool _AP_S>
struct ap_bit_ref;

template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2>
struct ap_concat_ref;

template <int _AP_W, int _AP_I, bool _AP_S = true, ap_q_mode _AP_Q = AP_TRN,
          ap_o_mode _AP_O = AP_WRAP, int _AP_N = 0>
struct ap_fixed_base;

template <int _AP_W, int _AP_I, ap_q_mode _AP_Q = AP_TRN,
          ap_o_mode _AP_O = AP_WRAP, int _AP_N = 0>
struct ap_fixed;

template <int _AP_W, int _AP_I, ap_q_mode _AP_Q = AP_TRN,
          ap_o_mode _AP_O = AP_WRAP, int _AP_N = 0>
struct ap_ufixed;

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
struct af_range_ref;

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
struct af_bit_ref;


enum BaseMode { AP_BIN = 2, AP_OCT = 8, AP_DEC = 10, AP_HEX = 16 };
# 187 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_decl.h"
typedef signed long long ap_slong;
typedef unsigned long long ap_ulong;


enum {
  _AP_SIZE_char = 8,
  _AP_SIZE_short = sizeof(short) * 8,
  _AP_SIZE_int = sizeof(int) * 8,
  _AP_SIZE_long = sizeof(long) * 8,
  _AP_SIZE_ap_slong = sizeof(ap_slong) * 8
};
# 42 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h" 2
# 164 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h"
enum { CHAR_IS_SIGNED = (char)-1 < 0 };


namespace _ap_type {
template <typename _Tp>
struct is_signed {
  static const bool value = _Tp(-1) < _Tp(1);
};

template <typename _Tp>
struct is_integral {
  static const bool value = false;
};





template <> struct is_integral<bool> { static const bool value = true; };
template <> struct is_integral<char> { static const bool value = true; };
template <> struct is_integral<signed char> { static const bool value = true; };
template <> struct is_integral<unsigned char> { static const bool value = true; };
template <> struct is_integral<short> { static const bool value = true; };
template <> struct is_integral<unsigned short> { static const bool value = true; };
template <> struct is_integral<int> { static const bool value = true; };
template <> struct is_integral<unsigned int> { static const bool value = true; };
template <> struct is_integral<long> { static const bool value = true; };
template <> struct is_integral<unsigned long> { static const bool value = true; };
template <> struct is_integral<ap_slong> { static const bool value = true; };
template <> struct is_integral<ap_ulong> { static const bool value = true; };


template <bool, typename _Tp = void>
struct enable_if {};

template <typename _Tp>
struct enable_if<true, _Tp> {
  typedef _Tp type;
};

template <typename _Tp>
struct remove_const {
  typedef _Tp type;
};

template <typename _Tp>
struct remove_const<_Tp const> {
  typedef _Tp type;
};
}
# 507 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h"
template <int _AP_N, bool _AP_S>
struct ssdm_int;

template <int _AP_N>
struct ssdm_int<_AP_N, true> {
  typedef int __attribute__((bitwidth(_AP_N))) DataType;
  int V __attribute__((bitwidth(_AP_N)));
  inline __attribute__((always_inline)) ssdm_int<_AP_N, true>() = default;
                inline __attribute__((always_inline)) ssdm_int<_AP_N, true>(int o __attribute__((bitwidth(_AP_N)))):V(o){};
};

template <int _AP_N>
struct ssdm_int<_AP_N, false> {
  typedef unsigned __attribute__((bitwidth(_AP_N))) DataType;
  unsigned V __attribute__((bitwidth(_AP_N)));
  inline __attribute__((always_inline)) ssdm_int<_AP_N, false>() = default;
                inline __attribute__((always_inline)) ssdm_int<_AP_N, false>(unsigned o __attribute__((bitwidth(_AP_N)))):V(o){};
};
# 575 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/autopilot_ssdm_bits.h" 1
# 576 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h" 2

extern "C" void _ssdm_string2bits(...);
# 587 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h"
static inline unsigned char guess_radix(const char* s) {
  unsigned char rd = 10;
  const char* p = s;

  if (p[0] == '-' || p[0] == '+') ++p;

  if (p[0] == '0') {
    if (p[1] == 'b' || p[1] == 'B') {
      rd = 2;
    } else if (p[1] == 'o' || p[1] == 'O') {
      rd = 8;
    } else if (p[1] == 'x' || p[1] == 'X') {
      rd = 16;
    } else if (p[1] == 'd' || p[1] == 'D') {
      rd = 10;
    }
  }
  return rd;
}







typedef __fp16 half;
# 718 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_common.h"
inline __attribute__((always_inline)) ap_ulong doubleToRawBits(double pf) {
  union {
    ap_ulong __L;
    double __D;
  } LD;
  LD.__D = pf;
  return LD.__L;
}

inline __attribute__((always_inline)) unsigned int floatToRawBits(float pf) {
  union {
    unsigned int __L;
    float __D;
  } LD;
  LD.__D = pf;
  return LD.__L;
}

inline __attribute__((always_inline)) unsigned short halfToRawBits(half pf) {

  union {
    unsigned short __L;
    half __D;
  } LD;
  LD.__D = pf;
  return LD.__L;



}


inline __attribute__((always_inline)) double rawBitsToDouble(ap_ulong pi) {
  union {
    ap_ulong __L;
    double __D;
  } LD;
  LD.__L = pi;
  return LD.__D;
}


inline __attribute__((always_inline)) float rawBitsToFloat(unsigned long pi) {
  union {
    unsigned int __L;
    float __D;
  } LD;
  LD.__L = pi;
  return LD.__D;
}


inline __attribute__((always_inline)) half rawBitsToHalf(unsigned short pi) {

  union {
    unsigned short __L;
    half __D;
  } LD;
  LD.__L = pi;
  return LD.__D;






}
# 11 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 2
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h" 1
# 40 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_N, bool _AP_S>
struct retval;


template <int _AP_N>
struct retval<_AP_N, true> {
  typedef ap_slong Type;
};

template <int _AP_N>
struct retval<_AP_N, false> {
  typedef ap_ulong Type;
};


template <>
struct retval<1, true> {
  typedef signed char Type;
};

template <>
struct retval<1, false> {
  typedef unsigned char Type;
};


template <>
struct retval<2, true> {
  typedef short Type;
};

template <>
struct retval<2, false> {
  typedef unsigned short Type;
};


template <>
struct retval<3, true> {
  typedef long Type;
};

template <>
struct retval<3, false> {
  typedef unsigned long Type;
};

template <>
struct retval<4, true> {
  typedef long Type;
};

template <>
struct retval<4, false> {
  typedef unsigned long Type;
};




template <int _AP_W2, bool _AP_S2>
struct _ap_int_factory;
template <int _AP_W2>
struct _ap_int_factory<_AP_W2,true> { typedef ap_int<_AP_W2> type; };
template <int _AP_W2>
struct _ap_int_factory<_AP_W2,false> { typedef ap_uint<_AP_W2> type; };

template <int _AP_W, bool _AP_S>
struct ap_int_base : public ssdm_int<_AP_W, _AP_S> {
 private:
                inline __attribute__((always_inline)) __attribute__((nodebug)) int countLeadingOnes() const {




    return 0;

  }

 public:
  typedef ssdm_int<_AP_W, _AP_S> Base;







  typedef typename retval<(((_AP_W + 7) / 8) > (8) ? ((_AP_W + 7) / 8) : (8)), _AP_S>::Type RetType;

  static const int width = _AP_W;
  static const bool sign_flag = _AP_S;

  template <int _AP_W2, bool _AP_S2>
  struct RType {
    enum {
      mult_w = _AP_W + _AP_W2,
      mult_s = _AP_S || _AP_S2,
      plus_w =
          ((_AP_W + (_AP_S2 && !_AP_S)) > (_AP_W2 + (_AP_S && !_AP_S2)) ? (_AP_W + (_AP_S2 && !_AP_S)) : (_AP_W2 + (_AP_S && !_AP_S2))) + 1,
      plus_s = _AP_S || _AP_S2,
      minus_w =
          ((_AP_W + (_AP_S2 && !_AP_S)) > (_AP_W2 + (_AP_S && !_AP_S2)) ? (_AP_W + (_AP_S2 && !_AP_S)) : (_AP_W2 + (_AP_S && !_AP_S2))) + 1,
      minus_s = true,
      div_w = _AP_W + _AP_S2,
      div_s = _AP_S || _AP_S2,
      mod_w = ((_AP_W) < (_AP_W2 + (!_AP_S2 && _AP_S)) ? (_AP_W) : (_AP_W2 + (!_AP_S2 && _AP_S))),
      mod_s = _AP_S,
      logic_w = ((_AP_W + (_AP_S2 && !_AP_S)) > (_AP_W2 + (_AP_S && !_AP_S2)) ? (_AP_W + (_AP_S2 && !_AP_S)) : (_AP_W2 + (_AP_S && !_AP_S2))),
      logic_s = _AP_S || _AP_S2
    };


    typedef ap_int_base<mult_w, mult_s> mult_base;
    typedef ap_int_base<plus_w, plus_s> plus_base;
    typedef ap_int_base<minus_w, minus_s> minus_base;
    typedef ap_int_base<logic_w, logic_s> logic_base;
    typedef ap_int_base<div_w, div_s> div_base;
    typedef ap_int_base<mod_w, mod_s> mod_base;
    typedef ap_int_base<_AP_W, _AP_S> arg1_base;

    typedef typename _ap_int_factory<mult_w, mult_s>::type mult;
    typedef typename _ap_int_factory<plus_w, plus_s>::type plus;
    typedef typename _ap_int_factory<minus_w, minus_s>::type minus;
    typedef typename _ap_int_factory<logic_w, logic_s>::type logic;
    typedef typename _ap_int_factory<div_w, div_s>::type div;
    typedef typename _ap_int_factory<mod_w, mod_s>::type mod;
    typedef typename _ap_int_factory<_AP_W, _AP_S>::type arg1;
    typedef bool reduce;
  };





  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base() = default;


  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const ap_int_base<_AP_W2, _AP_S2>& op):Base(op.V) {
    Base::V = op.V;
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const volatile ap_int_base<_AP_W2, _AP_S2>& op) {
    Base::V = op.V;
  }
# 202 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const bool op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const char op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const signed char op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const unsigned char op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const short op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const unsigned short op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const int op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const unsigned int op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const long op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const unsigned long op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const ap_slong op):Base(op) { Base::V = op; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const ap_ulong op):Base(op) { Base::V = op; }




  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(half op) {
    ap_int_base<_AP_W, _AP_S> t((float)op);
    Base::V = t.V;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(float op) {
    const int BITS = 23 + 8 + 1;
    ap_int_base<BITS, false> reg;
    reg.V = floatToRawBits(op);
    bool is_neg = ({ typeof(reg.V) __Val2__ = reg.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), BITS - 1); __Result__; });

    ap_int_base<8 + 1, true> exp = 0;
    exp.V = ({ typename _ap_type::remove_const<typeof(reg.V)>::type __Result__ = 0; typeof(reg.V) __Val2__ = reg.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 23, BITS - 2); __Result__; });
    exp = exp - ((1 << (8 - 1)) - 1);

    ap_int_base<23 + 2, true> man;
    man.V = ({ typename _ap_type::remove_const<typeof(reg.V)>::type __Result__ = 0; typeof(reg.V) __Val2__ = reg.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, 23 - 1); __Result__; });

    (static_cast<void>(0));


    man.V = ({ typename _ap_type::remove_const<typeof(man.V)>::type __Result__ = 0; typeof(man.V) __Val2__ = man.V; typeof(1) __Repl2__ = !!1; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 23, 23); __Result__; });


    if ((reg.V & 0x7ffffffful) == 0) {
      Base::V = 0;
    } else {
      int sh_amt = 23 - exp.V;
      if (sh_amt == 0) {
        Base::V = man.V;
      } else if (sh_amt > 0) {
        if (sh_amt < 23 + 2) {
          ap_int_base<23 + 2, true> man_shift;
          man_shift.V = (man.V >> sh_amt);






          Base::V = man_shift.V;
        } else {



            Base::V = 0;
        }
      } else {
        sh_amt = -sh_amt;
        if (sh_amt < _AP_W) {
          Base::V = man.V;
          Base::V <<= sh_amt;
        } else {



          Base::V = 0;
        }
      }
    }
    if (is_neg) *this = -(*this);
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(double op) {
    const int BITS = 52 + 11 + 1;
    ap_int_base<BITS, false> reg;
    reg.V = doubleToRawBits(op);
    bool is_neg = ({ typeof(reg.V) __Val2__ = reg.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), BITS - 1); __Result__; });

    ap_int_base<11 + 1, true> exp, bias = ((1 << (11 - 1)) - 1);
    exp.V = ({ typename _ap_type::remove_const<typeof(reg.V)>::type __Result__ = 0; typeof(reg.V) __Val2__ = reg.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 52, BITS - 2); __Result__; });
    exp = exp - bias;

    ap_int_base<52 + 2, true> man;
    man.V = ({ typename _ap_type::remove_const<typeof(reg.V)>::type __Result__ = 0; typeof(reg.V) __Val2__ = reg.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, 52 - 1); __Result__; });

    (static_cast<void>(0));


    man.V = ({ typename _ap_type::remove_const<typeof(man.V)>::type __Result__ = 0; typeof(man.V) __Val2__ = man.V; typeof(1) __Repl2__ = !!1; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 52, 52); __Result__; });


    if ((reg.V & 0x7fffffffffffffffull) == 0) {
      Base::V = 0;
    } else {
      int sh_amt = 52 - exp.V;
      if (sh_amt == 0) {
        Base::V = man.V;
      } else if (sh_amt > 0) {
        if (sh_amt < 52 + 2) {
          ap_int_base<23 + 2, true> man_shift;
          man_shift.V = (man.V >> sh_amt);






          Base::V = man_shift.V;
        } else {



           Base::V = 0;
        }
      } else {
        sh_amt = -sh_amt;
        if (sh_amt < _AP_W) {
          Base::V = man.V;
          Base::V <<= sh_amt;
        } else {



          Base::V = 0;
        }
      }
    }
    if (is_neg) *this = -(*this);
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    op.checkOverflowCsimFix(_AP_W, _AP_S);
    Base::V = op.to_ap_int_base().V;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const ap_range_ref<_AP_W2, _AP_S2>& ref) {
    Base::V = (ref.get()).V;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const ap_bit_ref<_AP_W2, _AP_S2>& ref) {
    Base::V = ref.operator bool();
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& ref) {
    const ap_int_base<ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>::_AP_WR,
                      false>
        tmp = ref.get();
    Base::V = tmp.V;
  }
# 381 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const char* s) {
    typeof(Base::V) t;
    _ssdm_string2bits((void*)(&t), (const char*)(s), 10, _AP_W, _AP_S,
                      AP_TRN, AP_WRAP, 0, true);
    Base::V = t;
  }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(const char* s, signed char rd) {
    typeof(Base::V) t;
    _ssdm_string2bits((void*)(&t), (const char*)(s), rd, _AP_W, _AP_S,
                      AP_TRN, AP_WRAP, 0, true);
    Base::V = t;
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    Base::V = (val.get()).V;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    Base::V = val.operator bool();
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base read() volatile {

    ap_int_base ret;
    ret.V = Base::V;
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void write(const ap_int_base<_AP_W, _AP_S>& op2) volatile {

    *((volatile typename Base::DataType *)(&(Base::V))) = op2.V;
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(
      const volatile ap_int_base<_AP_W2, _AP_S2>& op2) volatile {
    *((volatile typename Base::DataType *)(&(Base::V))) = op2.V;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(
      const volatile ap_int_base<_AP_W, _AP_S>& op2) volatile {
    *((volatile typename Base::DataType *)(&(Base::V))) = op2.V;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const ap_int_base<_AP_W2, _AP_S2>& op2) volatile {
    *((volatile typename Base::DataType *)(&(Base::V))) = op2.V;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const ap_int_base<_AP_W, _AP_S>& op2) volatile {
    *((volatile typename Base::DataType *)(&(Base::V))) = op2.V;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(
      const volatile ap_int_base<_AP_W2, _AP_S2>& op2) {
    Base::V = op2.V;
    return *this;
  }

  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(const ap_int_base<_AP_W2, _AP_S2>& op2) {
    Base::V = op2.V;
    return *this;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(const volatile ap_int_base<_AP_W, _AP_S>& op2) {
    Base::V = op2.V;
    return *this;
  }


  ap_int_base& operator=(const ap_int_base<_AP_W, _AP_S>& op2) = default;
# 475 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(bool op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(char op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(signed char op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(unsigned char op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(short op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(unsigned short op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(int op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(unsigned int op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(long op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(unsigned long op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(ap_slong op) { Base::V = op; return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(ap_ulong op) { Base::V = op; return *this; }



  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(const ap_bit_ref<_AP_W2, _AP_S2>& op2) {
    Base::V = (bool)op2;
    return *this;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    Base::V = (ap_int_base<_AP_W2, false>(op2)).V;
    return *this;
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(
      const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& op2) {
    Base::V = op2.get().V;
    return *this;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    Base::V = op.to_ap_int_base().V;
    return *this;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    Base::V = (bool)op;
    return *this;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    Base::V = ((const ap_int_base<_AP_W2, false>)(op)).V;
    return *this;
  }





                inline __attribute__((always_inline)) __attribute__((nodebug)) operator RetType() const { return (RetType)(Base::V); }




                inline __attribute__((always_inline)) __attribute__((nodebug)) bool to_bool() const { return (bool)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) char to_char() const { return (char)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) signed char to_schar() const { return (signed char)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned char to_uchar() const { return (unsigned char)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) short to_short() const { return (short)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned short to_ushort() const { return (unsigned short)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) int to_int() const { return (int)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned to_uint() const { return (unsigned)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) long to_long() const { return (long)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned long to_ulong() const { return (unsigned long)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_slong to_int64() const { return (ap_slong)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ulong to_uint64() const { return (ap_ulong)(Base::V); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) half to_half() const { return (float)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) float to_float() const { return (float)(Base::V); }
                inline __attribute__((always_inline)) __attribute__((nodebug)) double to_double() const { return (double)(Base::V); }
# 580 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const volatile { return _AP_W; }
                inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const { return _AP_W; }


                inline __attribute__((always_inline)) __attribute__((nodebug)) bool iszero() const { return Base::V == 0; }


                inline __attribute__((always_inline)) __attribute__((nodebug)) bool is_zero() const { return Base::V == 0; }


                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool sign() const {
    if (_AP_S &&
        ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; }))
      return true;
    else
      return false;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void clear(int i) {
                                                           ;
    Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(0) __Repl2__ = !!0; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), i, i); __Result__; });
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void invert(int i) {
                                                           ;
    bool val = ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), i); __Result__; });
    if (val)
      Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(0) __Repl2__ = !!0; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), i, i); __Result__; });
    else
      Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(1) __Repl2__ = !!1; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), i, i); __Result__; });
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool test(int i) const {
                                                           ;
    return ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), i); __Result__; });
  }


                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& get() { return *this; }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(int i) {
                                                           ;
    Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(1) __Repl2__ = !!1; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), i, i); __Result__; });
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(int i, bool v) {
                                                           ;
    Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(v) __Repl2__ = !!v; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), i, i); __Result__; });
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& lrotate(int n) {
                                                              ;


    typeof(Base::V) l_p = Base::V << n;
    typeof(Base::V) r_p = Base::V >> (_AP_W - n);
    Base::V = l_p | r_p;



    return *this;
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& rrotate(int n) {
                                                              ;


    typeof(Base::V) l_p = Base::V << (_AP_W - n);
    typeof(Base::V) r_p = Base::V >> n;
    Base::V = l_p | r_p;



    return *this;
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& reverse() {
    Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), _AP_W - 1, 0); __Result__; });
    return *this;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void set_bit(int i, bool v) {
    Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(v) __Repl2__ = !!v; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), i, i); __Result__; });
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) bool get_bit(int i) const {
    return (bool)({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), i); __Result__; });
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void b_not() { Base::V = ~Base::V; }

  template<typename T>
                inline __attribute__((always_inline)) __attribute__((nodebug)) void checkOverflowBaseC(T val) {
# 751 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
    (void)val;

    return;
  }

                inline __attribute__((always_inline)) __attribute__((nodebug)) bool checkOverflowCsim(int _ap_w2, bool _ap_s2,
          bool print = true) const {
# 801 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
      (void)_ap_w2;
      (void)_ap_s2;
      (void)print;

      return 0;
  }
# 835 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator *=(const ap_int_base<_AP_W2, _AP_S2>& op2) { Base::V *= op2.V; return *this; }
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator +=(const ap_int_base<_AP_W2, _AP_S2>& op2) { Base::V += op2.V; return *this; }
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator -=(const ap_int_base<_AP_W2, _AP_S2>& op2) { Base::V -= op2.V; return *this; }
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator /=(const ap_int_base<_AP_W2, _AP_S2>& op2) { Base::V /= op2.V; return *this; }
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator %=(const ap_int_base<_AP_W2, _AP_S2>& op2) { Base::V %= op2.V; return *this; }
# 853 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator &=(const ap_int_base<_AP_W2, _AP_S2>& op2) { (static_cast<void>(0)); Base::V &= op2.V; return *this; }
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator |=(const ap_int_base<_AP_W2, _AP_S2>& op2) { (static_cast<void>(0)); Base::V |= op2.V; return *this; }
  template <int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator ^=(const ap_int_base<_AP_W2, _AP_S2>& op2) { (static_cast<void>(0)); Base::V ^= op2.V; return *this; }





  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator++() {
    operator+=((ap_int_base<1, false>)1);
    return *this;
  }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator--() {
    operator-=((ap_int_base<1, false>)1);
    return *this;
  }




  inline __attribute__((always_inline)) __attribute__((nodebug)) const typename RType<_AP_W,_AP_S>::arg1 operator++(int) {
    ap_int_base t = *this;
    operator+=((ap_int_base<1, false>)1);
    return t;
  }
  inline __attribute__((always_inline)) __attribute__((nodebug)) const typename RType<_AP_W,_AP_S>::arg1 operator--(int) {
    ap_int_base t = *this;
    operator-=((ap_int_base<1, false>)1);
    return t;
  }




                inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W,_AP_S>::arg1 operator+() const { return *this; }


                inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<1, false>::minus operator-() const {
    return ap_int_base<1, false>(0) - *this;
  }




                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!() const { return Base::V == 0; }





                inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W,_AP_S>::arg1 operator~() const {
    ap_int_base<_AP_W, _AP_S> r(0);
    r.V = ~Base::V;
    return r;
  }




  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W,_AP_S>::arg1 operator<<(const ap_int_base<_AP_W2, true>& op2) const {
    bool isNeg = ({ typeof(op2.V) __Val2__ = op2.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W2 - 1); __Result__; });
    ap_int_base<_AP_W2, false> sh = op2;
    if (isNeg) {
      sh = -op2;
      return operator>>(sh);
    } else
      return operator<<(sh);
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W,_AP_S>::arg1 operator<<(const ap_int_base<_AP_W2, false>& op2) const {
    ap_int_base r(0);
    r.V = Base::V << op2.to_uint();
    return r;
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W,_AP_S>::arg1 operator>>(const ap_int_base<_AP_W2, true>& op2) const {
    bool isNeg = ({ typeof(op2.V) __Val2__ = op2.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W2 - 1); __Result__; });
    ap_int_base<_AP_W2, false> sh = op2;
    if (isNeg) {
      sh = -op2;
      return operator<<(sh);
    }
    return operator>>(sh);
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W,_AP_S>::arg1 operator>>(const ap_int_base<_AP_W2, false>& op2) const {
    ap_int_base r(0);
    r.V = Base::V >> op2.to_uint();
    return r;
  }
# 964 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator<<=(const ap_int_base<_AP_W2, true>& op2) {
    bool isNeg = ({ typeof(op2.V) __Val2__ = op2.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W2 - 1); __Result__; });
    ap_int_base<_AP_W2, false> sh = op2;
    if (isNeg) {
      sh = -op2;
      return operator>>=(sh);
    } else
      return operator<<=(sh);
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator<<=(const ap_int_base<_AP_W2, false>& op2) {
    Base::V <<= op2.to_uint();
    return *this;
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator>>=(const ap_int_base<_AP_W2, true>& op2) {
    bool isNeg = ({ typeof(op2.V) __Val2__ = op2.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W2 - 1); __Result__; });
    ap_int_base<_AP_W2, false> sh = op2;
    if (isNeg) {
      sh = -op2;
      return operator<<=(sh);
    }
    return operator>>=(sh);
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base& operator>>=(const ap_int_base<_AP_W2, false>& op2) {
    Base::V >>= op2.to_uint();
    return *this;
  }
# 1013 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(const ap_int_base<_AP_W2, _AP_S2>& op2) const {
    return Base::V == op2.V;
  }
  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(const ap_int_base<_AP_W2, _AP_S2>& op2) const {
    return !(Base::V == op2.V);
  }
  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<(const ap_int_base<_AP_W2, _AP_S2>& op2) const {
    return Base::V < op2.V;
  }
  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>=(const ap_int_base<_AP_W2, _AP_S2>& op2) const {
    return Base::V >= op2.V;
  }
  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>(const ap_int_base<_AP_W2, _AP_S2>& op2) const {
    return Base::V > op2.V;
  }
  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<=(const ap_int_base<_AP_W2, _AP_S2>& op2) const {
    return Base::V <= op2.V;
  }




  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> range(int Hi, int Lo) {
    (static_cast<void>(0));
    (static_cast<void>(0));
    return ap_range_ref<_AP_W, _AP_S>(this, Hi, Lo);
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> range(int Hi, int Lo) const {
    (static_cast<void>(0));
    (static_cast<void>(0));
    return ap_range_ref<_AP_W, _AP_S>(const_cast<ap_int_base*>(this), Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> range(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> range(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) const {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> range() {
    return this->range(_AP_W - 1, 0);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> range() const {
    return this->range(_AP_W - 1, 0);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> operator()(int Hi, int Lo) {
    return this->range(Hi, Lo);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> operator()(int Hi, int Lo) const {
    return this->range(Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> operator()(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S> operator()(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) const {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }
# 1122 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W, _AP_S> operator[](int index) {
                                                                       ;
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> bvh(this, index);
    return bvh;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W, _AP_S> operator[](
      const ap_int_base<_AP_W2, _AP_S2>& index) {
                                                                       ;
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> bvh(this, index.to_int());
    return bvh;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator[](int index) const {
                                                                       ;
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> br(this, index);
    return br.to_bool();
  }
  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator[](const ap_int_base<_AP_W2, _AP_S2>& index) const {
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> br(this, index.to_int());
    return br.to_bool();
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W, _AP_S> bit(int index) {
                                                                       ;
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> bvh(this, index);
    return bvh;
  }
  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W, _AP_S> bit(
      const ap_int_base<_AP_W2, _AP_S2>& index) {
                                                                       ;
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> bvh(this, index.to_int());
    return bvh;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool bit(int index) const {
                                                                       ;
                                                                 ;
    ap_bit_ref<_AP_W, _AP_S> br(this, index);
    return br.to_bool();
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool bit(const ap_int_base<_AP_W2, _AP_S2>& index) const {
    return bit(index.to_int());
  }
# 1189 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
                inline __attribute__((always_inline)) __attribute__((nodebug)) int countLeadingZeros() const {

    if (_AP_W <= 32) {
      ap_int_base<32, false> t(-1UL), x;
      x.V = ({ typename _ap_type::remove_const<typeof(this->V)>::type __Result__ = 0; typeof(this->V) __Val2__ = this->V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), _AP_W - 1, 0); __Result__; });
      t.V = ({ typename _ap_type::remove_const<typeof(t.V)>::type __Result__ = 0; typeof(t.V) __Val2__ = t.V; typeof(x.V) __Repl2__ = x.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 0, _AP_W - 1); __Result__; });
      return __builtin_ctz(t.V);
    } else if (_AP_W <= 64) {
      ap_int_base<64, false> t(-1ULL);
      ap_int_base<64, false> x;
      x.V = ({ typename _ap_type::remove_const<typeof(this->V)>::type __Result__ = 0; typeof(this->V) __Val2__ = this->V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), _AP_W - 1, 0); __Result__; });
      t.V = ({ typename _ap_type::remove_const<typeof(t.V)>::type __Result__ = 0; typeof(t.V) __Val2__ = t.V; typeof(x.V) __Repl2__ = x.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 0, _AP_W - 1); __Result__; });
      return __builtin_ctzll(t.V);
    } else {
      enum { __N = (_AP_W + 63) / 64 };
      int NZeros = 0;
      int i = 0;
      bool hitNonZero = false;
      VITIS_LOOP_1207_1: for (i = 0; i < __N - 1; ++i) {
        ap_int_base<64, false> t;
        t.V = ({ typename _ap_type::remove_const<typeof(this->V)>::type __Result__ = 0; typeof(this->V) __Val2__ = this->V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), _AP_W - i * 64 - 64, _AP_W - i * 64 - 1); __Result__; });
        NZeros += hitNonZero ? 0 : __builtin_clzll(t.V);
        hitNonZero |= (t.V != 0);
      }
      if (!hitNonZero) {
        ap_int_base<64, false> t(-1ULL);
        enum { REST = (_AP_W - 1) % 64 };
        ap_int_base<64, false> x;
        x.V = ({ typename _ap_type::remove_const<typeof(this->V)>::type __Result__ = 0; typeof(this->V) __Val2__ = this->V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, REST); __Result__; });
        t.V = ({ typename _ap_type::remove_const<typeof(t.V)>::type __Result__ = 0; typeof(t.V) __Val2__ = t.V; typeof(x.V) __Repl2__ = x.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 63 - REST, 63); __Result__; });
        NZeros += __builtin_clzll(t.V);
      }
      return NZeros;
    }



  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  concat(const ap_int_base<_AP_W2, _AP_S2>& a2) const {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  concat(ap_int_base<_AP_W2, _AP_S2>& a2) {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(*this, a2);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline))
      __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >
      operator,(const ap_range_ref<_AP_W2, _AP_S2> &a2) const {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_range_ref<_AP_W2, _AP_S2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<ap_range_ref<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline))
      __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >
      operator,(ap_range_ref<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_range_ref<_AP_W2, _AP_S2> >(*this, a2);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(const ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(ap_int_base<_AP_W2, _AP_S2> &a2) const {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this), a2);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(const ap_int_base<_AP_W2, _AP_S2> &a2) const {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(*this, a2);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, 1, ap_bit_ref<_AP_W2, _AP_S2> >
  operator,(const ap_bit_ref<_AP_W2, _AP_S2> &a2) const {
    return ap_concat_ref<_AP_W, ap_int_base, 1, ap_bit_ref<_AP_W2, _AP_S2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<ap_bit_ref<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, 1, ap_bit_ref<_AP_W2, _AP_S2> >
  operator,(ap_bit_ref<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_int_base, 1, ap_bit_ref<_AP_W2, _AP_S2> >(
        *this, a2);
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2 + _AP_W3,
                       ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >
  operator,(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> &a2) {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2 + _AP_W3,
                         ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>&>(a2));
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, _AP_W2 + _AP_W3,
                       ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >
  operator,(ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> &a2) {
    return ap_concat_ref<_AP_W, ap_int_base, _AP_W2 + _AP_W3,
                         ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >(*this,
                                                                         a2);
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<
      _AP_W, ap_int_base, _AP_W2,
      af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
  operator,(const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>
                &a2) const {
    return ap_concat_ref<
        _AP_W, ap_int_base, _AP_W2,
        af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<
            af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(a2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<
      _AP_W, ap_int_base, _AP_W2,
      af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
  operator,(af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &a2) {
    return ap_concat_ref<
        _AP_W, ap_int_base, _AP_W2,
        af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(*this,
                                                                       a2);
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline))
      __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, 1,
                    af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
      operator,(const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>
                    &a2) const {
    return ap_concat_ref<
        _AP_W, ap_int_base, 1,
        af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        const_cast<ap_int_base<_AP_W, _AP_S>&>(*this),
        const_cast<af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(
            a2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline))
      __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_int_base, 1,
                    af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
      operator,(
          af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &a2) {
    return ap_concat_ref<
        _AP_W, ap_int_base, 1,
        af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(*this, a2);
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_W2 + _AP_W3) > (_AP_W) ? (_AP_W2 + _AP_W3) : (_AP_W)), _AP_S> operator&(
      const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& a2) {
    return *this & a2.get();
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_W2 + _AP_W3) > (_AP_W) ? (_AP_W2 + _AP_W3) : (_AP_W)), _AP_S> operator|(
      const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& a2) {
    return *this | a2.get();
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_W2 + _AP_W3) > (_AP_W) ? (_AP_W2 + _AP_W3) : (_AP_W)), _AP_S> operator^(
      const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& a2) {
    return *this ^ a2.get();
  }

  template <int _AP_W3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(const ap_int_base<_AP_W3, false>& val) {
    Base::V = val.V;
  }





  inline __attribute__((always_inline)) __attribute__((nodebug)) bool and_reduce() const { return ({ typeof(Base::V) __what2__ = Base::V; __builtin_bit_and_reduce((void*)(&__what2__)); }); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool nand_reduce() const { return ({ typeof(Base::V) __what2__ = Base::V; __builtin_bit_nand_reduce((void*)(&__what2__)); }); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool or_reduce() const { return ({ typeof(Base::V) __what2__ = Base::V; __builtin_bit_or_reduce((void*)(&__what2__)); }); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool nor_reduce() const { return !(({ typeof(Base::V) __what2__ = Base::V; __builtin_bit_or_reduce((void*)(&__what2__)); })); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool xor_reduce() const { return ({ typeof(Base::V) __what2__ = Base::V; __builtin_bit_xor_reduce((void*)(&__what2__)); }); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool xnor_reduce() const {
    return !(({ typeof(Base::V) __what2__ = Base::V; __builtin_bit_xor_reduce((void*)(&__what2__)); }));
  }
# 1429 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) char* to_string(signed char rd = 2, bool sign = _AP_S) const {
    (void)(rd);
    (void)(sign);
    return 0;
  }

};
# 1490 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::mult_base lhs(op); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::mult_base rhs(op2); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::mult_base ret(0); ret.V = lhs.V * rhs.V; return ret; }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::plus_base lhs(op); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::plus_base rhs(op2); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::plus_base ret(0); ret.V = lhs.V + rhs.V; return ret; }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::minus_base lhs(op); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::minus_base rhs(op2); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::minus_base ret(0); ret.V = lhs.V - rhs.V; return ret; }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base lhs(op); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base rhs(op2); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base ret(0); ret.V = lhs.V & rhs.V; return ret; }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base lhs(op); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base rhs(op2); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base ret(0); ret.V = lhs.V | rhs.V; return ret; }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base lhs(op); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base rhs(op2); typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::logic_base ret(0); ret.V = lhs.V ^ rhs.V; return ret; }
# 1509 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::div_base ret(0); ret.V = op.V / op2.V; return ret; }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W2, _AP_S2>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { typename ap_int_base<_AP_W, _AP_S>::template RType< _AP_W2, _AP_S2>::mod_base ret(0); ret.V = op.V % op2.V; return ret; }
# 1537 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <typename PTR_TYPE, int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) PTR_TYPE* operator +(PTR_TYPE* i_op, const ap_int_base<_AP_W, _AP_S>& op) { ap_slong op2 = op.to_int64(); return i_op + op2; } template <typename PTR_TYPE, int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) PTR_TYPE* operator +(const ap_int_base<_AP_W, _AP_S>& op, PTR_TYPE* i_op) { ap_slong op2 = op.to_int64(); return op2 + i_op; }
template <typename PTR_TYPE, int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) PTR_TYPE* operator -(PTR_TYPE* i_op, const ap_int_base<_AP_W, _AP_S>& op) { ap_slong op2 = op.to_int64(); return i_op - op2; } template <typename PTR_TYPE, int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) PTR_TYPE* operator -(const ap_int_base<_AP_W, _AP_S>& op, PTR_TYPE* i_op) { ap_slong op2 = op.to_int64(); return op2 - i_op; }
# 1566 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator *(float i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op * op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator *(const ap_int_base<_AP_W, _AP_S>& op, float i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 * i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator /(float i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op / op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator /(const ap_int_base<_AP_W, _AP_S>& op, float i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 / i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator +(float i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op + op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator +(const ap_int_base<_AP_W, _AP_S>& op, float i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 + i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator -(float i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op - op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float operator -(const ap_int_base<_AP_W, _AP_S>& op, float i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 - i_op; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator *(double i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op * op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator *(const ap_int_base<_AP_W, _AP_S>& op, double i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 * i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator /(double i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op / op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator /(const ap_int_base<_AP_W, _AP_S>& op, double i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 / i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator +(double i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op + op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator +(const ap_int_base<_AP_W, _AP_S>& op, double i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 + i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator -(double i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op - op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double operator -(const ap_int_base<_AP_W, _AP_S>& op, double i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 - i_op; }
# 1591 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator *(half i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op * op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator *(const ap_int_base<_AP_W, _AP_S>& op, half i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 * i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator /(half i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op / op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator /(const ap_int_base<_AP_W, _AP_S>& op, half i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 / i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator +(half i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op + op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator +(const ap_int_base<_AP_W, _AP_S>& op, half i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 + i_op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator -(half i_op, const ap_int_base<_AP_W, _AP_S>& op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return i_op - op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half operator -(const ap_int_base<_AP_W, _AP_S>& op, half i_op) { typename ap_int_base<_AP_W, _AP_S>::RetType op2 = op; return op2 - i_op; }
# 1623 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::mult operator *(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op * ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::plus operator +(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op + ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::minus operator -(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op - ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::div operator /(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op / ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::mod operator %(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op % ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::logic operator &(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op & ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::logic operator |(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op | ap_int_base<1, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::logic operator ^(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<1, false>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, bool i_op) { return op ^ ap_int_base<1, false>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::mult operator *(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op * ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::plus operator +(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op + ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::minus operator -(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op - ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::div operator /(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op / ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::mod operator %(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op % ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::logic operator &(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op & ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::logic operator |(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op | ap_int_base<8, CHAR_IS_SIGNED>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::logic operator ^(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, CHAR_IS_SIGNED>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, char i_op) { return op ^ ap_int_base<8, CHAR_IS_SIGNED>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::mult operator *(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op * ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::plus operator +(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op + ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::minus operator -(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op - ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::div operator /(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op / ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::mod operator %(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op % ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::logic operator &(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op & ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::logic operator |(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op | ap_int_base<8, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::logic operator ^(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, true>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, signed char i_op) { return op ^ ap_int_base<8, true>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::mult operator *(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op * ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::plus operator +(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op + ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::minus operator -(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op - ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::div operator /(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op / ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::mod operator %(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op % ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::logic operator &(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op & ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::logic operator |(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op | ap_int_base<8, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::logic operator ^(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<8, false>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, unsigned char i_op) { return op ^ ap_int_base<8, false>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::mult operator *(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op * ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::plus operator +(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op + ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::minus operator -(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op - ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::div operator /(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op / ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::mod operator %(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op % ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::logic operator &(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op & ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::logic operator |(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op | ap_int_base<_AP_SIZE_short, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::logic operator ^(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, true>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, short i_op) { return op ^ ap_int_base<_AP_SIZE_short, true>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::mult operator *(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op * ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::plus operator +(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op + ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::minus operator -(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op - ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::div operator /(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op / ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::mod operator %(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op % ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::logic operator &(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op & ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::logic operator |(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op | ap_int_base<_AP_SIZE_short, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::logic operator ^(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_short, false>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, unsigned short i_op) { return op ^ ap_int_base<_AP_SIZE_short, false>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::mult operator *(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op * ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::plus operator +(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op + ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::minus operator -(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op - ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::div operator /(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op / ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::mod operator %(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op % ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::logic operator &(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op & ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::logic operator |(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op | ap_int_base<_AP_SIZE_int, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::logic operator ^(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, true>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, int i_op) { return op ^ ap_int_base<_AP_SIZE_int, true>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::mult operator *(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op * ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::plus operator +(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op + ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::minus operator -(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op - ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::div operator /(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op / ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::mod operator %(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op % ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::logic operator &(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op & ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::logic operator |(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op | ap_int_base<_AP_SIZE_int, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::logic operator ^(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_int, false>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, unsigned int i_op) { return op ^ ap_int_base<_AP_SIZE_int, false>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::mult operator *(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op * ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::plus operator +(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op + ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::minus operator -(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op - ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::div operator /(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op / ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::mod operator %(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op % ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::logic operator &(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op & ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::logic operator |(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op | ap_int_base<_AP_SIZE_long, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::logic operator ^(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, true>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, long i_op) { return op ^ ap_int_base<_AP_SIZE_long, true>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::mult operator *(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op * ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::plus operator +(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op + ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::minus operator -(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op - ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::div operator /(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op / ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::mod operator %(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op % ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::logic operator &(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op & ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::logic operator |(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op | ap_int_base<_AP_SIZE_long, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::logic operator ^(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_long, false>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, unsigned long i_op) { return op ^ ap_int_base<_AP_SIZE_long, false>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::mult operator *(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op * ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::plus operator +(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op + ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::minus operator -(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op - ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::div operator /(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op / ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::mod operator %(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op % ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::logic operator &(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op & ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::logic operator |(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op | ap_int_base<_AP_SIZE_ap_slong, true>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::logic operator ^(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, true>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, ap_slong i_op) { return op ^ ap_int_base<_AP_SIZE_ap_slong, true>(i_op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::mult operator *(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) *(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::mult operator *(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op * ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::plus operator +(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) +(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::plus operator +(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op + ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::minus operator -(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) -(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::minus operator -(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op - ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::div operator /(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) /(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::div operator /(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op / ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::mod operator %(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) %(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::mod operator %(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op % ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::logic operator &(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) &(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::logic operator &(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op & ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::logic operator |(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) |(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::logic operator |(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op | ap_int_base<_AP_SIZE_ap_slong, false>(i_op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::logic operator ^(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) ^(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_SIZE_ap_slong, false>::logic operator ^(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong i_op) { return op ^ ap_int_base<_AP_SIZE_ap_slong, false>(i_op); }
# 1662 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, char op2) { ap_int_base<_AP_W, _AP_S> r(0); if (CHAR_IS_SIGNED) r.V = op2 >= 0 ? (op.V << op2) : (op.V >> (-op2)); else r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, char op2) { ap_int_base<_AP_W, _AP_S> r(0); if (CHAR_IS_SIGNED) r.V = op2 >= 0 ? (op.V >> op2) : (op.V << (-op2)); else r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V << op2) : (op.V >> (-op2)); else r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V >> op2) : (op.V << (-op2)); else r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, short op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V << op2) : (op.V >> (-op2)); else r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, short op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V >> op2) : (op.V << (-op2)); else r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, int op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V << op2) : (op.V >> (-op2)); else r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, int op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V >> op2) : (op.V << (-op2)); else r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, long op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V << op2) : (op.V >> (-op2)); else r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, long op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V >> op2) : (op.V << (-op2)); else r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V << op2) : (op.V >> (-op2)); else r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { ap_int_base<_AP_W, _AP_S> r(0); if (true) r.V = op2 >= 0 ? (op.V >> op2) : (op.V << (-op2)); else r.V = op.V >> op2; return r; }
# 1686 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, bool op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, bool op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V >> op2; return r; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator<<( const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V << op2; return r; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, _AP_S>::template RType<_AP_W,_AP_S>::arg1 operator>>( const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { ap_int_base<_AP_W, _AP_S> r(0); r.V = op.V >> op2; return r; }
# 1717 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op += ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op -= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op *= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op /= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op %= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op &= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op |= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op ^= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op >>= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op <<= ap_int_base<1, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op += ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op -= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op *= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op /= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op %= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op &= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op |= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op ^= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op >>= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, char op2) { return op <<= ap_int_base<8, CHAR_IS_SIGNED>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op += ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op -= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op *= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op /= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op %= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op &= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op |= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op ^= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op >>= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op <<= ap_int_base<8, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op += ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op -= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op *= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op /= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op %= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op &= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op |= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op ^= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op >>= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op <<= ap_int_base<8, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op += ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op -= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op *= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op /= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op %= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op &= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op |= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op ^= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op >>= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, short op2) { return op <<= ap_int_base<_AP_SIZE_short, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op += ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op -= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op *= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op /= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op %= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op &= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op |= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op ^= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op >>= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op <<= ap_int_base<_AP_SIZE_short, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op += ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op -= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op *= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op /= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op %= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op &= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op |= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op ^= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op >>= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, int op2) { return op <<= ap_int_base<_AP_SIZE_int, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op += ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op -= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op *= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op /= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op %= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op &= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op |= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op ^= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op >>= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op <<= ap_int_base<_AP_SIZE_int, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op += ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op -= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op *= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op /= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op %= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op &= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op |= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op ^= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op >>= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, long op2) { return op <<= ap_int_base<_AP_SIZE_long, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op += ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op -= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op *= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op /= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op %= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op &= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op |= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op ^= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op >>= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op <<= ap_int_base<_AP_SIZE_long, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op += ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op -= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op *= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op /= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op %= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op &= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op |= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op ^= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op >>= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op <<= ap_int_base<_AP_SIZE_ap_slong, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator +=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op += ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator -=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op -= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator *=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op *= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator /=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op /= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator %=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op %= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator &=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op &= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator |=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op |= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator ^=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op ^= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator >>=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op >>= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, _AP_S>& operator <<=( ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op <<= ap_int_base<_AP_SIZE_ap_slong, false>(op2); }
# 1750 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half& operator +=( half& op2, ap_int_base<_AP_W, _AP_S>& op) { half op_rt = op.to_half(); return op2 += op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half& operator -=( half& op2, ap_int_base<_AP_W, _AP_S>& op) { half op_rt = op.to_half(); return op2 -= op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half& operator *=( half& op2, ap_int_base<_AP_W, _AP_S>& op) { half op_rt = op.to_half(); return op2 *= op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) half& operator /=( half& op2, ap_int_base<_AP_W, _AP_S>& op) { half op_rt = op.to_half(); return op2 /= op_rt; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float& operator +=( float& op2, ap_int_base<_AP_W, _AP_S>& op) { float op_rt = op.to_float(); return op2 += op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float& operator -=( float& op2, ap_int_base<_AP_W, _AP_S>& op) { float op_rt = op.to_float(); return op2 -= op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float& operator *=( float& op2, ap_int_base<_AP_W, _AP_S>& op) { float op_rt = op.to_float(); return op2 *= op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) float& operator /=( float& op2, ap_int_base<_AP_W, _AP_S>& op) { float op_rt = op.to_float(); return op2 /= op_rt; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double& operator +=( double& op2, ap_int_base<_AP_W, _AP_S>& op) { double op_rt = op.to_double(); return op2 += op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double& operator -=( double& op2, ap_int_base<_AP_W, _AP_S>& op) { double op_rt = op.to_double(); return op2 -= op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double& operator *=( double& op2, ap_int_base<_AP_W, _AP_S>& op) { double op_rt = op.to_double(); return op2 *= op_rt; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) double& operator /=( double& op2, ap_int_base<_AP_W, _AP_S>& op) { double op_rt = op.to_double(); return op2 /= op_rt; }
# 1778 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op > ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op < ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op >= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op <= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op == ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(bool i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<1, false>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, bool op2) { return op != ap_int_base<1, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, char op2) { return op > ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, char op2) { return op < ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, char op2) { return op >= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, char op2) { return op <= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, char op2) { return op == ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, CHAR_IS_SIGNED>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, char op2) { return op != ap_int_base<8, CHAR_IS_SIGNED>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op > ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op < ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op >= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op <= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op == ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(signed char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, true>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, signed char op2) { return op != ap_int_base<8, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op > ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op < ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op >= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op <= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op == ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned char i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<8, false>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, unsigned char op2) { return op != ap_int_base<8, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, short op2) { return op > ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, short op2) { return op < ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, short op2) { return op >= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, short op2) { return op <= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, short op2) { return op == ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, true>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, short op2) { return op != ap_int_base<_AP_SIZE_short, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op > ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op < ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op >= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op <= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op == ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned short i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_short, false>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, unsigned short op2) { return op != ap_int_base<_AP_SIZE_short, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, int op2) { return op > ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, int op2) { return op < ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, int op2) { return op >= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, int op2) { return op <= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, int op2) { return op == ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, true>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, int op2) { return op != ap_int_base<_AP_SIZE_int, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op > ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op < ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op >= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op <= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op == ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned int i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_int, false>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, unsigned int op2) { return op != ap_int_base<_AP_SIZE_int, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, long op2) { return op > ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, long op2) { return op < ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, long op2) { return op >= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, long op2) { return op <= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, long op2) { return op == ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, true>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, long op2) { return op != ap_int_base<_AP_SIZE_long, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op > ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op < ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op >= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op <= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op == ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned long i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_long, false>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, unsigned long op2) { return op != ap_int_base<_AP_SIZE_long, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op > ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op < ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op >= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op <= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op == ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(ap_slong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, true>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, ap_slong op2) { return op != ap_int_base<_AP_SIZE_ap_slong, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) > op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op > ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) < op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op < ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) >= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op >= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) <= op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op <= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) == op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op == ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(ap_ulong i_op, const ap_int_base<_AP_W, _AP_S>& op) { return ap_int_base<_AP_SIZE_ap_slong, false>(i_op) != op; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op, ap_ulong op2) { return op != ap_int_base<_AP_SIZE_ap_slong, false>(op2); }
# 1815 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
  template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op1, double op2) { return op1.to_double() > op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(double op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 > op2.to_double() ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W, _AP_S>& op1, float op2) { return op1.to_double() > op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(float op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 > op2.to_double() ; }
  template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op1, double op2) { return op1.to_double() < op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(double op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 < op2.to_double() ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W, _AP_S>& op1, float op2) { return op1.to_double() < op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(float op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 < op2.to_double() ; }
  template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op1, double op2) { return op1.to_double() >= op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(double op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 >= op2.to_double() ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W, _AP_S>& op1, float op2) { return op1.to_double() >= op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(float op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 >= op2.to_double() ; }
  template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op1, double op2) { return op1.to_double() <= op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(double op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 <= op2.to_double() ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W, _AP_S>& op1, float op2) { return op1.to_double() <= op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(float op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 <= op2.to_double() ; }
  template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op1, double op2) { return op1.to_double() == op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(double op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 == op2.to_double() ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W, _AP_S>& op1, float op2) { return op1.to_double() == op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(float op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 == op2.to_double() ; }
  template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op1, double op2) { return op1.to_double() != op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(double op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 != op2.to_double() ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W, _AP_S>& op1, float op2) { return op1.to_double() != op2 ; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(float op1, const ap_int_base<_AP_W, _AP_S>& op2) { return op1 != op2.to_double() ; }
# 1845 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::plus operator +(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) + op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::plus operator +(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 + ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::minus operator -(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) - op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::minus operator -(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 - ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::mult operator *(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) * op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::mult operator *(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 * ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::div operator /(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) / op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::div operator /(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 / ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::mod operator %(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) % op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::mod operator %(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 % ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::logic operator &(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) & op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::logic operator &(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 & ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::logic operator |(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) | op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::logic operator |(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 | ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::logic operator ^(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) ^ op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::logic operator ^(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 ^ ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::arg1 operator >>(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) >> op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::arg1 operator >>(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 >> ap_int_base<_AP_W2, false>(op2); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::arg1 operator <<(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1) << op2; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<_AP_W2, _AP_S2>::arg1 operator <<(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 << ap_int_base<_AP_W2, false>(op2); }
# 1876 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator +=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 += ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator +=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp += op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator -=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 -= ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator -=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp -= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator *=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 *= ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator *=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp *= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator /=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 /= ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator /=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp /= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator %=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 %= ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator %=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp %= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator >>=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 >>= ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator >>=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp >>= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator <<=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1 <<= ap_int_base<_AP_W2, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator <<=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp <<= op2; op1 = tmp; return op1; }
# 1908 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator &=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W2, false> tmp(op2); op1.V &= tmp.V; return op1; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator &=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp.V &= op2.V; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator |=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W2, false> tmp(op2); op1.V |= tmp.V; return op1; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator |=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp.V |= op2.V; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator ^=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W2, false> tmp(op2); op1.V ^= tmp.V; return op1; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W1, _AP_S1>& operator ^=( ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<_AP_W1, false> tmp(op1); tmp.V ^= op2.V; op1 = tmp; return op1; }
# 1927 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1).operator ==(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1.operator ==(op2.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1).operator !=(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1.operator !=(op2.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1).operator >(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1.operator >(op2.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1).operator >=(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1.operator >=(op2.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1).operator <(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1.operator <(op2.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<_AP_W1, false>(op1).operator <=(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_range_ref<_AP_W2, _AP_S2>& op2) { return op1.operator <=(op2.operator ap_int_base<_AP_W2, false>()); }
# 1954 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::plus operator +(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 + ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::plus operator +(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) + op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::minus operator -(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 - ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::minus operator -(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) - op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::mult operator *(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 * ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::mult operator *(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) * op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::div operator /(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 / ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::div operator /(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) / op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::mod operator %(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 % ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::mod operator %(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) % op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::logic operator &(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 & ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::logic operator &(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) & op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::logic operator |(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 | ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::logic operator |(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) | op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::logic operator ^(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 ^ ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::logic operator ^(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) ^ op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::arg1 operator >>(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 >> ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::arg1 operator >>(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) >> op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W1, _AP_S1>::template RType<1, false>::arg1 operator <<(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 << ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<1, false>::template RType<_AP_W2, _AP_S2>::arg1 operator <<(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) << op2; }
# 1985 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator +=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 += ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator +=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp += op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator -=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 -= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator -=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp -= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator *=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 *= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator *=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp *= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator /=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 /= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator /=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp /= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator %=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 %= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator %=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp %= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator >>=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 >>= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator >>=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp >>= op2; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator <<=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 <<= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator <<=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp <<= op2; op1 = tmp; return op1; }
# 2017 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator &=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op2); op1.V &= tmp.V; return op1; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator &=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp.V &= op2.V; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator |=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op2); op1.V |= tmp.V; return op1; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator |=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp.V |= op2.V; op1 = tmp; return op1; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W1, _AP_S1>& operator ^=( ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op2); op1.V ^= tmp.V; return op1; } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref<_AP_W1, _AP_S1>& operator ^=( ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { ap_int_base<1, false> tmp(op1); tmp.V ^= op2.V; op1 = tmp; return op1; }
# 2036 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 == ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) == op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 != ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) != op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 > ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) > op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 >= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) >= op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 < ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) < op2; }
template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_int_base<_AP_W1, _AP_S1>& op1, const ap_bit_ref<_AP_W2, _AP_S2>& op2) { return op1 <= ap_int_base<1, false>(op2); } template <int _AP_W1, bool _AP_S1, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W1, _AP_S1>& op1, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op1) <= op2; }
# 2143 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_base.h"
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_int_base<_AP_W3, _AP_S3>& op1, const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op2) { return op1 == op2.get(); } template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op1, const ap_int_base<_AP_W3, _AP_S3>& op2) { return op1.get() == op2; }
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_int_base<_AP_W3, _AP_S3>& op1, const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op2) { return op1 != op2.get(); } template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op1, const ap_int_base<_AP_W3, _AP_S3>& op2) { return op1.get() != op2; }
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_int_base<_AP_W3, _AP_S3>& op1, const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op2) { return op1 > op2.get(); } template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op1, const ap_int_base<_AP_W3, _AP_S3>& op2) { return op1.get() > op2; }
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_int_base<_AP_W3, _AP_S3>& op1, const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op2) { return op1 >= op2.get(); } template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op1, const ap_int_base<_AP_W3, _AP_S3>& op2) { return op1.get() >= op2; }
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_int_base<_AP_W3, _AP_S3>& op1, const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op2) { return op1 < op2.get(); } template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op1, const ap_int_base<_AP_W3, _AP_S3>& op2) { return op1.get() < op2; }
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_int_base<_AP_W3, _AP_S3>& op1, const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op2) { return op1 <= op2.get(); } template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2, int _AP_W3, bool _AP_S3> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& op1, const ap_int_base<_AP_W3, _AP_S3>& op2) { return op1.get() <= op2; }
# 12 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 2
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h" 1
# 27 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W1, typename _AP_T1, int _AP_W2, typename _AP_T2>
struct ap_concat_ref {
  enum {
    _AP_WR = _AP_W1 + _AP_W2,
  };

  _AP_T1& mbv1;
  _AP_T2& mbv2;

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref(const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& ref)
      : mbv1(ref.mbv1), mbv2(ref.mbv2) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref(_AP_T1& bv1, _AP_T2& bv2) : mbv1(bv1), mbv2(bv2) {}

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(const ap_int_base<_AP_W3, _AP_S3>& val) {
    ap_int_base<_AP_W1 + _AP_W2, false> vval(val);
    int W_ref1 = mbv1.length();
    int W_ref2 = mbv2.length();
    ap_int_base<_AP_W1, false> Part1;
    Part1.V = ({ typename _ap_type::remove_const<typeof(vval.V)>::type __Result__ = 0; typeof(vval.V) __Val2__ = vval.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), W_ref2, W_ref1 + W_ref2 - 1); __Result__; });
    mbv1.set(Part1);
    ap_int_base<_AP_W2, false> Part2;
    Part2.V = ({ typename _ap_type::remove_const<typeof(vval.V)>::type __Result__ = 0; typeof(vval.V) __Val2__ = vval.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, W_ref2 - 1); __Result__; });
    mbv2.set(Part2);
    return *this;
  }
# 70 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(bool val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(char val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(signed char val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(unsigned char val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(short val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(unsigned short val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(int val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(unsigned int val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(long val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(unsigned long val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(ap_slong val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(ap_ulong val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(half val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(float val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(double val) { ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val); return operator=(tmpVal); }





  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(
      const ap_concat_ref<_AP_W1, _AP_T1, _AP_W2, _AP_T2>& val) {
    ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val);
    return operator=(tmpVal);
  }

  template <int _AP_W3, typename _AP_T3, int _AP_W4, typename _AP_T4>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(
      const ap_concat_ref<_AP_W3, _AP_T3, _AP_W4, _AP_T4>& val) {
    ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val);
    return operator=(tmpVal);
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(const ap_bit_ref<_AP_W3, _AP_S3>& val) {
    ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val);
    return operator=(tmpVal);
  }
  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(const ap_range_ref<_AP_W3, _AP_S3>& val) {
    ap_int_base<_AP_W1 + _AP_W2, false> tmpVal(val);
    return operator=(tmpVal);
  }

  template <int _AP_W3, int _AP_I3, bool _AP_S3, ap_q_mode _AP_Q3,
            ap_o_mode _AP_O3, int _AP_N3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(
      const af_range_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3>& val) {
    return operator=((const ap_int_base<_AP_W3, false>)(val));
  }

  template <int _AP_W3, int _AP_I3, bool _AP_S3, ap_q_mode _AP_Q3,
            ap_o_mode _AP_O3, int _AP_N3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(
      const ap_fixed_base<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3>&
          val) {
    return operator=(val.to_ap_int_base());
  }

  template <int _AP_W3, int _AP_I3, bool _AP_S3, ap_q_mode _AP_Q3,
            ap_o_mode _AP_O3, int _AP_N3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref& operator=(
      const af_bit_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3>& val) {
    return operator=((ap_ulong)(bool)(val));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_int_base<_AP_WR, false>() const { return get(); }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_ulong() const { return get().to_uint64(); }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3,
                       ap_range_ref<_AP_W3, _AP_S3> >
  operator,(const ap_range_ref<_AP_W3, _AP_S3> &a2) {
    return ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3,
                         ap_range_ref<_AP_W3, _AP_S3> >(
        *this, const_cast<ap_range_ref<_AP_W3, _AP_S3>&>(a2));
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3, ap_int_base<_AP_W3, _AP_S3> >
      operator,(ap_int_base<_AP_W3, _AP_S3> &a2) {
    return ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3,
                         ap_int_base<_AP_W3, _AP_S3> >(*this, a2);
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3, ap_int_base<_AP_W3, _AP_S3> >
      operator,(volatile ap_int_base<_AP_W3, _AP_S3> &a2) {
    return ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3,
                         ap_int_base<_AP_W3, _AP_S3> >(
        *this, const_cast<ap_int_base<_AP_W3, _AP_S3>&>(a2));
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3, ap_int_base<_AP_W3, _AP_S3> >
      operator,(const ap_int_base<_AP_W3, _AP_S3> &a2) {
    return ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3,
                         ap_int_base<_AP_W3, _AP_S3> >(
        *this, const_cast<ap_int_base<_AP_W3, _AP_S3>&>(a2));
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3, ap_int_base<_AP_W3, _AP_S3> >
      operator,(const volatile ap_int_base<_AP_W3, _AP_S3> &a2) {

    ap_int_base<_AP_W3, _AP_S3> op(a2);
    return ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3,
                         ap_int_base<_AP_W3, _AP_S3> >(
        *this, const_cast<ap_int_base<_AP_W3, _AP_S3>&>(op));
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_WR, ap_concat_ref, 1, ap_bit_ref<_AP_W3, _AP_S3> >
  operator,(const ap_bit_ref<_AP_W3, _AP_S3> &a2) {
    return ap_concat_ref<_AP_WR, ap_concat_ref, 1, ap_bit_ref<_AP_W3, _AP_S3> >(
        *this, const_cast<ap_bit_ref<_AP_W3, _AP_S3>&>(a2));
  }

  template <int _AP_W3, typename _AP_T3, int _AP_W4, typename _AP_T4>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3 + _AP_W4,
                       ap_concat_ref<_AP_W3, _AP_T3, _AP_W4, _AP_T4> >
  operator,(const ap_concat_ref<_AP_W3, _AP_T3, _AP_W4, _AP_T4> &a2) {
    return ap_concat_ref<_AP_WR, ap_concat_ref, _AP_W3 + _AP_W4,
                         ap_concat_ref<_AP_W3, _AP_T3, _AP_W4, _AP_T4> >(
        *this, const_cast<ap_concat_ref<_AP_W3, _AP_T3, _AP_W4, _AP_T4>&>(a2));
  }

  template <int _AP_W3, int _AP_I3, bool _AP_S3, ap_q_mode _AP_Q3,
            ap_o_mode _AP_O3, int _AP_N3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<
      _AP_WR, ap_concat_ref, _AP_W3,
      af_range_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3> >
  operator,(
      const af_range_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3> &a2) {
    return ap_concat_ref<
        _AP_WR, ap_concat_ref, _AP_W3,
        af_range_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3> >(
        *this,
        const_cast<
            af_range_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3>&>(a2));
  }

  template <int _AP_W3, int _AP_I3, bool _AP_S3, ap_q_mode _AP_Q3,
            ap_o_mode _AP_O3, int _AP_N3>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_WR, ap_concat_ref, 1,
                    af_bit_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3> >
      operator,(const af_bit_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3>
                    &a2) {
    return ap_concat_ref<
        _AP_WR, ap_concat_ref, 1,
        af_bit_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3> >(
        *this,
        const_cast<af_bit_ref<_AP_W3, _AP_I3, _AP_S3, _AP_Q3, _AP_O3, _AP_N3>&>(
            a2));
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_WR) > (_AP_W3) ? (_AP_WR) : (_AP_W3)), _AP_S3> operator&(
      const ap_int_base<_AP_W3, _AP_S3>& a2) {
    return get() & a2;
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_WR) > (_AP_W3) ? (_AP_WR) : (_AP_W3)), _AP_S3> operator|(
      const ap_int_base<_AP_W3, _AP_S3>& a2) {
    return get() | a2;
  }

  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_WR) > (_AP_W3) ? (_AP_WR) : (_AP_W3)), _AP_S3> operator^(
      const ap_int_base<_AP_W3, _AP_S3>& a2) {
    return get() ^ a2;
  }
# 258 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_WR, false> get() const {
    ap_int_base<_AP_WR, false> tmpVal(0);
    int W_ref1 = mbv1.length();
    int W_ref2 = mbv2.length();
    ap_int_base<_AP_W2, false> v2(mbv2);
    ap_int_base<_AP_W1, false> v1(mbv1);
    tmpVal.V = ({ typename _ap_type::remove_const<typeof(tmpVal.V)>::type __Result__ = 0; typeof(tmpVal.V) __Val2__ = tmpVal.V; typeof(v2.V) __Repl2__ = v2.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 0, W_ref2 - 1); __Result__; });
    tmpVal.V =
        ({ typename _ap_type::remove_const<typeof(tmpVal.V)>::type __Result__ = 0; typeof(tmpVal.V) __Val2__ = tmpVal.V; typeof(v1.V) __Repl2__ = v1.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), W_ref2, W_ref1 + W_ref2 - 1); __Result__; });
    return tmpVal;
  }

  template <int _AP_W3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(const ap_int_base<_AP_W3, false>& val) {
    ap_int_base<_AP_W1 + _AP_W2, false> vval(val);
    int W_ref1 = mbv1.length();
    int W_ref2 = mbv2.length();
    ap_int_base<_AP_W1, false> tmpVal1;
    tmpVal1.V = ({ typename _ap_type::remove_const<typeof(vval.V)>::type __Result__ = 0; typeof(vval.V) __Val2__ = vval.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), W_ref2, W_ref1 + W_ref2 - 1); __Result__; });
    mbv1.set(tmpVal1);
    ap_int_base<_AP_W2, false> tmpVal2;
    tmpVal2.V = ({ typename _ap_type::remove_const<typeof(vval.V)>::type __Result__ = 0; typeof(vval.V) __Val2__ = vval.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, W_ref2 - 1); __Result__; });
    mbv2.set(tmpVal2);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const { return mbv1.length() + mbv2.length(); }
};




template <int _AP_W, bool _AP_S>
struct ap_range_ref {



  typedef ap_int_base<_AP_W, _AP_S> ref_type;
  ref_type& d_bv;
  int l_index;
  int h_index;

 public:
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref(const ap_range_ref<_AP_W, _AP_S>& ref)
      : d_bv(ref.d_bv), l_index(ref.l_index), h_index(ref.h_index) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref(ref_type* bv, int h, int l)
      : d_bv(*bv), l_index(l), h_index(h) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref(const ref_type* bv, int h, int l)
      : d_bv(*const_cast<ref_type*>(bv)), l_index(l), h_index(h) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_int_base<_AP_W, false>() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_ulong() const { return to_uint64(); }
# 339 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(bool val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(char val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(signed char val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(unsigned char val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(short val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(unsigned short val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(int val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(unsigned int val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(long val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(unsigned long val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(ap_slong val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(ap_ulong val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(half val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(float val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(double val) { ap_int_base<_AP_W, false> tmp(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }




  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(const char* val) {
    const ap_int_base<_AP_W, false> tmp(val);
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
    return *this;
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(const ap_int_base<_AP_W2, _AP_S2>& val) {
    ap_int_base<_AP_W, false> tmp(val);
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
    return *this;
  }




  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(const ap_range_ref& val) {
    return operator=((const ap_int_base<_AP_W, false>)val);
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(const ap_range_ref<_AP_W2, _AP_S2>& val) {
    return operator=((const ap_int_base<_AP_W2, false>)val);
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(const ap_bit_ref<_AP_W2, _AP_S2>& val) {
    return operator=((ap_ulong)(bool)(val));
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&
          val) {
    return operator=(val.to_ap_int_base());
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    return operator=((const ap_int_base<_AP_W2, false>)val);
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    return operator=((ap_ulong)(bool)(val));
  }


  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref& operator=(
      const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& val) {
    return operator=((const ap_int_base<_AP_W2 + _AP_W3, false>)(val));
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, ap_range_ref, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >
      operator,(const ap_range_ref<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W2,
                         ap_range_ref<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_range_ref<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, ap_range_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
      operator,(ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(*this, a2);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug))
  ap_concat_ref<_AP_W, ap_range_ref, _AP_W, ap_int_base<_AP_W, _AP_S> >
  operator,(ap_int_base<_AP_W, _AP_S>& a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W,
                         ap_int_base<_AP_W, _AP_S> >(*this, a2);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, ap_range_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
      operator,(volatile ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, ap_range_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
      operator,(const ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, ap_range_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
      operator,(const volatile ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_range_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> >
  operator,(const ap_bit_ref<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_bit_ref<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, ap_range_ref, _AP_W2 + _AP_W3,
                       ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >
  operator,(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> &a2) {
    return ap_concat_ref<_AP_W, ap_range_ref, _AP_W2 + _AP_W3,
                         ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >(
        *this, const_cast<ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>&>(a2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<
      _AP_W, ap_range_ref, _AP_W2,
      af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
  operator,(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> a2) {
    return ap_concat_ref<
        _AP_W, ap_range_ref, _AP_W2,
        af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<
            af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(a2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, ap_range_ref, 1,
                    af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
      operator,(const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>
                    &a2) {
    return ap_concat_ref<
        _AP_W, ap_range_ref, 1,
        af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(
            a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> hop(op2);
    return lop == hop;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    return !(operator==(op2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> hop(op2);
    return lop < hop;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> hop(op2);
    return lop <= hop;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    return !(operator<=(op2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    return !(operator<(op2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S>& operator|=(
      const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    (this->d_bv).V |= (op2.d_bv).V;
    return *this;
  };

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S>& operator|=(
      const ap_int_base<_AP_W2, _AP_S2>& op2) {
    (this->d_bv).V |= op2.V;
    return *this;
  };

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S>& operator&=(
      const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    (this->d_bv).V &= (op2.d_bv).V;
    return *this;
  };

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S>& operator&=(
      const ap_int_base<_AP_W2, _AP_S2>& op2) {
    (this->d_bv).V &= op2.V;
    return *this;
  };

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S>& operator^=(
      const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    (this->d_bv).V ^= (op2.d_bv).V;
    return *this;
  };

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_range_ref<_AP_W, _AP_S>& operator^=(
      const ap_int_base<_AP_W2, _AP_S2>& op2) {
    (this->d_bv).V ^= op2.V;
    return *this;
  };



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator~() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return (~ret);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator!() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return (!ret);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator+() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator-() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return (-ret);
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> get() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(const ap_int_base<_AP_W2, false>& val) {
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val.V) __Repl2__ = val.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const {
    return h_index >= l_index ? h_index - l_index + 1 : l_index - h_index + 1;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int to_int() const {
    return (int)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned to_uint() const {
    ap_int_base<_AP_W, false> t;
    t.V = d_bv.V;
    return (unsigned)(({ typename _ap_type::remove_const<typeof(t.V)>::type __Result__ = 0; typeof(t.V) __Val2__ = t.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) long to_long() const {
    return (long)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned long to_ulong() const {
    ap_int_base<_AP_W, false> t;
    t.V = d_bv.V;
    return (unsigned long)(({ typename _ap_type::remove_const<typeof(t.V)>::type __Result__ = 0; typeof(t.V) __Val2__ = t.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_slong to_int64() const {
    return (ap_slong)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ulong to_uint64() const {
    ap_int_base<_AP_W, false> t;
    t.V = d_bv.V;
    return (ap_ulong)(({ typename _ap_type::remove_const<typeof(t.V)>::type __Result__ = 0; typeof(t.V) __Val2__ = t.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool and_reduce() const {
    bool ret = true;
    bool reverse = l_index > h_index;
    unsigned low = reverse ? h_index : l_index;
    unsigned high = reverse ? l_index : h_index;
    VITIS_LOOP_676_1: for (unsigned i = low; i != high; ++i) {

#pragma HLS unroll

 ret &= ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), i); __Result__; });
    }
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool or_reduce() const {
    bool ret = false;
    bool reverse = l_index > h_index;
    unsigned low = reverse ? h_index : l_index;
    unsigned high = reverse ? l_index : h_index;
    VITIS_LOOP_690_1: for (unsigned i = low; i != high; ++i) {

#pragma HLS unroll

 ret |= ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), i); __Result__; });
    }
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool xor_reduce() const {
    bool ret = false;
    bool reverse = l_index > h_index;
    unsigned low = reverse ? h_index : l_index;
    unsigned high = reverse ? l_index : h_index;
    VITIS_LOOP_704_1: for (unsigned i = low; i != high; ++i) {

#pragma HLS unroll

 ret ^= ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), i); __Result__; });
    }
    return ret;
  }
# 720 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) char* to_string(signed char radix = 2) const {
    (void)(radix);
    return 0;
  }

};
# 760 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, bool _AP_S>
struct ap_bit_ref {



  typedef ap_int_base<_AP_W, _AP_S> ref_type;
  ref_type& d_bv;
  int d_index;

 public:

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref(const ap_bit_ref<_AP_W, _AP_S>& ref)
      : d_bv(ref.d_bv), d_index(ref.d_index) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref(ref_type* bv, int index = 0) : d_bv(*bv), d_index(index) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref(const ref_type* bv, int index = 0)
      : d_bv(*const_cast<ref_type*>(bv)), d_index(index) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator bool() const { return ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; }); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool to_bool() const { return ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; }); }
# 798 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(bool val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(char val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(signed char val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(unsigned char val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(short val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(unsigned short val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(int val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(unsigned int val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(long val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(unsigned long val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(ap_slong val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(ap_ulong val) { d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
# 820 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(half val) { bool tmp_val = val; d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp_val) __Repl2__ = !!tmp_val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(float val) { bool tmp_val = val; d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp_val) __Repl2__ = !!tmp_val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(double val) { bool tmp_val = val; d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp_val) __Repl2__ = !!tmp_val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; }); return *this; }




  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(const ap_int_base<_AP_W2, _AP_S2>& val) {
    return operator=((ap_ulong)(val.V != 0));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(const ap_range_ref<_AP_W2, _AP_S2>& val) {
    return operator=((ap_int_base<_AP_W2, false>)val);
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(const ap_bit_ref& val) {
    return operator=((ap_ulong)(bool)val);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(const ap_bit_ref<_AP_W2, _AP_S2>& val) {
    return operator=((ap_ulong)(bool)val);
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    return operator=((const ap_int_base<_AP_W2, false>)val);
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    return operator=((ap_ulong)(bool)val);
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator=(
      const ap_concat_ref<_AP_W2, _AP_T3, _AP_W3, _AP_T3>& val) {
    return operator=((const ap_int_base<_AP_W2 + _AP_W3, false>)val);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >(
        *this, a2);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(volatile ap_int_base<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(const ap_int_base<_AP_W2, _AP_S2> &a2) {
    ap_int_base<_AP_W2, _AP_S2> op(a2);
    return ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(op));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(const volatile ap_int_base<_AP_W2, _AP_S2> &a2) {
    ap_int_base<_AP_W2, _AP_S2> op(a2);
    return ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_int_base<_AP_W2, _AP_S2>&>(op));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >
  operator,(const ap_range_ref<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<1, ap_bit_ref, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_range_ref<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> > operator,(
      const ap_bit_ref<_AP_W2, _AP_S2> &a2) {
    return ap_concat_ref<1, ap_bit_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_bit_ref<_AP_W2, _AP_S2>&>(a2));
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, _AP_W2 + _AP_W3,
                       ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >
  operator,(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> &a2) {
    return ap_concat_ref<1, ap_bit_ref, _AP_W2 + _AP_W3,
                         ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >(
        *this, const_cast<ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>&>(a2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<
      1, ap_bit_ref, _AP_W2,
      af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
  operator,(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &a2) {
    return ap_concat_ref<
        1, ap_bit_ref, _AP_W2,
        af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<
            af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(a2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, ap_bit_ref, 1, af_bit_ref<_AP_W2, _AP_I2, _AP_S2,
                                                    _AP_Q2, _AP_O2, _AP_N2> >
  operator,(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &a2) {
    return ap_concat_ref<1, ap_bit_ref, 1, af_bit_ref<_AP_W2, _AP_I2, _AP_S2,
                                                      _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(
            a2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(const ap_bit_ref<_AP_W2, _AP_S2>& op) {
    return get() == op.get();
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(const ap_bit_ref<_AP_W2, _AP_S2>& op) {
    return get() != op.get();
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool get() const { return ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; }); }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool get() { return ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; }); }

  template <int _AP_W3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(const ap_int_base<_AP_W3, false>& val) {
    operator=(val);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator~() const {
    bool bit = ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; });
    return bit ? false : true;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const { return 1; }

  template <typename _RT>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator&=(const _RT& r) {
    operator=(get() & ap_int_base<1, false>(r));
    return *this;
  }

  template <typename _RT>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator|=(const _RT& r) {
    operator=(get() | ap_int_base<1, false>(r));
    return *this;
  }

  template <typename _RT>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_bit_ref& operator^=(const _RT& r) {
    operator=(get() ^ ap_int_base<1, false>(r));
    return *this;
  }





  inline __attribute__((always_inline)) __attribute__((nodebug)) char* to_string() const { return 0; }

};
# 1036 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, bool op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(bool op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, bool op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, bool op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(bool op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, bool op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, bool op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(bool op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, bool op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, bool op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(bool op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, bool op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<1, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, char op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, char op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, char op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, char op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<8, CHAR_IS_SIGNED>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, signed char op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(signed char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, signed char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, signed char op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(signed char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, signed char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, signed char op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(signed char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, signed char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, signed char op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(signed char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, signed char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<8, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned char op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned char op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned char op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned char op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<8, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, short op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, short op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, short op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, short op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_short, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned short op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned short op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned short op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned short op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_short, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, int op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, int op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, int op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, int op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_int, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned int op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned int op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned int op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned int op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_int, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, long op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, long op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, long op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, long op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_long, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned long op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(unsigned long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned long op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(unsigned long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned long op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(unsigned long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned long op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(unsigned long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_long, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, ap_slong op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(ap_slong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_slong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, ap_slong op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(ap_slong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_slong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, ap_slong op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(ap_slong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_slong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, ap_slong op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(ap_slong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_slong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_ap_slong, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_bit_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return bool(op) > op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(ap_ulong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 > bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_ulong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) > ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_bit_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return bool(op) < op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(ap_ulong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 < bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_ulong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) < ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_bit_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return bool(op) >= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(ap_ulong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 >= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_ulong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) >= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_bit_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return bool(op) <= op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(ap_ulong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 <= bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_ulong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) <= ap_int_base<_AP_SIZE_ap_slong, false>(op2); }






template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, bool op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(bool op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, bool op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<1, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, bool op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(bool op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, bool op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<1, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, char op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<8, CHAR_IS_SIGNED>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, char op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<8, CHAR_IS_SIGNED>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, signed char op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(signed char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, signed char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<8, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, signed char op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(signed char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, signed char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<8, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned char op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<8, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned char op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned char op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned char op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<8, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, short op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_short, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, short op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_short, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned short op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_short, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned short op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned short op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned short op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_short, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, int op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_int, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, int op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_int, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned int op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_int, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned int op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned int op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned int op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_int, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, long op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_long, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, long op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_long, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned long op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(unsigned long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_long, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, unsigned long op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(unsigned long op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, unsigned long op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_long, false>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, ap_slong op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(ap_slong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_slong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_ap_slong, true>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, ap_slong op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(ap_slong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_slong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_ap_slong, true>(op2); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_bit_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return bool(op) == op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(ap_ulong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 == bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_ulong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) == ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<_AP_SIZE_ap_slong, false>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_bit_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return bool(op) != op2; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(ap_ulong op2, const ap_bit_ref<_AP_W, _AP_S>& op) { return op2 != bool(op); } template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1>& op, ap_ulong op2) { return ap_int_base<_AP_W + _AP_W1, false>(op) != ap_int_base<_AP_SIZE_ap_slong, false>(op2); }
# 1095 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::plus operator +(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::minus operator -(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::mult operator *(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::div operator /(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::mod operator %(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::plus operator +(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::minus operator -(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::mult operator *(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::div operator /(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::mod operator %(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::plus operator +(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::minus operator -(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::mult operator *(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::div operator /(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::mod operator %(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::plus operator +(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::minus operator -(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::mult operator *(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::div operator /(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::mod operator %(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::plus operator +(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::minus operator -(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::mult operator *(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::div operator /(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::mod operator %(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::plus operator +(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::minus operator -(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::mult operator *(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::div operator /(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::mod operator %(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::plus operator +(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::minus operator -(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::mult operator *(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::div operator /(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::mod operator %(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::plus operator +(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::minus operator -(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::mult operator *(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::div operator /(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::mod operator %(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::plus operator +(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::minus operator -(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::mult operator *(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::div operator /(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::mod operator %(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::plus operator +(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::minus operator -(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::mult operator *(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::div operator /(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::mod operator %(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::plus operator +(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::minus operator -(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::mult operator *(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::div operator /(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::mod operator %(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) % ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) + ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::plus operator +(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) + ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) - ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::minus operator -(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) - ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) * ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::mult operator *(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) * ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::div operator /(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) / ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::div operator /(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) / ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) % ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::mod operator %(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) % ap_int_base<_AP_W, false>(op); }
# 1118 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::logic operator &(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::logic operator |(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::logic operator ^(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::arg1 operator >>(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(1), (false)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, bool op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(1), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(1), (false)>::template RType<_AP_W, false>::arg1 operator <<(bool op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(1), (false)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::logic operator &(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::logic operator |(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::logic operator ^(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::arg1 operator >>(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (CHAR_IS_SIGNED)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, char op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (CHAR_IS_SIGNED)>::template RType<_AP_W, false>::arg1 operator <<(char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::logic operator &(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::logic operator |(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::logic operator ^(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::arg1 operator >>(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (true)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(8), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (true)>::template RType<_AP_W, false>::arg1 operator <<(signed char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (true)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::logic operator &(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::logic operator |(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::logic operator ^(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::arg1 operator >>(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(8), (false)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(8), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(8), (false)>::template RType<_AP_W, false>::arg1 operator <<(unsigned char op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(8), (false)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::logic operator &(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::logic operator |(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::logic operator ^(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::arg1 operator >>(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (true)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, short op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (true)>::template RType<_AP_W, false>::arg1 operator <<(short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::logic operator &(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::logic operator |(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::logic operator ^(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::arg1 operator >>(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_short), (false)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_short), (false)>::template RType<_AP_W, false>::arg1 operator <<(unsigned short op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::logic operator &(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::logic operator |(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::logic operator ^(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::arg1 operator >>(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (true)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, int op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (true)>::template RType<_AP_W, false>::arg1 operator <<(int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::logic operator &(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::logic operator |(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::logic operator ^(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::arg1 operator >>(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_int), (false)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_int), (false)>::template RType<_AP_W, false>::arg1 operator <<(unsigned int op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::logic operator &(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::logic operator |(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::logic operator ^(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::arg1 operator >>(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (true)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, long op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (true)>::template RType<_AP_W, false>::arg1 operator <<(long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::logic operator &(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::logic operator |(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::logic operator ^(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::arg1 operator >>(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_long), (false)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_long), (false)>::template RType<_AP_W, false>::arg1 operator <<(unsigned long op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::logic operator &(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::logic operator |(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::logic operator ^(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::arg1 operator >>(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (true)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (true)>::template RType<_AP_W, false>::arg1 operator <<(ap_slong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) << ap_int_base<_AP_W, false>(op); }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) & ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::logic operator &(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) & ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) | ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::logic operator |(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) | ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) ^ ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::logic operator ^(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) ^ ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) >> ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::arg1 operator >>(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) >> ap_int_base<_AP_W, false>(op); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<(_AP_SIZE_ap_slong), (false)>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) << ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<(_AP_SIZE_ap_slong), (false)>::template RType<_AP_W, false>::arg1 operator <<(ap_ulong op2, const ap_range_ref<_AP_W, _AP_S>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) << ap_int_base<_AP_W, false>(op); }
# 1146 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::plus operator +(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())+( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::minus operator -(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())-( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::mult operator *(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())*( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::div operator /(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())/( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::mod operator %(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())%( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::logic operator &(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())&( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::logic operator |(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())|( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::logic operator ^(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())^( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::arg1 operator >>(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())>>( rhs.operator ap_int_base<_AP_W2, false>()); }
template <int _AP_W, bool _AP_S, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_W, false>::template RType<_AP_W2, false>::arg1 operator <<(const ap_range_ref<_AP_W, _AP_S>& lhs, const ap_range_ref<_AP_W2, _AP_S2>& rhs) { return (lhs.operator ap_int_base<_AP_W, false>())<<( rhs.operator ap_int_base<_AP_W2, false>()); }
# 1195 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::plus operator +( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() + rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::minus operator -( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() - rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::mult operator *( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() * rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::div operator /( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() / rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::mod operator %( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() % rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::logic operator &( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() & rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::logic operator |( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() | rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::logic operator ^( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() ^ rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::arg1 operator >>( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() >> rhs.get(); }
template <int _AP_LW1, typename _AP_LT1, int _AP_LW2, typename _AP_LT2, int _AP_RW1, typename _AP_RT1, int _AP_RW2, typename _AP_RT2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_int_base<_AP_LW1 + _AP_LW2, false>::template RType< _AP_RW1 + _AP_RW2, false>::arg1 operator <<( const ap_concat_ref<_AP_LW1, _AP_LT1, _AP_LW2, _AP_LT2>& lhs, const ap_concat_ref<_AP_RW1, _AP_RT1, _AP_RW2, _AP_RT2>& rhs) { return lhs.get() << rhs.get(); }
# 1342 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 1, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, bool op2) { ap_int_base<1 + _AP_W, false> val(op2); ap_int_base<1 + _AP_W, false> ret(op1); ret <<= 1; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 1, false> operator,( bool op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<1 + _AP_W, false> val(op1); ap_int_base<1 + _AP_W, false> ret(op2); if (_AP_S) { ret <<= 1; ret >>= 1; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 1, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, bool op2) { ap_int_base<1 + _AP_W, false> val(op2); ap_int_base<1 + _AP_W, false> ret(op1); ret <<= 1; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 1, false> operator,( bool op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<1 + _AP_W, false> val(op1); ap_int_base<1 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, bool op2) { ap_int_base<1 + 1, false> val(op2); val[1] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 1, false> operator,( bool op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<1 + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 1, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, bool op2) { ap_int_base<1 + _AP_W + _AP_W2, false> val(op2); ap_int_base<1 + _AP_W + _AP_W2, false> ret(op1); if (false) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= 1; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 1, false> operator,( bool op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<1 + _AP_W + _AP_W2, false> val(op1); ap_int_base<1 + _AP_W + _AP_W2, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 1, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, bool op2) { ap_int_base<1 + _AP_W, false> val(op2); ap_int_base<1 + _AP_W, false> ret(op1); if (false) { val <<= _AP_W; val >>= _AP_W; } ret <<= 1; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 1, false> operator,( bool op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<1 + _AP_W, false> val(op1); ap_int_base<1 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 1, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, bool op2) { ap_int_base<1 + 1, false> val(op2); val[1] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 1, false> operator,( bool op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<1 + 1, false> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); ret <<= 8; if (CHAR_IS_SIGNED) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( char op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); if (_AP_S) { ret <<= 8; ret >>= 8; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); ret <<= 8; if (CHAR_IS_SIGNED) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( char op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<8 + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, char op2) { ap_int_base<8 + 1, false> val(op2); val[8] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<8 + 1, false> operator,( char op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<8 + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 8, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, char op2) { ap_int_base<8 + _AP_W + _AP_W2, CHAR_IS_SIGNED> val(op2); ap_int_base<8 + _AP_W + _AP_W2, CHAR_IS_SIGNED> ret(op1); if (CHAR_IS_SIGNED) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= 8; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 8, false> operator,( char op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<8 + _AP_W + _AP_W2, CHAR_IS_SIGNED> val(op1); ap_int_base<8 + _AP_W + _AP_W2, CHAR_IS_SIGNED> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); if (CHAR_IS_SIGNED) { val <<= _AP_W; val >>= _AP_W; } ret <<= 8; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( char op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 8, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, char op2) { ap_int_base<8 + 1, CHAR_IS_SIGNED> val(op2); val[8] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 8, false> operator,( char op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<8 + 1, CHAR_IS_SIGNED> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, signed char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); ret <<= 8; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( signed char op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); if (_AP_S) { ret <<= 8; ret >>= 8; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, signed char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); ret <<= 8; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( signed char op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<8 + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, signed char op2) { ap_int_base<8 + 1, false> val(op2); val[8] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<8 + 1, false> operator,( signed char op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<8 + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 8, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, signed char op2) { ap_int_base<8 + _AP_W + _AP_W2, true> val(op2); ap_int_base<8 + _AP_W + _AP_W2, true> ret(op1); if (true) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= 8; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 8, false> operator,( signed char op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<8 + _AP_W + _AP_W2, true> val(op1); ap_int_base<8 + _AP_W + _AP_W2, true> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, signed char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); if (true) { val <<= _AP_W; val >>= _AP_W; } ret <<= 8; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( signed char op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 8, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, signed char op2) { ap_int_base<8 + 1, true> val(op2); val[8] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 8, false> operator,( signed char op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<8 + 1, true> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, unsigned char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); ret <<= 8; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( unsigned char op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); if (_AP_S) { ret <<= 8; ret >>= 8; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, unsigned char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); ret <<= 8; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( unsigned char op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<8 + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, unsigned char op2) { ap_int_base<8 + 1, false> val(op2); val[8] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<8 + 1, false> operator,( unsigned char op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<8 + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 8, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, unsigned char op2) { ap_int_base<8 + _AP_W + _AP_W2, false> val(op2); ap_int_base<8 + _AP_W + _AP_W2, false> ret(op1); if (false) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= 8; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + 8, false> operator,( unsigned char op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<8 + _AP_W + _AP_W2, false> val(op1); ap_int_base<8 + _AP_W + _AP_W2, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned char op2) { ap_int_base<8 + _AP_W, false> val(op2); ap_int_base<8 + _AP_W, false> ret(op1); if (false) { val <<= _AP_W; val >>= _AP_W; } ret <<= 8; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + 8, false> operator,( unsigned char op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<8 + _AP_W, false> val(op1); ap_int_base<8 + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 8, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned char op2) { ap_int_base<8 + 1, false> val(op2); val[8] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + 8, false> operator,( unsigned char op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<8 + 1, false> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, short op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op1); ret <<= _AP_SIZE_short; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( short op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_short; ret >>= _AP_SIZE_short; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, short op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op1); ret <<= _AP_SIZE_short; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( short op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_short + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, short op2) { ap_int_base<_AP_SIZE_short + 1, false> val(op2); val[_AP_SIZE_short] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_short + 1, false> operator,( short op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_short + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_short, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, short op2) { ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, true> val(op2); ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, true> ret(op1); if (true) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_short; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_short, false> operator,( short op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, true> val(op1); ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, true> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, short op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op1); if (true) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_short; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( short op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_short, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, short op2) { ap_int_base<_AP_SIZE_short + 1, true> val(op2); val[_AP_SIZE_short] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_short, false> operator,( short op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_short + 1, true> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, unsigned short op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op1); ret <<= _AP_SIZE_short; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( unsigned short op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_short; ret >>= _AP_SIZE_short; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, unsigned short op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op1); ret <<= _AP_SIZE_short; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( unsigned short op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_short + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, unsigned short op2) { ap_int_base<_AP_SIZE_short + 1, false> val(op2); val[_AP_SIZE_short] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_short + 1, false> operator,( unsigned short op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_short + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_short, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, unsigned short op2) { ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, false> ret(op1); if (false) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_short; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_short, false> operator,( unsigned short op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W + _AP_W2, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned short op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op1); if (false) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_short; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_short, false> operator,( unsigned short op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_short + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_short + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_short, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned short op2) { ap_int_base<_AP_SIZE_short + 1, false> val(op2); val[_AP_SIZE_short] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_short, false> operator,( unsigned short op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_short + 1, false> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, int op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op1); ret <<= _AP_SIZE_int; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( int op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_int; ret >>= _AP_SIZE_int; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, int op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op1); ret <<= _AP_SIZE_int; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( int op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_int + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, int op2) { ap_int_base<_AP_SIZE_int + 1, false> val(op2); val[_AP_SIZE_int] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_int + 1, false> operator,( int op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_int + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_int, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, int op2) { ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, true> val(op2); ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, true> ret(op1); if (true) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_int; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_int, false> operator,( int op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, true> val(op1); ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, true> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, int op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op1); if (true) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_int; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( int op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_int, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, int op2) { ap_int_base<_AP_SIZE_int + 1, true> val(op2); val[_AP_SIZE_int] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_int, false> operator,( int op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_int + 1, true> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, unsigned int op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op1); ret <<= _AP_SIZE_int; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( unsigned int op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_int; ret >>= _AP_SIZE_int; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, unsigned int op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op1); ret <<= _AP_SIZE_int; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( unsigned int op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_int + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, unsigned int op2) { ap_int_base<_AP_SIZE_int + 1, false> val(op2); val[_AP_SIZE_int] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_int + 1, false> operator,( unsigned int op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_int + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_int, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, unsigned int op2) { ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, false> ret(op1); if (false) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_int; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_int, false> operator,( unsigned int op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W + _AP_W2, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned int op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op1); if (false) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_int; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_int, false> operator,( unsigned int op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_int + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_int + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_int, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned int op2) { ap_int_base<_AP_SIZE_int + 1, false> val(op2); val[_AP_SIZE_int] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_int, false> operator,( unsigned int op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_int + 1, false> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, long op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op1); ret <<= _AP_SIZE_long; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( long op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_long; ret >>= _AP_SIZE_long; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, long op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op1); ret <<= _AP_SIZE_long; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( long op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_long + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, long op2) { ap_int_base<_AP_SIZE_long + 1, false> val(op2); val[_AP_SIZE_long] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_long + 1, false> operator,( long op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_long + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_long, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, long op2) { ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, true> val(op2); ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, true> ret(op1); if (true) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_long; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_long, false> operator,( long op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, true> val(op1); ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, true> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, long op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op1); if (true) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_long; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( long op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_long, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, long op2) { ap_int_base<_AP_SIZE_long + 1, true> val(op2); val[_AP_SIZE_long] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_long, false> operator,( long op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_long + 1, true> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, unsigned long op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op1); ret <<= _AP_SIZE_long; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( unsigned long op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_long; ret >>= _AP_SIZE_long; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, unsigned long op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op1); ret <<= _AP_SIZE_long; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( unsigned long op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_long + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, unsigned long op2) { ap_int_base<_AP_SIZE_long + 1, false> val(op2); val[_AP_SIZE_long] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_long + 1, false> operator,( unsigned long op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_long + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_long, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, unsigned long op2) { ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, false> ret(op1); if (false) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_long; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_long, false> operator,( unsigned long op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W + _AP_W2, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned long op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op1); if (false) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_long; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_long, false> operator,( unsigned long op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_long + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_long + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_long, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, unsigned long op2) { ap_int_base<_AP_SIZE_long + 1, false> val(op2); val[_AP_SIZE_long] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_long, false> operator,( unsigned long op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_long + 1, false> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, ap_slong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op1); ret <<= _AP_SIZE_ap_slong; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( ap_slong op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_ap_slong; ret >>= _AP_SIZE_ap_slong; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, ap_slong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op1); ret <<= _AP_SIZE_ap_slong; if (true) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( ap_slong op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_ap_slong + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, ap_slong op2) { ap_int_base<_AP_SIZE_ap_slong + 1, false> val(op2); val[_AP_SIZE_ap_slong] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_ap_slong + 1, false> operator,( ap_slong op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_ap_slong + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_ap_slong, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, ap_slong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, true> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, true> ret(op1); if (true) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_ap_slong; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_ap_slong, false> operator,( ap_slong op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, true> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, true> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, ap_slong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op1); if (true) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_ap_slong; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( ap_slong op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_ap_slong, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, ap_slong op2) { ap_int_base<_AP_SIZE_ap_slong + 1, true> val(op2); val[_AP_SIZE_ap_slong] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_ap_slong, false> operator,( ap_slong op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_ap_slong + 1, true> val(op1); val <<= 1; val[0] = op2; return val; }
template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( const ap_int_base<_AP_W, _AP_S> &op1, ap_ulong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op1); ret <<= _AP_SIZE_ap_slong; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( ap_ulong op1, const ap_int_base<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op2); if (_AP_S) { ret <<= _AP_SIZE_ap_slong; ret >>= _AP_SIZE_ap_slong; } ret |= val << _AP_W; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( const ap_range_ref<_AP_W, _AP_S> &op1, ap_ulong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op1); ret <<= _AP_SIZE_ap_slong; if (false) { val <<= _AP_W; val >>= _AP_W; } ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( ap_ulong op1, const ap_range_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_ap_slong + 1, false> operator,( const ap_bit_ref<_AP_W, _AP_S> &op1, ap_ulong op2) { ap_int_base<_AP_SIZE_ap_slong + 1, false> val(op2); val[_AP_SIZE_ap_slong] = op1; return val; } template <int _AP_W, bool _AP_S> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_SIZE_ap_slong + 1, false> operator,( ap_ulong op1, const ap_bit_ref<_AP_W, _AP_S> &op2) { ap_int_base<_AP_SIZE_ap_slong + 1, false> val(op1); val <<= 1; val[0] = op2; return val; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_ap_slong, false> operator,( const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op1, ap_ulong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, false> ret(op1); if (false) { val <<= _AP_W + _AP_W2; val >>= _AP_W + _AP_W2; } ret <<= _AP_SIZE_ap_slong; ret |= val; return ret; } template <int _AP_W, typename _AP_T, int _AP_W2, typename _AP_T2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_W2 + _AP_SIZE_ap_slong, false> operator,( ap_ulong op1, const ap_concat_ref<_AP_W, _AP_T, _AP_W2, _AP_T2> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W + _AP_W2, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, ap_ulong op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op2); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op1); if (false) { val <<= _AP_W; val >>= _AP_W; } ret <<= _AP_SIZE_ap_slong; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W + _AP_SIZE_ap_slong, false> operator,( ap_ulong op1, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> val(op1); ap_int_base<_AP_SIZE_ap_slong + _AP_W, false> ret(op2); int len = op2.length(); val <<= len; ret |= val; return ret; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_ap_slong, false> operator,( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op1, ap_ulong op2) { ap_int_base<_AP_SIZE_ap_slong + 1, false> val(op2); val[_AP_SIZE_ap_slong] = op1; return val; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<1 + _AP_SIZE_ap_slong, false> operator,( ap_ulong op1, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> &op2) { ap_int_base<_AP_SIZE_ap_slong + 1, false> val(op1); val <<= 1; val[0] = op2; return val; }
# 1366 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_ref.h"
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator <<( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, int rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() << int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator <<( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, unsigned int rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() << int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator <<( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, long rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() << int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator <<( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, unsigned long rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() << int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator <<( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, ap_slong rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() << int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator <<( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, ap_ulong rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() << int(rhs); }

template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator >>( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, int rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() >> int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator >>( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, unsigned int rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() >> int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator >>( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, long rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() >> int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator >>( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, unsigned long rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() >> int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator >>( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, ap_slong rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() >> int(rhs); }
template <int _AP_W, typename _AP_T, int _AP_W1, typename _AP_T1> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint<_AP_W + _AP_W1> operator >>( const ap_concat_ref<_AP_W, _AP_T, _AP_W1, _AP_T1> lhs, ap_ulong rhs) { return ap_uint<_AP_W + _AP_W1>(lhs).get() >> int(rhs); }
# 13 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 2




template <int _AP_W>
struct ap_int : ap_int_base<_AP_W, true> {
  typedef ap_int_base<_AP_W, true> Base;

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int() = default;
  template <int _AP_W2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_int<_AP_W2>& op): Base((ap_int_base<_AP_W2, true>)op){



    op.checkOverflowCsim(_AP_W, true);

    Base::V = op.V;
  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const volatile ap_int<_AP_W2>& op) {
    const_cast<const ap_int<_AP_W2>& >(op).checkOverflowCsim(_AP_W, true);
    Base::V = op.V;
  }

  template <int _AP_W2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_uint<_AP_W2>& op): Base((ap_int_base<_AP_W2, false>)op){



    op.checkOverflowCsim(_AP_W, true);

    Base::V = op.V;
  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const volatile ap_uint<_AP_W2>& op) {
    const_cast<const ap_uint<_AP_W2>& >(op).checkOverflowCsim(_AP_W, true);
    Base::V = op.V;
  }




                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(unsigned V __attribute__((bitwidth(_AP_W))), bool raw): Base(0) {
    Base::V = V;
    (void)(raw);
  }



  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_range_ref<_AP_W2, _AP_S2>& ref) : Base(ref) {}

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_bit_ref<_AP_W2, _AP_S2>& ref) : Base(ref) {}

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& ref)
      : Base(ref) {}

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_fixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, true, _AP_Q2, _AP_O2, _AP_N2>)op) {}

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_ufixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, false, _AP_Q2, _AP_O2, _AP_N2>)op) {
  }

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(
      const volatile ap_fixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, true, _AP_Q2, _AP_O2, _AP_N2>)op) {}

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(
      const volatile ap_ufixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, false, _AP_Q2, _AP_O2, _AP_N2>)op) {
  }

  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const ap_int_base<_AP_W2, _AP_S2>& op):Base(op) {

  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}







  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(bool val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(char val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(signed char val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(unsigned char val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(short val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(unsigned short val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(int val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(unsigned int val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(long val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(unsigned long val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(ap_slong val):Base(val){ this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(ap_ulong val):Base(val){ this->checkOverflowBaseC(val); }

                ap_int(double val) : Base(val) {}
                ap_int(float val) : Base(val) {}
  ap_int(half val) : Base(val) {}


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const char* s) : Base(s) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int(const char* s, signed char rd) : Base(s, rd) {}




  ap_int &operator=(const ap_int<_AP_W> &op2) = default;
# 161 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int& operator=(const volatile ap_int<_AP_W>& op2) {
    Base::V = op2.V;
    return *this;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const ap_int<_AP_W>& op2) volatile {
    *((volatile typename Base::Base::DataType *)(&(Base::V))) = op2.V;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const volatile ap_int<_AP_W>& op2) volatile {
    *((volatile typename Base::Base::DataType *)(&(Base::V))) = op2.V;
  }

};




template <int _AP_W>
struct ap_uint : ap_int_base<_AP_W, false> {
  typedef ap_int_base<_AP_W, false> Base;

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint() = default;
  template <int _AP_W2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_uint<_AP_W2>& op):Base((ap_int_base<_AP_W2, false>)op) {
    op.checkOverflowCsim(_AP_W, false);

  }

  template <int _AP_W2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_int<_AP_W2>& op):Base((ap_int_base<_AP_W2, true>)op) {
    op.checkOverflowCsim(_AP_W, false);

  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const volatile ap_uint<_AP_W2>& op) {
    const_cast<const ap_uint<_AP_W2>& >(op).checkOverflowCsim(_AP_W, false);
    Base::V = op.V;
  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const volatile ap_int<_AP_W2>& op) {
    const_cast<const ap_int<_AP_W2>& >(op).checkOverflowCsim(_AP_W, false);
    Base::V = op.V;
  }




                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(unsigned V __attribute__((bitwidth(_AP_W))), bool raw):Base(0) {
    Base::V = V;
    (void)(raw);
  }



  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_range_ref<_AP_W2, _AP_S2>& ref) : Base(ref) {}

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_bit_ref<_AP_W2, _AP_S2>& ref) : Base(ref) {}

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& ref)
      : Base(ref) {}

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_fixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, true, _AP_Q2, _AP_O2, _AP_N2>)op) {}

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_ufixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, false, _AP_Q2, _AP_O2, _AP_N2>)op) {
  }

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(
      const volatile ap_fixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, true, _AP_Q2, _AP_O2, _AP_N2>)op) {}

  template <int _AP_W2, int _AP_I2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2,
            int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(
      const volatile ap_ufixed<_AP_W2, _AP_I2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base((ap_fixed_base<_AP_W2, _AP_I2, false, _AP_Q2, _AP_O2, _AP_N2>)op) {
  }

  template <int _AP_W2, bool _AP_S2>
                inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const ap_int_base<_AP_W2, _AP_S2>& op):Base(op) {

  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}






  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(bool val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(char val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(signed char val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(unsigned char val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(short val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(unsigned short val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(int val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(unsigned int val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(long val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(unsigned long val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(ap_slong val):Base(val) { this->checkOverflowBaseC(val); }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(ap_ulong val):Base(val) { this->checkOverflowBaseC(val); }

                ap_uint(double val) : Base(val) {}
                ap_uint(float val) : Base(val) {}
  ap_uint(half val) : Base(val) {}


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const char* s) : Base(s) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint(const char* s, signed char rd) : Base(s, rd) {}





  ap_uint &operator=(const ap_uint<_AP_W> &op2) = default;
# 317 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_uint& operator=(const volatile ap_uint<_AP_W>& op2) {
    Base::V = op2.V;
    return *this;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const ap_uint<_AP_W>& op2) volatile {
    *((volatile typename Base::Base::DataType *)(&(Base::V))) = op2.V;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const volatile ap_uint<_AP_W>& op2) volatile {
    *((volatile typename Base::Base::DataType *)(&(Base::V))) = op2.V;
  }

};
# 352 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_special.h" 1
# 20 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_special.h"
namespace std {
template<typename _Tp> class complex;
}







namespace std {
# 48 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_special.h"
template <int _AP_W>
class complex<ap_int<_AP_W> > {
 public:
  typedef ap_int<_AP_W> _Tp;
  typedef _Tp value_type;




  __attribute__((nodebug)) complex() = default;


  __attribute__((nodebug)) complex(const _Tp &__r, const _Tp &__i = _Tp(0))
      : _M_real(__r), _M_imag(__i) {}


  template <typename _Up>
  __attribute__((nodebug)) complex(const complex<_Up> &__z) : _M_real(__z.real()), _M_imag(__z.imag()) {}


  __attribute__((nodebug)) const _Tp& real() const { return _M_real; }
  const _Tp& imag() const { return _M_imag; }







  __attribute__((nodebug)) void real(_Tp __val) { _M_real = __val; }

  __attribute__((nodebug)) void imag(_Tp __val) { _M_imag = __val; }



  __attribute__((nodebug)) complex<_Tp> &operator=(const _Tp __t) {
    _M_real = __t;
    _M_imag = _Tp(0);
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator+=(const _Tp &__t) {
    _M_real += __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator-=(const _Tp &__t) {
    _M_real -= __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator*=(const _Tp &__t) {
    _M_real *= __t;
    _M_imag *= __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator/=(const _Tp &__t) {
    _M_real /= __t;
    _M_imag /= __t;
    return *this;
  }


  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator=(const complex<_Up> &__z) {
    _M_real = __z.real();
    _M_imag = __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator+=(const complex<_Up> &__z) {
    _M_real += __z.real();
    _M_imag += __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator-=(const complex<_Up> &__z) {
    _M_real -= __z.real();
    _M_imag -= __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator*=(const complex<_Up> &__z) {
    const _Tp __r = _M_real * __z.real() - _M_imag * __z.imag();
    _M_imag = _M_real * __z.imag() + _M_imag * __z.real();
    _M_real = __r;
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator/=(const complex<_Up> &__z) {
    complex<_Tp> cj (__z.real(), -__z.imag());
    complex<_Tp> a = (*this) * cj;
    complex<_Tp> b = cj * __z;
    _M_real = a.real() / b.real();
    _M_imag = a.imag() / b.real();
    return *this;
  }

 private:
  _Tp _M_real;
  _Tp _M_imag;

};
# 181 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_int_special.h"
template <int _AP_W>
inline __attribute__((nodebug)) bool operator==(const complex<ap_int<_AP_W> > &__x, const ap_int<_AP_W> &__y) {
  return __x.real() == __y &&
         __x.imag() == 0;
}


template <int _AP_W>
inline __attribute__((nodebug)) bool operator==(const ap_int<_AP_W> &__x, const complex<ap_int<_AP_W> > &__y) {
  return __x == __y.real() &&
         0 == __y.imag();
}


template <int _AP_W>
inline __attribute__((nodebug)) bool operator!=(const complex<ap_int<_AP_W> > &__x, const ap_int<_AP_W> &__y) {
  return __x.real() != __y ||
         __x.imag() != 0;
}


template <int _AP_W>
inline __attribute__((nodebug)) bool operator!=(const ap_int<_AP_W> &__x, const complex<ap_int<_AP_W> > &__y) {
  return __x != __y.real() ||
         0 != __y.imag();
}

}
# 353 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 2







# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h" 1
# 10 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h" 1
# 16 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 1
# 17 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h" 2
# 87 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
template <int _AP_W2, int _AP_I2, bool _AP_S2>
struct _ap_fixed_factory;
template <int _AP_W2, int _AP_I2>
struct _ap_fixed_factory<_AP_W2, _AP_I2, true> {
  typedef ap_fixed<_AP_W2, _AP_I2> type;
};
template <int _AP_W2, int _AP_I2>
struct _ap_fixed_factory<_AP_W2, _AP_I2, false> {
  typedef ap_ufixed<_AP_W2, _AP_I2> type;
};
# 108 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
struct ap_fixed_base : ssdm_int<_AP_W, _AP_S> {
 public:
  typedef ssdm_int<_AP_W, _AP_S> Base;
  static const int width = _AP_W;
  static const int iwidth = _AP_I;
  static const ap_q_mode qmode = _AP_Q;
  static const ap_o_mode omode = _AP_O;


  template <int _AP_W2, int _AP_I2, bool _AP_S2>
  struct RType {
    enum {
      _AP_F = _AP_W - _AP_I,
      F2 = _AP_W2 - _AP_I2,
      mult_w = _AP_W + _AP_W2,
      mult_i = _AP_I + _AP_I2,
      mult_s = _AP_S || _AP_S2,
      plus_w = ((_AP_I + (_AP_S2 && !_AP_S)) > (_AP_I2 + (_AP_S && !_AP_S2)) ? (_AP_I + (_AP_S2 && !_AP_S)) : (_AP_I2 + (_AP_S && !_AP_S2))) +
               1 + ((_AP_F) > (F2) ? (_AP_F) : (F2)),
      plus_i =
          ((_AP_I + (_AP_S2 && !_AP_S)) > (_AP_I2 + (_AP_S && !_AP_S2)) ? (_AP_I + (_AP_S2 && !_AP_S)) : (_AP_I2 + (_AP_S && !_AP_S2))) + 1,
      plus_s = _AP_S || _AP_S2,
      minus_w =
          ((_AP_I + (_AP_S2 && !_AP_S)) > (_AP_I2 + (_AP_S && !_AP_S2)) ? (_AP_I + (_AP_S2 && !_AP_S)) : (_AP_I2 + (_AP_S && !_AP_S2))) + 1 +
          ((_AP_F) > (F2) ? (_AP_F) : (F2)),
      minus_i =
          ((_AP_I + (_AP_S2 && !_AP_S)) > (_AP_I2 + (_AP_S && !_AP_S2)) ? (_AP_I + (_AP_S2 && !_AP_S)) : (_AP_I2 + (_AP_S && !_AP_S2))) + 1,
      minus_s = true,

      div_w = _AP_S2 + _AP_W + ((F2) > (0) ? (F2) : (0)),



      div_i = _AP_S2 + _AP_I + F2,
      div_s = _AP_S || _AP_S2,
      logic_w =
          ((_AP_I + (_AP_S2 && !_AP_S)) > (_AP_I2 + (_AP_S && !_AP_S2)) ? (_AP_I + (_AP_S2 && !_AP_S)) : (_AP_I2 + (_AP_S && !_AP_S2))) +
          ((_AP_F) > (F2) ? (_AP_F) : (F2)),
      logic_i = ((_AP_I + (_AP_S2 && !_AP_S)) > (_AP_I2 + (_AP_S && !_AP_S2)) ? (_AP_I + (_AP_S2 && !_AP_S)) : (_AP_I2 + (_AP_S && !_AP_S2))),
      logic_s = _AP_S || _AP_S2
    };

    typedef ap_fixed_base<_AP_W, _AP_I, _AP_S> lhs;
    typedef ap_fixed_base<_AP_W2, _AP_I2, _AP_S2> rhs;

    typedef ap_fixed_base<mult_w, mult_i, mult_s> mult_base;
    typedef ap_fixed_base<plus_w, plus_i, plus_s> plus_base;
    typedef ap_fixed_base<minus_w, minus_i, minus_s> minus_base;
    typedef ap_fixed_base<logic_w, logic_i, logic_s> logic_base;
    typedef ap_fixed_base<div_w, div_i, div_s> div_base;
    typedef ap_fixed_base<_AP_W, _AP_I, _AP_S> arg1_base;

    typedef typename _ap_fixed_factory<mult_w, mult_i, mult_s>::type mult;
    typedef typename _ap_fixed_factory<plus_w, plus_i, plus_s>::type plus;
    typedef typename _ap_fixed_factory<minus_w, minus_i, minus_s>::type minus;
    typedef typename _ap_fixed_factory<logic_w, logic_i, logic_s>::type logic;
    typedef typename _ap_fixed_factory<div_w, div_i, div_s>::type div;
    typedef typename _ap_fixed_factory<_AP_W, _AP_I, _AP_S>::type arg1;
  };

 private:
# 295 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
                      inline __attribute__((always_inline)) __attribute__((nodebug)) void report() {}




                      inline __attribute__((always_inline)) __attribute__((nodebug)) void overflow_adjust(bool underflow, bool overflow, bool lD,
                              bool sign) {
    if (!underflow && !overflow) return;
    if (_AP_O == AP_WRAP) {
      if (_AP_N == 0) return;
      if (_AP_S) {


        Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(sign) __Repl2__ = !!sign; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), _AP_W - 1, _AP_W - 1); __Result__; });
        if (_AP_N > 1) {

          ap_int_base<_AP_W, false> mask(-1);
          if (sign) mask.V = 0;
          Base::V =
              ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(mask.V) __Repl2__ = mask.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), _AP_W - _AP_N, _AP_W - 2); __Result__; });
        }
      } else {

        ap_int_base<_AP_W, false> mask(-1);
        Base::V =
            ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(mask.V) __Repl2__ = mask.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), _AP_W - _AP_N, _AP_W - 1); __Result__; });
      }
    } else if (_AP_O == AP_SAT_ZERO) {
      Base::V = 0;
    } else if (_AP_O == AP_WRAP_SM && _AP_S) {
      bool Ro = ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
      if (_AP_N == 0) {
        if (lD != Ro) {
          Base::V = ~Base::V;
          Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(lD) __Repl2__ = !!lD; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), _AP_W - 1, _AP_W - 1); __Result__; });
        }
      } else {
        if (_AP_N == 1 && sign != Ro) {
          Base::V = ~Base::V;
        } else if (_AP_N > 1) {
          bool lNo = ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - _AP_N); __Result__; });
          if (lNo == sign) Base::V = ~Base::V;
          ap_int_base<_AP_W, false> mask(-1);
          if (sign) mask.V = 0;
          Base::V =
              ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(mask.V) __Repl2__ = mask.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), _AP_W - _AP_N, _AP_W - 2); __Result__; });
        }
        Base::V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; typeof(sign) __Repl2__ = !!sign; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), _AP_W - 1, _AP_W - 1); __Result__; });
      }
    } else {
      if (_AP_S) {
        if (overflow) {
          Base::V = 1;
          Base::V <<= _AP_W - 1;
          Base::V = ~Base::V;
        } else if (underflow) {
          Base::V = 1;
          Base::V <<= _AP_W - 1;
          if (_AP_O == AP_SAT_SYM) Base::V |= 1;
        }
      } else {
        if (overflow)
          Base::V = ~(ap_int_base<_AP_W, false>(0).V);
        else if (underflow)
          Base::V = 0;
      }
    }
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool quantization_adjust(bool qb, bool r, bool s) {
    bool carry = (bool)({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
    if (_AP_Q == AP_TRN) return false;
    if (_AP_Q == AP_RND_ZERO)
      qb &= s || r;
    else if (_AP_Q == AP_RND_MIN_INF)
      qb &= r;
    else if (_AP_Q == AP_RND_INF)
      qb &= !s || r;
    else if (_AP_Q == AP_RND_CONV)
      qb &= ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), 0); __Result__; }) || r;
    else if (_AP_Q == AP_TRN_ZERO)
      qb = s && (qb || r);
    Base::V += qb;
    return carry && (!(bool)({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; }));
  }


                      inline __attribute__((always_inline)) __attribute__((nodebug)) int countLeadingOnes() const {




    return 0;

  }

 public:



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base() = default;


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op):Base(op.V) {

    operator=(op);



    report();
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(
      const volatile ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    operator=(op);
    report();
  }

  template <int _AP_W2, bool _AP_S2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const ap_int_base<_AP_W2, _AP_S2>& op):Base(op.V) {
    ap_fixed_base<_AP_W2, _AP_W2, _AP_S2> tmp(0);
    tmp.V = op.V;

    operator=(tmp);



    report();
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const volatile ap_int_base<_AP_W2, _AP_S2>& op) {
    ap_fixed_base<_AP_W2, _AP_W2, _AP_S2> tmp;
    tmp.V = op.V;
    operator=(tmp);
    report();
  }
# 458 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const char* s) {
    typeof(Base::V) t;
    _ssdm_string2bits((void*)(&t), (const char*)(s), 10, _AP_I, _AP_S, _AP_Q,
                      _AP_O, _AP_N, true);
    Base::V = t;
  }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const char* s, signed char rd) {
    typeof(Base::V) t;
    _ssdm_string2bits((void*)(&t), (const char*)(s), rd, _AP_I, _AP_S, _AP_Q,
                      _AP_O, _AP_N, true);
    Base::V = t;
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const ap_bit_ref<_AP_W2, _AP_S2>& op) {
    *this = ((bool)op);
    report();
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const ap_range_ref<_AP_W2, _AP_S2>& op) {
    *this = (ap_int_base<_AP_W2, false>(op));
    report();
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(
      const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& op) {
    *this = (ap_int_base<_AP_W2 + _AP_W3, false>(op));
    report();
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    *this = (bool(op));
    report();
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    *this = (ap_int_base<_AP_W2, false>(op));
    report();
  }
# 526 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const bool x) { ap_fixed_base<(1), (1), (false)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const char x) { ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const signed char x) { ap_fixed_base<(8), (8), (true)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const unsigned char x) { ap_fixed_base<(8), (8), (false)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const short x) { ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const unsigned short x) { ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const int x) { ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const unsigned int x) { ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const long x) { ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const unsigned long x) { ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const ap_slong x) { ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)> tmp; tmp.V = x; *this = tmp; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(const ap_ulong x) { ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)> tmp; tmp.V = x; *this = tmp; }







          __attribute__((nodebug)) ap_fixed_base(double d) {
    ap_int_base<64, false> ireg;
    ireg.V = doubleToRawBits(d);
    bool isneg = ({ typeof(ireg.V) __Val2__ = ireg.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), 63); __Result__; });

    ap_int_base<11 + 1, true> exp, bias = ((1 << (11 - 1)) - 1);
    ap_int_base<11, false> exp_tmp;
    exp_tmp.V = ({ typename _ap_type::remove_const<typeof(ireg.V)>::type __Result__ = 0; typeof(ireg.V) __Val2__ = ireg.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 52, 52 + 11 - 1); __Result__; });
    exp = exp_tmp - bias;
    ap_int_base<52 + 2, true> man;
    man.V = ({ typename _ap_type::remove_const<typeof(ireg.V)>::type __Result__ = 0; typeof(ireg.V) __Val2__ = ireg.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, 52 - 1); __Result__; });


    (static_cast<void>(0));

    man.V = ({ typename _ap_type::remove_const<typeof(man.V)>::type __Result__ = 0; typeof(man.V) __Val2__ = man.V; typeof(1) __Repl2__ = !!1; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 52, 52); __Result__; });
    if (isneg) man = -man;
    if ((ireg.V & 0x7fffffffffffffffLL) == 0) {
      Base::V = 0;
    } else {
      int _AP_W2 = 52 + 2, _AP_I2 = exp.V + 2, _AP_F = _AP_W - _AP_I,
          F2 = _AP_W2 - _AP_I2;
      bool _AP_S2 = true,
           QUAN_INC = F2 > _AP_F &&
                      !(_AP_Q == AP_TRN || (_AP_Q == AP_TRN_ZERO && !_AP_S2));
      bool carry = false;

      unsigned sh_amt = (F2 > _AP_F) ? F2 - _AP_F : _AP_F - F2;
      if (F2 == _AP_F)
        Base::V = man.V;
      else if (F2 > _AP_F) {
        if (sh_amt < 52 + 2)
          Base::V = man.V >> sh_amt;
        else {
          Base::V = isneg ? -1 : 0;
        }
        if ((_AP_Q != AP_TRN) && !((_AP_Q == AP_TRN_ZERO) && !_AP_S2)) {
          bool qb = (F2 - _AP_F > _AP_W2) ? isneg : (bool)({ typeof(man.V) __Val2__ = man.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), F2 - _AP_F - 1); __Result__; });

          bool r =
              (F2 > _AP_F + 1)
                  ? ({ typename _ap_type::remove_const<typeof(man.V)>::type __Result__ = 0; typeof(man.V) __Val2__ = man.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, (F2 - _AP_F - 2 < _AP_W2) ? (F2 - _AP_F - 2) : (_AP_W2 - 1)); __Result__; }) != 0


                  : false;
          carry = quantization_adjust(qb, r, isneg);
        }
      } else {
        Base::V = man.V;
        if (sh_amt < _AP_W)
          Base::V = Base::V << sh_amt;
        else
          Base::V = 0;
      }

      if ((_AP_O != AP_WRAP || _AP_N != 0) &&
          ((!_AP_S && _AP_S2) ||
           _AP_I - _AP_S <
               _AP_I2 - _AP_S2 +
                   (QUAN_INC ||
                    (_AP_S2 && (_AP_O == AP_SAT_SYM))))) {
        bool deleted_zeros = _AP_S2 ? true : !carry, deleted_ones = true;
        bool neg_src = isneg;
        bool lD = false;
        int pos1 = F2 - _AP_F + _AP_W;
        int pos2 = F2 - _AP_F + _AP_W + 1;
        bool newsignbit = ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
        if (pos1 < _AP_W2 && pos1 >= 0)

          lD = (man.V >> pos1) & 1;
        if (pos1 < _AP_W2) {
          bool Range1_all_ones = true;
          bool Range1_all_zeros = true;
          bool Range2_all_ones = true;
          ap_int_base<52 + 2, false> Range2;
          ap_int_base<52 + 2, false> all_ones(-1);

          if (pos2 >= 0 && pos2 < _AP_W2) {


            Range2.V = man.V;
            Range2.V >>= pos2;
            Range2_all_ones = Range2 == (all_ones >> pos2);
          } else if (pos2 < 0)
            Range2_all_ones = false;
          if (pos1 >= 0 && pos2 < _AP_W2) {
            Range1_all_ones = Range2_all_ones && lD;
            Range1_all_zeros = !Range2.V && !lD;
          } else if (pos2 == _AP_W2) {
            Range1_all_ones = lD;
            Range1_all_zeros = !lD;
          } else if (pos1 < 0) {
            Range1_all_zeros = !man.V;
            Range1_all_ones = false;
          }

          deleted_zeros =
              deleted_zeros && (carry ? Range1_all_ones : Range1_all_zeros);
          deleted_ones =
              carry ? Range2_all_ones && (pos1 < 0 || !lD) : Range1_all_ones;
          neg_src = isneg && !(carry && Range1_all_ones);
        } else
          neg_src = isneg && newsignbit;
        bool neg_trg = _AP_S && newsignbit;
        bool overflow = (neg_trg || !deleted_zeros) && !isneg;
        bool underflow = (!neg_trg || !deleted_ones) && neg_src;
        if ((_AP_O == AP_SAT_SYM) && _AP_S2 && _AP_S)
          underflow |=
              neg_src &&
              (_AP_W > 1 ? ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, _AP_W - 2); __Result__; }) == 0
                         : true);
        overflow_adjust(underflow, overflow, lD, neg_src);
      }
    }
    report();
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(float d) { *this = ap_fixed_base(double(d)); }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base(half d) { *this = ap_fixed_base(double(d)); }
# 800 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator=(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {

    const int _AP_F = _AP_W - _AP_I;
    const int F2 = _AP_W2 - _AP_I2;
    const int QUAN_INC =
          F2 > _AP_F && !(_AP_Q == AP_TRN || (_AP_Q == AP_TRN_ZERO && !_AP_S2));

    if (!op) Base::V = 0;
    bool carry = false;
    bool signbit = ({ typeof(op.V) __Val2__ = op.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W2 - 1); __Result__; });
    bool isneg = signbit && _AP_S2;
    if (F2 == _AP_F)
      Base::V = op.V;
    else if (F2 > _AP_F) {
      unsigned int sh_amt = F2 - _AP_F;

      if (sh_amt < _AP_W2) {
        Base::V = op.V >> sh_amt;
      } else {
        Base::V = isneg ? -1 : 0;
      }
      if (_AP_Q != AP_TRN && !(_AP_Q == AP_TRN_ZERO && !_AP_S2)) {
        bool qbit = ({ typeof(op.V) __Val2__ = op.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), F2 - _AP_F - 1); __Result__; });

        bool qb = (F2 - _AP_F > _AP_W2) ? _AP_S2 && signbit : qbit;
        enum { hi = ((F2 - _AP_F - 2) < _AP_W2) ? (F2 - _AP_F - 2) : (_AP_W2 - 1) };

        bool r = (F2 > _AP_F + 1) ? (({ typename _ap_type::remove_const<typeof(op.V)>::type __Result__ = 0; typeof(op.V) __Val2__ = op.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, hi); __Result__; }) != 0) : false;
        carry = quantization_adjust(qb, r, isneg);
      }
    } else {
      unsigned sh_amt = _AP_F - F2;

      if (sh_amt < _AP_W) {
        if (_AP_W > _AP_W2) {

          Base::V = op.V;
          Base::V <<= sh_amt;
        } else {

          Base::V = op.V << sh_amt;
        }
      } else {
        Base::V = 0;
      }
    }

    if ((_AP_O != AP_WRAP || _AP_N != 0) &&
        ((!_AP_S && _AP_S2) ||
         _AP_I - _AP_S <
             _AP_I2 - _AP_S2 +
                 (QUAN_INC || (_AP_S2 && _AP_O == AP_SAT_SYM)))) {
      bool deleted_zeros = _AP_S2 ? true : !carry;
      bool deleted_ones = true;
      bool neg_src = isneg;
      bool newsignbit = ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
      enum { pos1 = F2 - _AP_F + _AP_W, pos2 = F2 - _AP_F + _AP_W + 1 };
      bool lD = (pos1 < _AP_W2 && pos1 >= 0) ? ({ typeof(op.V) __Val2__ = op.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), pos1); __Result__; })
                                             : false;
      if (pos1 < _AP_W2) {
        bool Range1_all_ones = true;
        bool Range1_all_zeros = true;
        bool Range2_all_ones = true;
        ap_int_base<_AP_W2, false> all_ones(-1);

        if (pos2 < _AP_W2 && pos2 >= 0) {
          ap_int_base<_AP_W2, false> Range2(0);
          Range2.V = ({ typename _ap_type::remove_const<typeof(op.V)>::type __Result__ = 0; typeof(op.V) __Val2__ = op.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), pos2, _AP_W2 - 1); __Result__; });
          Range2_all_ones = Range2 == (all_ones >> pos2);
        } else if (pos2 < 0) {
          Range2_all_ones = false;
        }

        if (pos1 >= 0 && pos2 < _AP_W2) {
          ap_int_base<_AP_W2, false> Range1(0);
          Range1.V = ({ typename _ap_type::remove_const<typeof(op.V)>::type __Result__ = 0; typeof(op.V) __Val2__ = op.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), pos1, _AP_W2 - 1); __Result__; });
          Range1_all_ones = Range1 == (all_ones >> pos1);
          Range1_all_zeros = !Range1.V;
        } else if (pos2 == _AP_W2) {
          Range1_all_ones = lD;
          Range1_all_zeros = !lD;
        } else if (pos1 < 0) {
          Range1_all_zeros = !op.V;
          Range1_all_ones = false;
        }

        deleted_zeros =
            deleted_zeros && (carry ? Range1_all_ones : Range1_all_zeros);
        deleted_ones =
            carry ? Range2_all_ones && (pos1 < 0 || !lD) : Range1_all_ones;
        neg_src = isneg && !(carry && Range1_all_ones);
      } else
        neg_src = isneg && newsignbit;
      bool neg_trg = _AP_S && newsignbit;
      bool overflow = (neg_trg || !deleted_zeros) && !isneg;
      bool underflow = (!neg_trg || !deleted_ones) && neg_src;
      if ((_AP_O == AP_SAT_SYM) && _AP_S2 && _AP_S)
        underflow |=
            neg_src &&
            (_AP_W > 1 ? ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, _AP_W - 2); __Result__; }) == 0
                       : true);

      overflow_adjust(underflow, overflow, lD, neg_src);
    }
    return *this;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator=(
      const volatile ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    operator=(const_cast<const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(op));
    return *this;
  }


                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& setBits(ap_ulong bv) {

    Base::V = bv;
    return *this;
  }


  static inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base bitsToFixed(ap_ulong bv) {

    ap_fixed_base t;

    t.V = bv;



    return t;
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) void checkOverflowCsimFix(int _ap_w2, bool _ap_s2) const {
# 973 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
      (void)_ap_w2;
      (void)_ap_s2;

      return;
  }





                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<((_AP_I) > (1) ? (_AP_I) : (1)), _AP_S> to_ap_int_base(
      bool Cnative = true) const {
    ap_int_base<((_AP_I) > (1) ? (_AP_I) : (1)), _AP_S> ret(0);
    if (_AP_I == 0) {
      ret.V = 0;
    } else if (_AP_I > 0 && _AP_I <= _AP_W) {
      ret.V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), _AP_W - _AP_I, _AP_W - 1); __Result__; });
    } else if (_AP_I > _AP_W) {
      ret.V = ({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, _AP_W - 1); __Result__; });
      ret.V <<= (_AP_I - _AP_W);
    }
# 1002 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
    if (Cnative && _AP_I < _AP_W) {

      if (_AP_S && ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; }) && (_AP_I < _AP_W) &&
          (({ typename _ap_type::remove_const<typeof(Base::V)>::type __Result__ = 0; typeof(Base::V) __Val2__ = Base::V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, _AP_I < 0 ? _AP_W - 1 : _AP_W - _AP_I - 1); __Result__; }) != (unsigned long)0))


        ret = ret + 1;
    } else {

    }
    return ret;
  };

 public:
  template <int _AP_W2, bool _AP_S2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_int_base<_AP_W2, _AP_S2>() const {
    return ap_int_base<_AP_W2, _AP_S2>(to_ap_int_base());
  }


                      inline __attribute__((always_inline)) __attribute__((nodebug)) char to_char() const { return to_ap_int_base().to_char(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) int to_int() const { return to_ap_int_base().to_int(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned to_uint() const { return to_ap_int_base().to_uint(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_slong to_int64() const { return to_ap_int_base().to_int64(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ulong to_uint64() const { return to_ap_int_base().to_uint64(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int<_AP_I> to_ap_int() const { return ap_int<_AP_I>(to_ap_int_base()); }



  inline __attribute__((always_inline)) __attribute__((nodebug)) double to_double() const {




    enum { BITS = 52 + 11 + 1 };
    if (!Base::V) return 0.0f;
    bool s = _AP_S && ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
    ap_int_base<_AP_W, false> tmp(0);
    if (s)
      tmp.V = -Base::V;
    else
      tmp.V = Base::V;
    int l = tmp.countLeadingZeros();
    int e = _AP_I - l - 1 + ((1 << (11 - 1)) - 1);
    int lsb_index = _AP_W - l - 1 - 52;

    bool a = (lsb_index >=2) ?
        (({ typename _ap_type::remove_const<typeof(tmp.V)>::type __Result__ = 0; typeof(tmp.V) __Val2__ = tmp.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, lsb_index - 2); __Result__; }) != 0) : 0;

    a |= (lsb_index >=0) ? ({ typeof(tmp.V) __Val2__ = tmp.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), lsb_index); __Result__; }) : 0;

    ap_ulong m = 0;

    if (_AP_W > BITS) {
      m = (lsb_index >= 1) ? (ap_ulong)(tmp.V >> (lsb_index - 1))
                           : (ap_ulong)(tmp.V << (1 - lsb_index));
    } else {
      m = (ap_ulong)tmp.V;
      m = (lsb_index >= 1) ? (m >> (lsb_index - 1))
                           : (m << (1 - lsb_index));
    }
    m += a;
    m >>= 1;


    if (({ typeof(m) __Val2__ = m; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), 52 + 1); __Result__; })) {
      e += 1;
    }

    m = ({ typename _ap_type::remove_const<typeof(m)>::type __Result__ = 0; typeof(m) __Val2__ = m; typeof(s) __Repl2__ = !!s; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), BITS - 1, BITS - 1); __Result__; });

    m = ({ typename _ap_type::remove_const<typeof(m)>::type __Result__ = 0; typeof(m) __Val2__ = m; typeof(e) __Repl2__ = e; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 52, 52 + 11 - 1); __Result__; });


    return rawBitsToDouble(m);
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) float to_float() const {




    enum { BITS = 23 + 8 + 1 };
    if (!Base::V) return 0.0f;
    bool s = _AP_S && ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
    ap_int_base<_AP_W, false> tmp;
    if (s)
      tmp.V = -Base::V;
    else
      tmp.V = Base::V;
    int l = tmp.countLeadingZeros();
    int e = _AP_I - l - 1 + ((1 << (8 - 1)) - 1);
    int lsb_index = _AP_W - l - 1 - 23;

    bool a = (lsb_index >=2) ?
        (({ typename _ap_type::remove_const<typeof(tmp.V)>::type __Result__ = 0; typeof(tmp.V) __Val2__ = tmp.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, lsb_index - 2); __Result__; }) != 0) : 0;

    a |= (lsb_index >=0) ? ({ typeof(tmp.V) __Val2__ = tmp.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), lsb_index); __Result__; }) : 0;

    unsigned long m;

    if (_AP_W > BITS) {
      m = (lsb_index >= 1) ? (unsigned long)(tmp.V >> (lsb_index - 1))
                           : (unsigned long)(tmp.V << (1 - lsb_index));
    } else {
      m = (unsigned long)tmp.V;
      m = (lsb_index >= 1) ? (m >> (lsb_index - 1))
                           : (m << (1 - lsb_index));
    }
    m += a;
    m >>= 1;

    if (({ typeof(m) __Val2__ = m; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), 23 + 1); __Result__; })) {
      e += 1;
    }

    m = ({ typename _ap_type::remove_const<typeof(m)>::type __Result__ = 0; typeof(m) __Val2__ = m; typeof(s) __Repl2__ = !!s; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), BITS - 1, BITS - 1); __Result__; });
    m = ({ typename _ap_type::remove_const<typeof(m)>::type __Result__ = 0; typeof(m) __Val2__ = m; typeof(e) __Repl2__ = e; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 23, 23 + 8 - 1); __Result__; });

    return rawBitsToFloat(m);
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) half to_half() const {




    enum { BITS = 10 + 5 + 1 };
    if (!Base::V) return 0.0f;
    bool s = _AP_S && ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; });
    ap_int_base<_AP_W, false> tmp;
    if (s)
      tmp.V = -Base::V;
    else
      tmp.V = Base::V;
    int l = tmp.countLeadingZeros();
    int e = _AP_I - l - 1 + ((1 << (5 - 1)) - 1);
    int lsb_index = _AP_W - l - 1 - 10;

    bool a = (lsb_index >=2) ?
        (({ typename _ap_type::remove_const<typeof(tmp.V)>::type __Result__ = 0; typeof(tmp.V) __Val2__ = tmp.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), 0, lsb_index - 2); __Result__; }) != 0) : 0;

    a |= (lsb_index >=0) ? ({ typeof(tmp.V) __Val2__ = tmp.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), lsb_index); __Result__; }) : 0;

    unsigned short m;

    if (_AP_W > BITS) {
      m = (lsb_index >= 1) ? (unsigned short)(tmp.V >> (lsb_index - 1))
                           : (unsigned short)(tmp.V << (1 - lsb_index));
    } else {
      m = (unsigned short)tmp.V;
      m = (lsb_index >= 1) ? (m >> (lsb_index - 1))
                           : (m << (1 - lsb_index));
    }
    m += a;
    m >>= 1;

    if (({ typeof(m) __Val2__ = m; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), 10 + 1); __Result__; })) {
      e += 1;
    }

    m = ({ typename _ap_type::remove_const<typeof(m)>::type __Result__ = 0; typeof(m) __Val2__ = m; typeof(s) __Repl2__ = !!s; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), BITS - 1, BITS - 1); __Result__; });
    m = ({ typename _ap_type::remove_const<typeof(m)>::type __Result__ = 0; typeof(m) __Val2__ = m; typeof(e) __Repl2__ = e; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), 10, 10 + 5 - 1); __Result__; });

    return rawBitsToHalf(m);
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) operator long double() const { return (long double)to_double(); }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator double() const { return to_double(); }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator float() const { return to_float(); }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator half() const { return to_half(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator bool() const { return (bool)Base::V != 0; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator char() const { return (char)to_int(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator signed char() const { return (signed char)to_int(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator unsigned char() const { return (unsigned char)to_uint(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator short() const { return (short)to_int(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator unsigned short() const { return (unsigned short)to_uint(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator int() const { return to_int(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator unsigned int() const { return to_uint(); }



                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator long() const { return (long)to_int64(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator unsigned long() const { return (unsigned long)to_uint64(); }






                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_ulong() const { return to_uint64(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_slong() const { return to_int64(); }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const { return _AP_W; };
# 1231 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
                      inline __attribute__((always_inline)) __attribute__((nodebug)) int countLeadingZeros() const {


    if (_AP_W <= 32) {
      ap_int_base<32, false> t(-1ULL);
      t.range(_AP_W - 1, 0) = this->range(0, _AP_W - 1);
      return __builtin_ctz(t.V);
    } else if (_AP_W <= 64) {
      ap_int_base<64, false> t(-1ULL);
      t.range(_AP_W - 1, 0) = this->range(0, _AP_W - 1);
      return __builtin_ctzll(t.V);
    } else {
      enum {__N = (_AP_W + 63) / 64};
      int NZeros = 0;
      int i = 0;
      bool hitNonZero = false;
      VITIS_LOOP_1247_1: for (i = 0; i < __N - 1; ++i) {
        ap_int_base<64, false> t;
        t.range(0, 63) = this->range(_AP_W - i * 64 - 64, _AP_W - i * 64 - 1);
        NZeros += hitNonZero ? 0 : __builtin_clzll(t.V);
        hitNonZero |= (t != 0);
      }
      if (!hitNonZero) {
        ap_int_base<64, false> t(-1ULL);
        t.range(63 - (_AP_W - 1) % 64, 63) = this->range(0, (_AP_W - 1) % 64);
        NZeros += __builtin_clzll(t.V);
      }
      return NZeros;
    }



  }



  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::mult operator*(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2)
      const {
    typename RType<_AP_W2, _AP_I2, _AP_S2>::mult_base r(0), t(0);
    r.V = Base::V;
    t.V = op2.V;
    r.V *= op2.V;
    return r;
  }



  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::div operator/(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2)
      const {
    typename RType<_AP_W2, _AP_I2, _AP_S2>::div_base r;
# 1301 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
        ap_fixed_base<_AP_W + ((_AP_W2 - _AP_I2) > (0) ? (_AP_W2 - _AP_I2) : (0)),_AP_I, _AP_S> t(*this);



        r.V = t.V / op2.V;
# 1334 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
    return r;
  }
# 1349 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::plus operator +( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { typename RType<_AP_W2, _AP_I2, _AP_S2>::plus_base ret(0), lhs(*this), rhs(op2); ret.V = lhs.V + rhs.V; return ret; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::minus operator -( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { typename RType<_AP_W2, _AP_I2, _AP_S2>::minus_base ret(0), lhs(*this), rhs(op2); ret.V = lhs.V - rhs.V; return ret; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::logic operator &( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { typename RType<_AP_W2, _AP_I2, _AP_S2>::logic_base ret(0), lhs(*this), rhs(op2); ret.V = lhs.V & rhs.V; return ret; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::logic operator |( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { typename RType<_AP_W2, _AP_I2, _AP_S2>::logic_base ret(0), lhs(*this), rhs(op2); ret.V = lhs.V | rhs.V; return ret; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename RType<_AP_W2, _AP_I2, _AP_S2>::logic operator ^( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { typename RType<_AP_W2, _AP_I2, _AP_S2>::logic_base ret(0), lhs(*this), rhs(op2); ret.V = lhs.V ^ rhs.V; return ret; }
# 1367 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator *=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator *(op2); return *this; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator /=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator /(op2); return *this; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator +=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator +(op2); return *this; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator -=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator -(op2); return *this; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator &=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator &(op2); return *this; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator |=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator |(op2); return *this; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator ^=( const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) { *this = operator ^(op2); return *this; }





  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator++() {
    operator+=(ap_fixed_base<_AP_W - _AP_I + 1, 1, false>(1));
    return *this;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator--() {
    operator-=(ap_fixed_base<_AP_W - _AP_I + 1, 1, false>(1));
    return *this;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) const ap_fixed_base operator++(int) {
    ap_fixed_base r(*this);
    operator++();
    return r;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) const ap_fixed_base operator--(int) {
    ap_fixed_base r(*this);
    operator--();
    return r;
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) typename _ap_fixed_factory<_AP_W, _AP_I, _AP_S>::type operator+() { return *this; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) typename _ap_fixed_factory<_AP_W + 1, _AP_I + 1, true>::type operator-() const {
    ap_fixed_base<_AP_W + 1, _AP_I + 1, true> r(*this);
    r.V = -r.V;
    return r;
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, true, _AP_Q, _AP_O, _AP_N> getNeg() {
    ap_fixed_base<_AP_W, _AP_I, true, _AP_Q, _AP_O, _AP_N> r(*this);
    r.V = -r.V;
    return r;
  }



                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!() const { return Base::V == (unsigned long)0; }




                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S> operator~() const {
    ap_fixed_base<_AP_W, _AP_I, _AP_S> r(0);
    r.V = ~Base::V;
    return r;
  }




  template <int _AP_SHIFT>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I + _AP_SHIFT, _AP_S> lshift() const {
    ap_fixed_base<_AP_W, _AP_I + _AP_SHIFT, _AP_S> r(0);
    r.V = Base::V;
    return r;
  }

  template <int _AP_SHIFT>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I - _AP_SHIFT, _AP_S> rshift() const {
    ap_fixed_base<_AP_W, _AP_I - _AP_SHIFT, _AP_S> r(0);
    r.V = Base::V;
    return r;
  }





                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator<<(unsigned int sh) const {
    ap_fixed_base r(0);
    r.V = Base::V << sh;
# 1485 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
    return r;
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator>>(unsigned int sh) const {
    ap_fixed_base r(0);
    r.V = Base::V >> sh;
# 1507 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
    return r;
  }


                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator<<(int sh) const {
    ap_fixed_base r(0);
    bool isNeg = sh < 0;
    unsigned int ush = isNeg ? -sh : sh;
    if (isNeg) {
      return operator>>(ush);
    } else {
      return operator<<(ush);
    }
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator>>(int sh) const {
    bool isNeg = sh < 0;
    unsigned int ush = isNeg ? -sh : sh;
    if (isNeg) {
      return operator<<(ush);
    } else {
      return operator>>(ush);
    }
  }


  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator<<(const ap_int_base<_AP_W2, true>& op2) const {


    int sh = op2.to_int();
    return operator<<(sh);
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator>>(const ap_int_base<_AP_W2, true>& op2) const {
    int sh = op2.to_int();
    return operator>>(sh);
  }


  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator<<(const ap_int_base<_AP_W2, false>& op2) const {
    unsigned int sh = op2.to_uint();
    return operator<<(sh);
  }

  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator>>(const ap_int_base<_AP_W2, false>& op2) const {
    unsigned int sh = op2.to_uint();
    return operator>>(sh);
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator<<(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&
          op2) {
    return operator<<(op2.to_ap_int_base());
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base operator>>(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&
          op2) {
    return operator>>(op2.to_ap_int_base());
  }





                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator<<=(const int sh) {
    *this = operator<<(sh);
    return *this;
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator<<=(const unsigned int sh) {
    *this = operator<<(sh);
    return *this;
  }

  template <int _AP_W2, bool _AP_S2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator<<=(const ap_int_base<_AP_W2, _AP_S2>& sh) {
    *this = operator<<(sh.to_int());
    return *this;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator<<=(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&
          sh) {
    *this = operator<<(sh.to_int());
    return *this;
  }


                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator>>=(const int sh) {
    *this = operator>>(sh);
    return *this;
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator>>=(const unsigned int sh) {
    *this = operator>>(sh);
    return *this;
  }

  template <int _AP_W2, bool _AP_S2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator>>=(const ap_int_base<_AP_W2, _AP_S2>& sh) {
    *this = operator>>(sh.to_int());
    return *this;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base& operator>>=(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&
          sh) {
    *this = operator>>(sh.to_int());
    return *this;
  }
# 1651 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { enum { _AP_F = _AP_W - _AP_I, F2 = _AP_W2 - _AP_I2 }; if (_AP_F == F2) return Base::V > op2.V; else if (_AP_F > F2) return Base::V > ap_fixed_base<((_AP_W2 + _AP_F - F2) > (1) ? (_AP_W2 + _AP_F - F2) : (1)), _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>(op2).V; else return ap_fixed_base<((_AP_W + F2 - _AP_F + 1) > (1) ? (_AP_W + F2 - _AP_F + 1) : (1)), _AP_I + 1, _AP_S, _AP_Q, _AP_O, _AP_N>(*this).V > op2.V; return false; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { enum { _AP_F = _AP_W - _AP_I, F2 = _AP_W2 - _AP_I2 }; if (_AP_F == F2) return Base::V < op2.V; else if (_AP_F > F2) return Base::V < ap_fixed_base<((_AP_W2 + _AP_F - F2) > (1) ? (_AP_W2 + _AP_F - F2) : (1)), _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>(op2).V; else return ap_fixed_base<((_AP_W + F2 - _AP_F + 1) > (1) ? (_AP_W + F2 - _AP_F + 1) : (1)), _AP_I + 1, _AP_S, _AP_Q, _AP_O, _AP_N>(*this).V < op2.V; return false; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { enum { _AP_F = _AP_W - _AP_I, F2 = _AP_W2 - _AP_I2 }; if (_AP_F == F2) return Base::V >= op2.V; else if (_AP_F > F2) return Base::V >= ap_fixed_base<((_AP_W2 + _AP_F - F2) > (1) ? (_AP_W2 + _AP_F - F2) : (1)), _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>(op2).V; else return ap_fixed_base<((_AP_W + F2 - _AP_F + 1) > (1) ? (_AP_W + F2 - _AP_F + 1) : (1)), _AP_I + 1, _AP_S, _AP_Q, _AP_O, _AP_N>(*this).V >= op2.V; return false; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { enum { _AP_F = _AP_W - _AP_I, F2 = _AP_W2 - _AP_I2 }; if (_AP_F == F2) return Base::V <= op2.V; else if (_AP_F > F2) return Base::V <= ap_fixed_base<((_AP_W2 + _AP_F - F2) > (1) ? (_AP_W2 + _AP_F - F2) : (1)), _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>(op2).V; else return ap_fixed_base<((_AP_W + F2 - _AP_F + 1) > (1) ? (_AP_W + F2 - _AP_F + 1) : (1)), _AP_I + 1, _AP_S, _AP_Q, _AP_O, _AP_N>(*this).V <= op2.V; return false; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { enum { _AP_F = _AP_W - _AP_I, F2 = _AP_W2 - _AP_I2 }; if (_AP_F == F2) return Base::V == op2.V; else if (_AP_F > F2) return Base::V == ap_fixed_base<((_AP_W2 + _AP_F - F2) > (1) ? (_AP_W2 + _AP_F - F2) : (1)), _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>(op2).V; else return ap_fixed_base<((_AP_W + F2 - _AP_F + 1) > (1) ? (_AP_W + F2 - _AP_F + 1) : (1)), _AP_I + 1, _AP_S, _AP_Q, _AP_O, _AP_N>(*this).V == op2.V; return false; }
  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2, ap_o_mode _AP_O2, int _AP_N2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) const { enum { _AP_F = _AP_W - _AP_I, F2 = _AP_W2 - _AP_I2 }; if (_AP_F == F2) return Base::V != op2.V; else if (_AP_F > F2) return Base::V != ap_fixed_base<((_AP_W2 + _AP_F - F2) > (1) ? (_AP_W2 + _AP_F - F2) : (1)), _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>(op2).V; else return ap_fixed_base<((_AP_W + F2 - _AP_F + 1) > (1) ? (_AP_W + F2 - _AP_F + 1) : (1)), _AP_I + 1, _AP_S, _AP_Q, _AP_O, _AP_N>(*this).V != op2.V; return false; }





  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >(double d) const { return to_double() > d; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <(double d) const { return to_double() < d; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=(double d) const { return to_double() >= d; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=(double d) const { return to_double() <= d; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==(double d) const { return to_double() == d; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=(double d) const { return to_double() != d; }


  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> operator[](
      unsigned index) {
    (static_cast<void>(0));
    return af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(this, index);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> operator[](
      const ap_int_base<_AP_W2, _AP_S2>& index) {
    (static_cast<void>(0));
    (static_cast<void>(0));
    return af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(this,
                                                                index.to_int());
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator[](unsigned index) const {
    (static_cast<void>(0));
    return ({ typeof(const_cast<ap_fixed_base*>(this)->V) __Val2__ = const_cast<ap_fixed_base*>(this)->V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), index); __Result__; });
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> bit(
      unsigned index) {
    (static_cast<void>(0));
    return af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(this, index);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> bit(
      const ap_int_base<_AP_W2, _AP_S2>& index) {
    (static_cast<void>(0));
    (static_cast<void>(0));
    return af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(this,
                                                                index.to_int());
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool bit(unsigned index) const {
    (static_cast<void>(0));
    return ({ typeof(const_cast<ap_fixed_base*>(this)->V) __Val2__ = const_cast<ap_fixed_base*>(this)->V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), index); __Result__; });
  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> get_bit(
      const ap_int_base<_AP_W2, true>& index) {
    (static_cast<void>(0));

    (static_cast<void>(0));
    return af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(
        this, index.to_int() + _AP_W - _AP_I);
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool get_bit(int index) const {
    (static_cast<void>(0));
    (static_cast<void>(0));
    return ({ typeof(const_cast<ap_fixed_base*>(this)->V) __Val2__ = const_cast<ap_fixed_base*>(this)->V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), index + _AP_W - _AP_I); __Result__; });

  }
# 1737 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  template <int _AP_W2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool get_bit(const ap_int_base<_AP_W2, true>& index) const {
    (static_cast<void>(0));
    (static_cast<void>(0));
    return ({ typeof(const_cast<ap_fixed_base*>(this)->V) __Val2__ = const_cast<ap_fixed_base*>(this)->V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), index.to_int() + _AP_W - _AP_I); __Result__; });

  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> range(int Hi,
                                                                      int Lo) {
    (static_cast<void>(0));
    return af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(this, Hi, Lo);
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> range(
      int Hi, int Lo) const {
    (static_cast<void>(0));
    return af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>(
        const_cast<ap_fixed_base*>(this), Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> range(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> range(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) const {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> range() {
    return this->range(_AP_W - 1, 0);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> range() const {
    return this->range(_AP_W - 1, 0);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> operator()(
      int Hi, int Lo) {
    return this->range(Hi, Lo);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> operator()(
      int Hi, int Lo) const {
    return this->range(Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> operator()(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

  template <int _AP_W2, bool _AP_S2, int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> operator()(
      const ap_int_base<_AP_W2, _AP_S2>& HiIdx,
      const ap_int_base<_AP_W3, _AP_S3>& LoIdx) const {
    int Hi = HiIdx.to_int();
    int Lo = LoIdx.to_int();
    return this->range(Hi, Lo);
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool is_zero() const { return Base::V == (unsigned long)0; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) bool is_neg() const {
    if (_AP_S && ({ typeof(Base::V) __Val2__ = Base::V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), _AP_W - 1); __Result__; })) return true;
    return false;
  }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) int wl() const { return _AP_W; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) int iwl() const { return _AP_I; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_q_mode q_mode() const { return _AP_Q; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_o_mode o_mode() const { return _AP_O; }

                      inline __attribute__((always_inline)) __attribute__((nodebug)) int n_bits() const { return _AP_N; }
# 1920 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) char* to_string(unsigned char radix = 2, bool sign = _AP_S) const {
    (void)(radix);
    (void)(sign);
    return 0;
  }

};

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void b_not(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) {
  ret.V = ~op.V;
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void b_and(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  ret.V = op1.V & op2.V;
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void b_or(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  ret.V = op1.V | op2.V;
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void b_xor(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  ret.V = op1.V ^ op2.V;
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N, int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
          ap_o_mode _AP_O2, int _AP_N2>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void neg(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
  ap_fixed_base<_AP_W2 + !_AP_S2, _AP_I2 + !_AP_S2, true, _AP_Q2, _AP_O2,
                _AP_N2>
      t(0);
  t.V = -op.V;
  ret = t;
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N, int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
          ap_o_mode _AP_O2, int _AP_N2>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void lshift(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op,
    int i) {
  enum {
    F2 = _AP_W2 - _AP_I2,
    _AP_I3 = ((_AP_I) > (_AP_I2) ? (_AP_I) : (_AP_I2)),
    _AP_W3 = _AP_I3 + F2,
  };

  ap_fixed_base<_AP_W3, _AP_I3, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> t(0);
  t.V = op.V;
  t.V <<= i;

  ret = t;
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N, int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
          ap_o_mode _AP_O2, int _AP_N2>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) void rshift(
    ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ret,
    const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op,
    int i) {
  enum {
    F = _AP_W - _AP_I,
    F2 = _AP_W2 - _AP_I2,
    F3 = ((F) > (F2) ? (F) : (F2)),
    _AP_W3 = _AP_I2 + F3,
    sh = F - F2,
  };

  ap_fixed_base<_AP_W3, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> t(0);
  t.V = op.V;
  if (sh >= 0)
    t.V <<= (int) sh;
  t.V >>= i;

  ret = t;
}
# 2372 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator +(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::plus operator +( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator -(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::minus operator -( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator *(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::mult operator *( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator /(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::div operator /( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator &(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::logic operator &( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator |(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::logic operator |( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator ^(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::logic operator ^( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator >>(ap_int_base<(1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (1), (1), (false)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator <<(ap_int_base<(1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator +=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator -=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator *=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator /=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator &=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator |=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator ^=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator >>=(ap_int_base<(1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator <<=(ap_int_base<(1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator >(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator <(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator >=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator <=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator ==(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool i_op) { return op.operator !=(ap_fixed_base<(1), (1), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( bool i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(1), (1), (false)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator +(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::plus operator +( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator -(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::minus operator -( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator *(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::mult operator *( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator /(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::div operator /( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator &(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::logic operator &( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator |(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::logic operator |( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator ^(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::logic operator ^( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator >>(ap_int_base<(8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (CHAR_IS_SIGNED)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator <<(ap_int_base<(8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator +=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator -=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator *=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator /=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator &=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator |=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator ^=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator >>=(ap_int_base<(8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator <<=(ap_int_base<(8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator >(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator <(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator >=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator <=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator ==(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char i_op) { return op.operator !=(ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (CHAR_IS_SIGNED)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator +(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::plus operator +( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator -(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::minus operator -( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator *(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::mult operator *( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator /(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::div operator /( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator &(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::logic operator &( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator |(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::logic operator |( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator ^(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::logic operator ^( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator >>(ap_int_base<(8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (true)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator <<(ap_int_base<(8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator +=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator -=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator *=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator /=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator &=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator |=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator ^=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator >>=(ap_int_base<(8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator <<=(ap_int_base<(8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator >(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator <(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator >=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator <=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator ==(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char i_op) { return op.operator !=(ap_fixed_base<(8), (8), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( signed char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (true)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator +(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::plus operator +( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator -(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::minus operator -( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator *(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::mult operator *( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator /(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::div operator /( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator &(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::logic operator &( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator |(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::logic operator |( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator ^(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::logic operator ^( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator >>(ap_int_base<(8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (8), (8), (false)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator <<(ap_int_base<(8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator +=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator -=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator *=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator /=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator &=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator |=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator ^=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator >>=(ap_int_base<(8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator <<=(ap_int_base<(8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator >(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator <(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator >=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator <=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator ==(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char i_op) { return op.operator !=(ap_fixed_base<(8), (8), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned char i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(8), (8), (false)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::plus operator +( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::minus operator -( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::mult operator *( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::div operator /( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::logic operator &( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::logic operator |( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::logic operator ^( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (true)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (true)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::plus operator +( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::minus operator -( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::mult operator *( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::div operator /( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::logic operator &( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::logic operator |( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::logic operator ^( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_short), (_AP_SIZE_short), (false)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned short i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_short), (_AP_SIZE_short), (false)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::plus operator +( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::minus operator -( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::mult operator *( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::div operator /( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::logic operator &( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::logic operator |( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::logic operator ^( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (true)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (true)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::plus operator +( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::minus operator -( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::mult operator *( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::div operator /( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::logic operator &( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::logic operator |( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::logic operator ^( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_int), (_AP_SIZE_int), (false)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned int i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_int), (_AP_SIZE_int), (false)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::plus operator +( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::minus operator -( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::mult operator *( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::div operator /( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::logic operator &( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::logic operator |( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::logic operator ^( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (true)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (true)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::plus operator +( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::minus operator -( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::mult operator *( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::div operator /( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::logic operator &( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::logic operator |( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::logic operator ^( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_long), (_AP_SIZE_long), (false)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned long i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_long), (_AP_SIZE_long), (false)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::plus operator +( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::minus operator -( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::mult operator *( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::div operator /( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::logic operator &( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::logic operator |( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::logic operator ^( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( ap_slong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (true)>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator +(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::plus operator +( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator -(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::minus operator -( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator *(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::mult operator *( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator /(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::div operator /( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator &(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::logic operator &( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator |(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::logic operator |( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator ^(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::logic operator ^( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::lhs operator >>( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator >>(ap_int_base<(_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< (_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>::lhs operator <<( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator <<(ap_int_base<(_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator +=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator -=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator *=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator /=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator &=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator |=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator ^=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator >>=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator >>=(ap_int_base<(_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator <<=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator <<=(ap_int_base<(_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator >(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator >(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator <(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator <(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator >=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator >=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator <=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator <=(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator ==(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator ==(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong i_op) { return op.operator !=(ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( ap_ulong i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<(_AP_SIZE_ap_slong), (_AP_SIZE_ap_slong), (false)>(i_op).operator !=(op); }
# 2460 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_base.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::plus operator +( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator +(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::plus operator +( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator +(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::minus operator -( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator -(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::minus operator -( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator -(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::mult operator *( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator *(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::mult operator *( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator *(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::div operator /( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator /(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::div operator /( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator /(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::logic operator &( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator &(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::logic operator &( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator &(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::logic operator |( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator |(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::logic operator |( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator |(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>::template RType< _AP_W, _AP_I, _AP_S>::logic operator ^( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator ^(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) typename ap_fixed_base<_AP_W, _AP_I, _AP_S>::template RType< _AP_W2, _AP_W2, _AP_S2>::logic operator ^( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator ^(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); }



template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator +=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator +=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator +=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator +=(op.to_ap_int_base()); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator -=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator -=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator -=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator -=(op.to_ap_int_base()); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator *=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator *=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator *=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator *=(op.to_ap_int_base()); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator /=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator /=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator /=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator /=(op.to_ap_int_base()); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator &=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator &=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator &=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator &=(op.to_ap_int_base()); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator |=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator |=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator |=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator |=(op.to_ap_int_base()); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& operator ^=( ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator ^=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W2, _AP_S2>& operator ^=( ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return i_op.operator ^=(op.to_ap_int_base()); }



template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator ==(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator ==(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator !=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator !=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator >(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator >(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator >=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator >=(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator <(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator <(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& i_op) { return op.operator <=(ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op)); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_int_base<_AP_W2, _AP_S2>& i_op, const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_fixed_base<_AP_W2, _AP_W2, _AP_S2>(i_op).operator <=(op); }




template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(
    double op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  return op2.operator==(op1);
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(
    double op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  return op2.operator!=(op1);
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>(
    double op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  return op2.operator<(op1);
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>=(
    double op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  return op2.operator<=(op1);
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<(
    double op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  return op2.operator>(op1);
}

template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
                    inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<=(
    double op1,
    const ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op2) {
  return op2.operator>=(op1);
}
# 11 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h" 2
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h" 1
# 25 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
struct af_bit_ref {



  typedef ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> ref_type;
  ref_type& d_bv;
  int d_index;

 public:
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref(
      const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ref)
      : d_bv(ref.d_bv), d_index(ref.d_index) {






  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref(ref_type* bv, int index = 0) : d_bv(*bv), d_index(index) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref(const ref_type* bv, int index = 0)
      : d_bv(*const_cast<ref_type*>(bv)), d_index(index) {}


  inline __attribute__((always_inline)) __attribute__((nodebug)) operator bool() const { return ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; }); }



  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(bool val) {
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val) __Repl2__ = !!val; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), d_index, d_index); __Result__; });
    return *this;
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(const af_bit_ref& val) {
    return operator=(bool(val));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    return operator=(bool(val));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(const ap_bit_ref<_AP_W2, _AP_S2>& val) {
    return operator=(bool(val));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(const ap_int_base<_AP_W2, _AP_S2>& val) {
    return operator=(val != 0);
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(const ap_range_ref<_AP_W2, _AP_S2>& val) {
    return operator=(ap_int_base<_AP_W2, false>(val));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    return operator=(ap_int_base<_AP_W2, false>(val));
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_bit_ref& operator=(
      const ap_concat_ref<_AP_W2, _AP_T3, _AP_W3, _AP_T3>& val) {
    return operator=(ap_int_base<_AP_W2 + _AP_W3, false>(val));
  }




  template <int _AP_W2, int _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, af_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
  operator,(ap_int_base<_AP_W2, _AP_S2> &op) {
    return ap_concat_ref<1, af_bit_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >(
        *this, op);
  }

  template <int _AP_W2, int _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, af_bit_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> > operator,(
      const ap_bit_ref<_AP_W2, _AP_S2> &op) {
    return ap_concat_ref<1, af_bit_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> >(*this,
                                                                        op);
  }

  template <int _AP_W2, int _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, af_bit_ref, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >
  operator,(const ap_range_ref<_AP_W2, _AP_S2> &op) {
    return ap_concat_ref<1, af_bit_ref, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >(
        *this, op);
  }

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, af_bit_ref, _AP_W2 + _AP_W3,
                       ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >
  operator,(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> &op) {
    return ap_concat_ref<1, af_bit_ref, _AP_W2 + _AP_W3,
                         ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >(*this,
                                                                         op);
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<
      1, af_bit_ref, _AP_W2,
      af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
  operator,(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &op) {
    return ap_concat_ref<
        1, af_bit_ref, _AP_W2,
        af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(*this,
                                                                       op);
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<1, af_bit_ref, 1, af_bit_ref<_AP_W2, _AP_I2, _AP_S2,
                                                    _AP_Q2, _AP_O2, _AP_N2> >
  operator,(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &op) {
    return ap_concat_ref<1, af_bit_ref, 1, af_bit_ref<_AP_W2, _AP_I2, _AP_S2,
                                                      _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(
            op));
  }




  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    return get() == op.get();
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op) {
    return get() != op.get();
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator~() const {
    bool bit = ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; });
    return bit ? false : true;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) bool get() const { return ({ typeof(d_bv.V) __Val2__ = d_bv.V; bool __Result__ = __builtin_bit_select((void*)(&__Val2__), d_index); __Result__; }); }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const { return 1; }





  inline __attribute__((always_inline)) __attribute__((nodebug)) char* to_string() const { return 0; }

};
# 212 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O,
          int _AP_N>
struct af_range_ref {



  typedef ap_fixed_base<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N> ref_type;
  ref_type& d_bv;
  int l_index;
  int h_index;

 public:

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref(
      const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& ref)
      : d_bv(ref.d_bv), l_index(ref.l_index), h_index(ref.h_index) {}




  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref(ref_type* bv, int h, int l)
      : d_bv(*bv), l_index(l), h_index(h) {
# 242 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref(const ref_type* bv, int h, int l)
      : d_bv(*const_cast<ref_type*>(bv)), l_index(l), h_index(h) {
# 254 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
  }
# 266 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const bool val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const char val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const signed char val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const unsigned char val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const short val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const unsigned short val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const int val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const unsigned int val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const long val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const unsigned long val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const ap_slong val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const ap_ulong val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const half val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const float val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const double val) { ap_int_base<_AP_W, false> loc(val); d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(loc.V) __Repl2__ = loc.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; }); return *this; }



  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const char* val) {
    const ap_int_base<_AP_W, false> tmp(val);
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(tmp.V) __Repl2__ = tmp.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
    return *this;
  }



  template <int _AP_W3, bool _AP_S3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const ap_int_base<_AP_W3, _AP_S3>& val) {
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val.V) __Repl2__ = val.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
    return *this;
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const ap_range_ref<_AP_W2, _AP_S2>& val) {
    const ap_int_base<_AP_W2, false> tmp(val);
    return operator=(tmp);
  }


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const ap_bit_ref<_AP_W2, _AP_S2>& val) {
    const ap_int_base<1, false> tmp((bool)val);
    return operator=(tmp);
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(
      const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&
          val) {
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val.V) __Repl2__ = val.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
    return *this;
  }




  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(const af_range_ref& val) {
    ap_int_base<_AP_W, false> tmp(val);
    return operator=(tmp);
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    ap_int_base<_AP_W2, false> tmp(val);
    return operator=(tmp);
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& val) {
    ap_int_base<1, false> tmp((bool)val);
    return operator=(tmp);
  }


  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) af_range_ref& operator=(
      const ap_concat_ref<_AP_W2, _AP_T3, _AP_W3, _AP_T3>& val) {
    const ap_int_base<_AP_W2 + _AP_W3, false> tmp(val);
    return operator=(tmp);
  }




  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> rop(op2);
    return lop == rop;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    return !(operator==(op2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> rop(op2);
    return lop < rop;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> rop(op2);
    return lop > rop;
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    return !(operator>(op2));
  }

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>=(const ap_range_ref<_AP_W2, _AP_S2>& op2) {
    return !(operator<(op2));
  }




  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator==(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> rop(op2);
    return lop == rop;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator!=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) {
    return !(operator==(op2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> rop(op2);
    return lop < rop;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) {
    ap_int_base<_AP_W, false> lop(*this);
    ap_int_base<_AP_W2, false> rop(op2);
    return lop > rop;
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator<=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) {
    return !(operator>(op2));
  }

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator>=(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op2) {
    return !(operator<(op2));
  }





  template <int _AP_W2, int _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, af_range_ref, _AP_W2, ap_int_base<_AP_W2, _AP_S2> >
      operator,(ap_int_base<_AP_W2, _AP_S2> &op) {
    return ap_concat_ref<_AP_W, af_range_ref, _AP_W2,
                         ap_int_base<_AP_W2, _AP_S2> >(*this, op);
  }


  template <int _AP_W2, int _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, af_range_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> >
  operator,(const ap_bit_ref<_AP_W2, _AP_S2> &op) {
    return ap_concat_ref<_AP_W, af_range_ref, 1, ap_bit_ref<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_bit_ref<_AP_W2, _AP_S2>&>(op));
  }


  template <int _AP_W2, int _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, af_range_ref, _AP_W2, ap_range_ref<_AP_W2, _AP_S2> >
  operator,(const ap_range_ref<_AP_W2, _AP_S2> &op) {
    return ap_concat_ref<_AP_W, af_range_ref, _AP_W2,
                         ap_range_ref<_AP_W2, _AP_S2> >(
        *this, const_cast<ap_range_ref<_AP_W2, _AP_S2>&>(op));
  }


  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_concat_ref<_AP_W, af_range_ref, _AP_W2 + _AP_W3,
                       ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >
  operator,(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> &op) {
    return ap_concat_ref<_AP_W, af_range_ref, _AP_W2 + _AP_W3,
                         ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3> >(
        *this, const_cast<ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>&>(op));
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, af_range_ref, _AP_W2,
                    af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
      operator,(const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>
                    &op) {
    return ap_concat_ref<
        _AP_W, af_range_ref, _AP_W2,
        af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(
            op));
  }


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug))
      ap_concat_ref<_AP_W, af_range_ref, 1,
                    af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >
      operator,(
          const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> &op) {
    return ap_concat_ref<
        _AP_W, af_range_ref, 1,
        af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2> >(
        *this,
        const_cast<af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>&>(
            op));
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_ulong() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret.to_uint64();
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) operator ap_int_base<_AP_W, false>() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> to_ap_int_base() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) char to_char() const {
    return (char)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int to_int() const {
    return (int)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned to_uint() const {
    return (unsigned)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) long to_long() const {
    return (long)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned long to_ulong() const {
    return (unsigned long)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_slong to_int64() const {
    return (ap_slong)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ulong to_uint64() const {
    return (ap_ulong)(({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; }));
  }



  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator~() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return (~ret);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator!() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return (!ret);
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator+() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> operator-() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return (-ret);
  }


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_int_base<_AP_W, false> get() const {
    ap_int_base<_AP_W, false> ret;
    ret.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; __builtin_bit_part_select((void*)(&__Result__), (void*)(&__Val2__), l_index, h_index); __Result__; });
    return ret;
  }

  template <int _AP_W2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) void set(const ap_int_base<_AP_W2, false>& val) {
    d_bv.V = ({ typename _ap_type::remove_const<typeof(d_bv.V)>::type __Result__ = 0; typeof(d_bv.V) __Val2__ = d_bv.V; typeof(val.V) __Repl2__ = val.V; __builtin_bit_part_set((void*)(&__Result__), (void*)(&__Val2__), (void*)(&__Repl2__), l_index, h_index); __Result__; });
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) int length() const {
    return h_index >= l_index ? h_index - l_index + 1 : l_index - h_index + 1;
  }
# 615 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) char* to_string(signed char rd = 2) const {
     (void)(rd);
    return 0;
  }

};
# 679 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(1), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( bool op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(1), (false)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( bool op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(1), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( bool op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(1), (false)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( bool op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(1), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( bool op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(1), (false)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( bool op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(1), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( bool op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(1), (false)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( bool op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(1), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( bool op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(1), (false)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( bool op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(1), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( bool op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(1), (false)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, bool op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( bool op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(8), (CHAR_IS_SIGNED)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (CHAR_IS_SIGNED)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, char op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(8), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( signed char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (true)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( signed char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(8), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( signed char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (true)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( signed char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(8), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( signed char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (true)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( signed char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(8), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( signed char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (true)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( signed char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(8), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( signed char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (true)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( signed char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(8), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( signed char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (true)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, signed char op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( signed char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(8), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (false)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(8), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (false)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(8), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (false)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(8), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (false)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(8), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (false)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(8), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned char op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(8), (false)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned char op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned char op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_short), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (true)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, short op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_short), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned short op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_short), (false)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned short op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned short op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_int), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (true)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, int op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_int), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned int op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_int), (false)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned int op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned int op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_long), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (true)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, long op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( unsigned long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( unsigned long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( unsigned long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( unsigned long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( unsigned long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_long), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned long op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_long), (false)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, unsigned long op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( unsigned long op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( ap_slong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( ap_slong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( ap_slong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( ap_slong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( ap_slong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( ap_slong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( ap_slong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( ap_slong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( ap_slong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( ap_slong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( ap_slong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (true)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_slong op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( ap_slong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) > ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( ap_ulong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return bool(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( ap_ulong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) < ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( ap_ulong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return bool(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( ap_ulong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) >= ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( ap_ulong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return bool(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( ap_ulong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) <= ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( ap_ulong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return bool(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( ap_ulong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) == ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( ap_ulong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return bool(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( ap_ulong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == bool(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return ap_int_base<_AP_W, false>(op) != ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( ap_ulong op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return ap_int_base<(_AP_SIZE_ap_slong), (false)>(op2) != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, ap_ulong op2) { return bool(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( ap_ulong op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != bool(op); }
# 725 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_ref.h"
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S>& op2) { return ap_int_base<_AP_W, false>(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op) > op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 > ap_int_base<1, false>(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S>& op2) { return ap_int_base<_AP_W, false>(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op) < op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 < ap_int_base<1, false>(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S>& op2) { return ap_int_base<_AP_W, false>(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op) >= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator >=( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 >= ap_int_base<1, false>(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S>& op2) { return ap_int_base<_AP_W, false>(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op) <= op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator <=( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 <= ap_int_base<1, false>(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S>& op2) { return ap_int_base<_AP_W, false>(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op) == op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator ==( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 == ap_int_base<1, false>(op); }
template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S>& op2) { return ap_int_base<_AP_W, false>(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_range_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != ap_int_base<_AP_W, false>(op); } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op, const ap_int_base<_AP_W2, _AP_S2>& op2) { return ap_int_base<1, false>(op) != op2; } template <int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N, int _AP_W2, bool _AP_S2> inline __attribute__((always_inline)) __attribute__((nodebug)) bool operator !=( const ap_int_base<_AP_W2, _AP_S2>& op2, const af_bit_ref<_AP_W, _AP_I, _AP_S, _AP_Q, _AP_O, _AP_N>& op) { return op2 != ap_int_base<1, false>(op); }
# 12 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h" 2





template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
struct ap_fixed : ap_fixed_base<_AP_W, _AP_I, true, _AP_Q, _AP_O, _AP_N> {
  typedef ap_fixed_base<_AP_W, _AP_I, true, _AP_Q, _AP_O, _AP_N> Base;


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed() = default;


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2,
                                      _AP_O2, _AP_N2>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const volatile ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2,
                                               _AP_O2, _AP_N2>& op)
      : Base(op) {}
# 66 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
  template <int _AP_W2, bool _AP_S2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const ap_int_base<_AP_W2, _AP_S2>& op) : Base(op) {}

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const volatile ap_int_base<_AP_W2, _AP_S2>& op) : Base(op) {}




  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(unsigned V __attribute__((bitwidth(_AP_W))), bool raw) {
    Base::V = V;
    (void)(raw);
  }
# 101 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const ap_bit_ref<_AP_W2, _AP_S2>& op) : Base(op) {}


  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const ap_range_ref<_AP_W2, _AP_S2>& op) : Base(op) {}


  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& op)
      : Base(op) {}


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}





                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(bool v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(char v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(signed char v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(unsigned char v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(short v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(unsigned short v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(int v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(unsigned int v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(long v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(unsigned long v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(ap_slong v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(ap_ulong v) : Base(v) {}
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(half v) : Base(v) {}
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(float v) : Base(v) {}
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(double v) : Base(v) {}


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const char* s) : Base(s) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed(const char* s, signed char rd) : Base(s, rd) {}







  ap_fixed &
  operator=(const ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &op) = default;
# 168 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(
      const ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N>& op) volatile {
    Base::V = op.V;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_fixed& operator=(
      const volatile ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N>& op) {
    Base::V = op.V;
    return *this;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(
      const volatile ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N>& op) volatile {
    Base::V = op.V;
  }
};





template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
struct ap_ufixed : ap_fixed_base<_AP_W, _AP_I, false, _AP_Q, _AP_O, _AP_N> {
  typedef ap_fixed_base<_AP_W, _AP_I, false, _AP_Q, _AP_O, _AP_N> Base;


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed() = default;


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2,
                                       _AP_O2, _AP_N2>& op)
      : Base(op) {}


  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const volatile ap_fixed_base<_AP_W2, _AP_I2, _AP_S2, _AP_Q2,
                                                _AP_O2, _AP_N2>& op)
      : Base(op) {}
# 237 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
  template <int _AP_W2, bool _AP_S2>
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const ap_int_base<_AP_W2, _AP_S2>& op) : Base(op) {}

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const volatile ap_int_base<_AP_W2, _AP_S2>& op) : Base(op) {}




  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(unsigned V __attribute__((bitwidth(_AP_W))), bool raw) {
    Base::V = V;
    (void)(raw);
  }
# 269 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const ap_bit_ref<_AP_W2, _AP_S2>& op) : Base(op) {}

  template <int _AP_W2, bool _AP_S2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const ap_range_ref<_AP_W2, _AP_S2>& op) : Base(op) {}

  template <int _AP_W2, typename _AP_T2, int _AP_W3, typename _AP_T3>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const ap_concat_ref<_AP_W2, _AP_T2, _AP_W3, _AP_T3>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(
      const af_bit_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}

  template <int _AP_W2, int _AP_I2, bool _AP_S2, ap_q_mode _AP_Q2,
            ap_o_mode _AP_O2, int _AP_N2>
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(
      const af_range_ref<_AP_W2, _AP_I2, _AP_S2, _AP_Q2, _AP_O2, _AP_N2>& op)
      : Base(op) {}




                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(bool v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(char v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(signed char v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(unsigned char v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(short v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(unsigned short v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(int v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(unsigned int v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(long v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(unsigned long v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(ap_slong v) : Base(v) {}
                      inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(ap_ulong v) : Base(v) {}
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(half v) : Base(v) {}
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(float v) : Base(v) {}
  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(double v) : Base(v) {}


  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const char* s) : Base(s) {}

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed(const char* s, signed char rd) : Base(s, rd) {}



  ap_ufixed &
  operator=(const ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &op) = default;
# 327 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(
      const ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N>& op) volatile {
    Base::V = op.V;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) ap_ufixed& operator=(
      const volatile ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N>& op) {
    Base::V = op.V;
    return *this;
  }

  inline __attribute__((always_inline)) __attribute__((nodebug)) void operator=(const volatile ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O,
                                                 _AP_N>& op) volatile {
    Base::V = op.V;
  }
};
# 365 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_special.h" 1
# 20 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_special.h"
namespace std {
template<typename _Tp> class complex;
}







namespace std {
# 48 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_special.h"
template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
class complex<ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > {
 public:
  typedef ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> _Tp;
  typedef _Tp value_type;




  __attribute__((nodebug)) complex() = default;


  __attribute__((nodebug)) complex(const _Tp &__r, const _Tp &__i = _Tp(0))
      : _M_real(__r), _M_imag(__i) {}


  template <typename _Up>
  __attribute__((nodebug)) complex(const complex<_Up> &__z) : _M_real(__z.real()), _M_imag(__z.imag()) {}


  const __attribute__((nodebug)) _Tp& real() const { return _M_real; }
  const __attribute__((nodebug)) _Tp& imag() const { return _M_imag; }







  __attribute__((nodebug)) void real(_Tp __val) { _M_real = __val; }

  __attribute__((nodebug)) void imag(_Tp __val) { _M_imag = __val; }



  __attribute__((nodebug)) complex<_Tp> &operator=(const _Tp __t) {
    _M_real = __t;
    _M_imag = _Tp(0);
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator+=(const _Tp &__t) {
    _M_real += __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator-=(const _Tp &__t) {
    _M_real -= __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator*=(const _Tp &__t) {
    _M_real *= __t;
    _M_imag *= __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator/=(const _Tp &__t) {
    _M_real /= __t;
    _M_imag /= __t;
    return *this;
  }


  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator=(const complex<_Up> &__z) {
    auto tmp1 = __z;
    complex<_Tp> tmp2 = {tmp1.real(), tmp1.imag()};
    *this = tmp2;
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator+=(const complex<_Up> &__z) {
    _M_real += __z.real();
    _M_imag += __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator-=(const complex<_Up> &__z) {
    _M_real -= __z.real();
    _M_imag -= __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator*=(const complex<_Up> &__z) {
    const _Tp __r = _M_real * __z.real() - _M_imag * __z.imag();
    _M_imag = _M_real * __z.imag() + _M_imag * __z.real();
    _M_real = __r;
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator/=(const complex<_Up> &__z) {
    complex<_Tp> cj (__z.real(), -__z.imag());
    complex<_Tp> a = (*this) * cj;
    complex<_Tp> b = cj * __z;
    _M_real = a.real() / b.real();
    _M_imag = a.imag() / b.real();
    return *this;
  }

 private:
  _Tp _M_real;
  _Tp _M_imag;

};
# 190 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_special.h"
template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
class complex<ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > {
 public:
  typedef ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> _Tp;
  typedef _Tp value_type;




  __attribute__((nodebug)) complex() = default;


  __attribute__((nodebug)) complex(const _Tp &__r, const _Tp &__i = _Tp(0))
      : _M_real(__r), _M_imag(__i) {}


  template <typename _Up>
  __attribute__((nodebug)) complex(const complex<_Up> &__z) : _M_real(__z.real()), _M_imag(__z.imag()) {}


  const __attribute__((nodebug)) _Tp& real() const { return _M_real; }
  const __attribute__((nodebug)) _Tp& imag() const { return _M_imag; }







  __attribute__((nodebug)) void real(_Tp __val) { _M_real = __val; }

  __attribute__((nodebug)) void imag(_Tp __val) { _M_imag = __val; }



  __attribute__((nodebug)) complex<_Tp> &operator=(const _Tp __t) {
    _M_real = __t;
    _M_imag = _Tp(0);
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator+=(const _Tp &__t) {
    _M_real += __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator-=(const _Tp &__t) {
    _M_real -= __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator*=(const _Tp &__t) {
    _M_real *= __t;
    _M_imag *= __t;
    return *this;
  }



  __attribute__((nodebug)) complex<_Tp> &operator/=(const _Tp &__t) {
    _M_real /= __t;
    _M_imag /= __t;
    return *this;
  }


  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator=(const complex<_Up> &__z) {
    auto tmp1 = __z;
    complex<_Tp> tmp2 = {tmp1.real(), tmp1.imag()};
    *this = tmp2;
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator+=(const complex<_Up> &__z) {
    _M_real += __z.real();
    _M_imag += __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator-=(const complex<_Up> &__z) {
    _M_real -= __z.real();
    _M_imag -= __z.imag();
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator*=(const complex<_Up> &__z) {
    const _Tp __r = _M_real * __z.real() - _M_imag * __z.imag();
    _M_imag = _M_real * __z.imag() + _M_imag * __z.real();
    _M_real = __r;
    return *this;
  }



  template <typename _Up>
  __attribute__((nodebug)) complex<_Tp> &operator/=(const complex<_Up> &__z) {
    complex<_Tp> cj (__z.real(), -__z.imag());
    complex<_Tp> a = (*this) * cj;
    complex<_Tp> b = cj * __z;
    _M_real = a.real() / b.real();
    _M_imag = a.imag() / b.real();
    return *this;
  }

 private:
  _Tp _M_real;
  _Tp _M_imag;

};
# 323 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/etc/ap_fixed_special.h"
template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator==(
    const complex<ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__x,
    const ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__y) {
  return __x.real() == __y &&
         __x.imag() == 0;
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator==(
    const ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__x,
    const complex<ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__y) {
  return __x == __y.real() &&
         0 == __y.imag();
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator!=(
    const complex<ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__x,
    const ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__y) {
  return __x.real() != __y ||
         __x.imag() != 0;
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator!=(
    const ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__x,
    const complex<ap_fixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__y) {
  return __x != __y.real() ||
         0 != __y.imag();
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator==(
    const complex<ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__x,
    const ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__y) {
  return __x.real() == __y &&
         __x.imag() == 0;
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator==(
    const ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__x,
    const complex<ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__y) {
  return __x == __y.real() &&
         0 == __y.imag();
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator!=(
    const complex<ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__x,
    const ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__y) {
  return __x.real() != __y ||
         __x.imag() != 0;
}


template <int _AP_W, int _AP_I, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
inline __attribute__((nodebug)) bool operator!=(
    const ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> &__x,
    const complex<ap_ufixed<_AP_W, _AP_I, _AP_Q, _AP_O, _AP_N> > &__y) {
  return __x != __y.real() ||
         0 != __y.imag();
}

}
# 366 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_fixed.h" 2
# 361 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/ap_int.h" 2
# 15 "./kyber-mult-kernel.h" 2
typedef ap_uint<12> kcoef_t;




typedef uint32_t kdata_t;

extern "C" {
__attribute__((sdx_kernel("kyber_mult", 0))) void kyber_mult(kdata_t *a, kdata_t *b, kdata_t *c, int batch_size);
}
# 2 "kyber-mult-kernel-dataflow.cpp" 2
# 1 "./kyber-tables.h" 1
# 11 "./kyber-tables.h"
static const uint32_t FWD_J1[7][128] = {
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239},
  {0,1,2,3,4,5,6,7,16,17,18,19,20,21,22,23,32,33,34,35,36,37,38,39,48,49,50,51,52,53,54,55,64,65,66,67,68,69,70,71,80,81,82,83,84,85,86,87,96,97,98,99,100,101,102,103,112,113,114,115,116,117,118,119,128,129,130,131,132,133,134,135,144,145,146,147,148,149,150,151,160,161,162,163,164,165,166,167,176,177,178,179,180,181,182,183,192,193,194,195,196,197,198,199,208,209,210,211,212,213,214,215,224,225,226,227,228,229,230,231,240,241,242,243,244,245,246,247},
  {0,1,2,3,8,9,10,11,16,17,18,19,24,25,26,27,32,33,34,35,40,41,42,43,48,49,50,51,56,57,58,59,64,65,66,67,72,73,74,75,80,81,82,83,88,89,90,91,96,97,98,99,104,105,106,107,112,113,114,115,120,121,122,123,128,129,130,131,136,137,138,139,144,145,146,147,152,153,154,155,160,161,162,163,168,169,170,171,176,177,178,179,184,185,186,187,192,193,194,195,200,201,202,203,208,209,210,211,216,217,218,219,224,225,226,227,232,233,234,235,240,241,242,243,248,249,250,251},
  {0,1,4,5,8,9,12,13,16,17,20,21,24,25,28,29,32,33,36,37,40,41,44,45,48,49,52,53,56,57,60,61,64,65,68,69,72,73,76,77,80,81,84,85,88,89,92,93,96,97,100,101,104,105,108,109,112,113,116,117,120,121,124,125,128,129,132,133,136,137,140,141,144,145,148,149,152,153,156,157,160,161,164,165,168,169,172,173,176,177,180,181,184,185,188,189,192,193,196,197,200,201,204,205,208,209,212,213,216,217,220,221,224,225,228,229,232,233,236,237,240,241,244,245,248,249,252,253}
};
static const uint32_t FWD_J2[7][128] = {
  {128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {8,9,10,11,12,13,14,15,24,25,26,27,28,29,30,31,40,41,42,43,44,45,46,47,56,57,58,59,60,61,62,63,72,73,74,75,76,77,78,79,88,89,90,91,92,93,94,95,104,105,106,107,108,109,110,111,120,121,122,123,124,125,126,127,136,137,138,139,140,141,142,143,152,153,154,155,156,157,158,159,168,169,170,171,172,173,174,175,184,185,186,187,188,189,190,191,200,201,202,203,204,205,206,207,216,217,218,219,220,221,222,223,232,233,234,235,236,237,238,239,248,249,250,251,252,253,254,255},
  {4,5,6,7,12,13,14,15,20,21,22,23,28,29,30,31,36,37,38,39,44,45,46,47,52,53,54,55,60,61,62,63,68,69,70,71,76,77,78,79,84,85,86,87,92,93,94,95,100,101,102,103,108,109,110,111,116,117,118,119,124,125,126,127,132,133,134,135,140,141,142,143,148,149,150,151,156,157,158,159,164,165,166,167,172,173,174,175,180,181,182,183,188,189,190,191,196,197,198,199,204,205,206,207,212,213,214,215,220,221,222,223,228,229,230,231,236,237,238,239,244,245,246,247,252,253,254,255},
  {2,3,6,7,10,11,14,15,18,19,22,23,26,27,30,31,34,35,38,39,42,43,46,47,50,51,54,55,58,59,62,63,66,67,70,71,74,75,78,79,82,83,86,87,90,91,94,95,98,99,102,103,106,107,110,111,114,115,118,119,122,123,126,127,130,131,134,135,138,139,142,143,146,147,150,151,154,155,158,159,162,163,166,167,170,171,174,175,178,179,182,183,186,187,190,191,194,195,198,199,202,203,206,207,210,211,214,215,218,219,222,223,226,227,230,231,234,235,238,239,242,243,246,247,250,251,254,255}
};
static const uint32_t FWD_W[7][128] = {
  {1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729},
  {2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289},
  {2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848},
  {1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,193,193,193,193,193,193,193,193,193,193,193,193,193,193,193,193,797,797,797,797,797,797,797,797,797,797,797,797,797,797,797,797,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,569,569,569,569,569,569,569,569,569,569,569,569,569,569,569,569,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746},
  {296,296,296,296,296,296,296,296,2447,2447,2447,2447,2447,2447,2447,2447,1339,1339,1339,1339,1339,1339,1339,1339,1476,1476,1476,1476,1476,1476,1476,1476,3046,3046,3046,3046,3046,3046,3046,3046,56,56,56,56,56,56,56,56,2240,2240,2240,2240,2240,2240,2240,2240,1333,1333,1333,1333,1333,1333,1333,1333,1426,1426,1426,1426,1426,1426,1426,1426,2094,2094,2094,2094,2094,2094,2094,2094,535,535,535,535,535,535,535,535,2882,2882,2882,2882,2882,2882,2882,2882,2393,2393,2393,2393,2393,2393,2393,2393,2879,2879,2879,2879,2879,2879,2879,2879,1974,1974,1974,1974,1974,1974,1974,1974,821,821,821,821,821,821,821,821},
  {289,289,289,289,331,331,331,331,3253,3253,3253,3253,1756,1756,1756,1756,1197,1197,1197,1197,2304,2304,2304,2304,2277,2277,2277,2277,2055,2055,2055,2055,650,650,650,650,1977,1977,1977,1977,2513,2513,2513,2513,632,632,632,632,2865,2865,2865,2865,33,33,33,33,1320,1320,1320,1320,1915,1915,1915,1915,2319,2319,2319,2319,1435,1435,1435,1435,807,807,807,807,452,452,452,452,1438,1438,1438,1438,2868,2868,2868,2868,1534,1534,1534,1534,2402,2402,2402,2402,2647,2647,2647,2647,2617,2617,2617,2617,1481,1481,1481,1481,648,648,648,648,2474,2474,2474,2474,3110,3110,3110,3110,1227,1227,1227,1227,910,910,910,910},
  {17,17,2761,2761,583,583,2649,2649,1637,1637,723,723,2288,2288,1100,1100,1409,1409,2662,2662,3281,3281,233,233,756,756,2156,2156,3015,3015,3050,3050,1703,1703,1651,1651,2789,2789,1789,1789,1847,1847,952,952,1461,1461,2687,2687,939,939,2308,2308,2437,2437,2388,2388,733,733,2337,2337,268,268,641,641,1584,1584,2298,2298,2037,2037,3220,3220,375,375,2549,2549,2090,2090,1645,1645,1063,1063,319,319,2773,2773,757,757,2099,2099,561,561,2466,2466,2594,2594,2804,2804,1092,1092,403,403,1026,1026,1143,1143,2150,2150,2775,2775,886,886,1722,1722,1212,1212,1874,1874,1029,1029,2110,2110,2935,2935,885,885,2154,2154}
};
static const uint32_t FWD_MW[7][128] = {
  {34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037},
  {50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748},
  {52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694},
  {20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372},
  {5827,5827,5827,5827,5827,5827,5827,5827,48172,48172,48172,48172,48172,48172,48172,48172,26360,26360,26360,26360,26360,26360,26360,26360,29057,29057,29057,29057,29057,29057,29057,29057,59964,59964,59964,59964,59964,59964,59964,59964,1102,1102,1102,1102,1102,1102,1102,1102,44097,44097,44097,44097,44097,44097,44097,44097,26241,26241,26241,26241,26241,26241,26241,26241,28072,28072,28072,28072,28072,28072,28072,28072,41223,41223,41223,41223,41223,41223,41223,41223,10532,10532,10532,10532,10532,10532,10532,10532,56736,56736,56736,56736,56736,56736,56736,56736,47109,47109,47109,47109,47109,47109,47109,47109,56677,56677,56677,56677,56677,56677,56677,56677,38860,38860,38860,38860,38860,38860,38860,38860,16162,16162,16162,16162,16162,16162,16162,16162},
  {5689,5689,5689,5689,6516,6516,6516,6516,64039,64039,64039,64039,34569,34569,34569,34569,23564,23564,23564,23564,45357,45357,45357,45357,44825,44825,44825,44825,40455,40455,40455,40455,12796,12796,12796,12796,38919,38919,38919,38919,49471,49471,49471,49471,12441,12441,12441,12441,56401,56401,56401,56401,649,649,649,649,25986,25986,25986,25986,37699,37699,37699,37699,45652,45652,45652,45652,28249,28249,28249,28249,15886,15886,15886,15886,8898,8898,8898,8898,28309,28309,28309,28309,56460,56460,56460,56460,30198,30198,30198,30198,47286,47286,47286,47286,52109,52109,52109,52109,51519,51519,51519,51519,29155,29155,29155,29155,12756,12756,12756,12756,48704,48704,48704,48704,61224,61224,61224,61224,24155,24155,24155,24155,17914,17914,17914,17914},
  {334,334,54354,54354,11477,11477,52149,52149,32226,32226,14233,14233,45042,45042,21655,21655,27738,27738,52405,52405,64591,64591,4586,4586,14882,14882,42443,42443,59354,59354,60043,60043,33525,33525,32502,32502,54905,54905,35218,35218,36360,36360,18741,18741,28761,28761,52897,52897,18485,18485,45436,45436,47975,47975,47011,47011,14430,14430,46007,46007,5275,5275,12618,12618,31183,31183,45239,45239,40101,40101,63390,63390,7382,7382,50180,50180,41144,41144,32384,32384,20926,20926,6279,6279,54590,54590,14902,14902,41321,41321,11044,11044,48546,48546,51066,51066,55200,55200,21497,21497,7933,7933,20198,20198,22501,22501,42325,42325,54629,54629,17442,17442,33899,33899,23859,23859,36892,36892,20257,20257,41538,41538,57779,57779,17422,17422,42404,42404}
};
static const uint32_t INV_J1[7][128] = {
  {0,1,4,5,8,9,12,13,16,17,20,21,24,25,28,29,32,33,36,37,40,41,44,45,48,49,52,53,56,57,60,61,64,65,68,69,72,73,76,77,80,81,84,85,88,89,92,93,96,97,100,101,104,105,108,109,112,113,116,117,120,121,124,125,128,129,132,133,136,137,140,141,144,145,148,149,152,153,156,157,160,161,164,165,168,169,172,173,176,177,180,181,184,185,188,189,192,193,196,197,200,201,204,205,208,209,212,213,216,217,220,221,224,225,228,229,232,233,236,237,240,241,244,245,248,249,252,253},
  {0,1,2,3,8,9,10,11,16,17,18,19,24,25,26,27,32,33,34,35,40,41,42,43,48,49,50,51,56,57,58,59,64,65,66,67,72,73,74,75,80,81,82,83,88,89,90,91,96,97,98,99,104,105,106,107,112,113,114,115,120,121,122,123,128,129,130,131,136,137,138,139,144,145,146,147,152,153,154,155,160,161,162,163,168,169,170,171,176,177,178,179,184,185,186,187,192,193,194,195,200,201,202,203,208,209,210,211,216,217,218,219,224,225,226,227,232,233,234,235,240,241,242,243,248,249,250,251},
  {0,1,2,3,4,5,6,7,16,17,18,19,20,21,22,23,32,33,34,35,36,37,38,39,48,49,50,51,52,53,54,55,64,65,66,67,68,69,70,71,80,81,82,83,84,85,86,87,96,97,98,99,100,101,102,103,112,113,114,115,116,117,118,119,128,129,130,131,132,133,134,135,144,145,146,147,148,149,150,151,160,161,162,163,164,165,166,167,176,177,178,179,180,181,182,183,192,193,194,195,196,197,198,199,208,209,210,211,212,213,214,215,224,225,226,227,228,229,230,231,240,241,242,243,244,245,246,247},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191},
  {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127}
};
static const uint32_t INV_J2[7][128] = {
  {2,3,6,7,10,11,14,15,18,19,22,23,26,27,30,31,34,35,38,39,42,43,46,47,50,51,54,55,58,59,62,63,66,67,70,71,74,75,78,79,82,83,86,87,90,91,94,95,98,99,102,103,106,107,110,111,114,115,118,119,122,123,126,127,130,131,134,135,138,139,142,143,146,147,150,151,154,155,158,159,162,163,166,167,170,171,174,175,178,179,182,183,186,187,190,191,194,195,198,199,202,203,206,207,210,211,214,215,218,219,222,223,226,227,230,231,234,235,238,239,242,243,246,247,250,251,254,255},
  {4,5,6,7,12,13,14,15,20,21,22,23,28,29,30,31,36,37,38,39,44,45,46,47,52,53,54,55,60,61,62,63,68,69,70,71,76,77,78,79,84,85,86,87,92,93,94,95,100,101,102,103,108,109,110,111,116,117,118,119,124,125,126,127,132,133,134,135,140,141,142,143,148,149,150,151,156,157,158,159,164,165,166,167,172,173,174,175,180,181,182,183,188,189,190,191,196,197,198,199,204,205,206,207,212,213,214,215,220,221,222,223,228,229,230,231,236,237,238,239,244,245,246,247,252,253,254,255},
  {8,9,10,11,12,13,14,15,24,25,26,27,28,29,30,31,40,41,42,43,44,45,46,47,56,57,58,59,60,61,62,63,72,73,74,75,76,77,78,79,88,89,90,91,92,93,94,95,104,105,106,107,108,109,110,111,120,121,122,123,124,125,126,127,136,137,138,139,140,141,142,143,152,153,154,155,156,157,158,159,168,169,170,171,172,173,174,175,184,185,186,187,188,189,190,191,200,201,202,203,204,205,206,207,216,217,218,219,220,221,222,223,232,233,234,235,236,237,238,239,248,249,250,251,252,253,254,255},
  {16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255},
  {128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255}
};
static const uint32_t INV_W[7][128] = {
  {2154,2154,885,885,2935,2935,2110,2110,1029,1029,1874,1874,1212,1212,1722,1722,886,886,2775,2775,2150,2150,1143,1143,1026,1026,403,403,1092,1092,2804,2804,2594,2594,2466,2466,561,561,2099,2099,757,757,2773,2773,319,319,1063,1063,1645,1645,2090,2090,2549,2549,375,375,3220,3220,2037,2037,2298,2298,1584,1584,641,641,268,268,2337,2337,733,733,2388,2388,2437,2437,2308,2308,939,939,2687,2687,1461,1461,952,952,1847,1847,1789,1789,2789,2789,1651,1651,1703,1703,3050,3050,3015,3015,2156,2156,756,756,233,233,3281,3281,2662,2662,1409,1409,1100,1100,2288,2288,723,723,1637,1637,2649,2649,583,583,2761,2761,17,17},
  {910,910,910,910,1227,1227,1227,1227,3110,3110,3110,3110,2474,2474,2474,2474,648,648,648,648,1481,1481,1481,1481,2617,2617,2617,2617,2647,2647,2647,2647,2402,2402,2402,2402,1534,1534,1534,1534,2868,2868,2868,2868,1438,1438,1438,1438,452,452,452,452,807,807,807,807,1435,1435,1435,1435,2319,2319,2319,2319,1915,1915,1915,1915,1320,1320,1320,1320,33,33,33,33,2865,2865,2865,2865,632,632,632,632,2513,2513,2513,2513,1977,1977,1977,1977,650,650,650,650,2055,2055,2055,2055,2277,2277,2277,2277,2304,2304,2304,2304,1197,1197,1197,1197,1756,1756,1756,1756,3253,3253,3253,3253,331,331,331,331,289,289,289,289},
  {821,821,821,821,821,821,821,821,1974,1974,1974,1974,1974,1974,1974,1974,2879,2879,2879,2879,2879,2879,2879,2879,2393,2393,2393,2393,2393,2393,2393,2393,2882,2882,2882,2882,2882,2882,2882,2882,535,535,535,535,535,535,535,535,2094,2094,2094,2094,2094,2094,2094,2094,1426,1426,1426,1426,1426,1426,1426,1426,1333,1333,1333,1333,1333,1333,1333,1333,2240,2240,2240,2240,2240,2240,2240,2240,56,56,56,56,56,56,56,56,3046,3046,3046,3046,3046,3046,3046,3046,1476,1476,1476,1476,1476,1476,1476,1476,1339,1339,1339,1339,1339,1339,1339,1339,2447,2447,2447,2447,2447,2447,2447,2447,296,296,296,296,296,296,296,296},
  {1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,1746,569,569,569,569,569,569,569,569,569,569,569,569,569,569,569,569,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,3260,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,2786,797,797,797,797,797,797,797,797,797,797,797,797,797,797,797,797,193,193,193,193,193,193,193,193,193,193,193,193,193,193,193,193,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1919,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062,1062},
  {848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,848,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,1897,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,630,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642,2642},
  {3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,3289,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580,2580},
  {1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729,1729}
};
static const uint32_t INV_MW[7][128] = {
  {42404,42404,17422,17422,57779,57779,41538,41538,20257,20257,36892,36892,23859,23859,33899,33899,17442,17442,54629,54629,42325,42325,22501,22501,20198,20198,7933,7933,21497,21497,55200,55200,51066,51066,48546,48546,11044,11044,41321,41321,14902,14902,54590,54590,6279,6279,20926,20926,32384,32384,41144,41144,50180,50180,7382,7382,63390,63390,40101,40101,45239,45239,31183,31183,12618,12618,5275,5275,46007,46007,14430,14430,47011,47011,47975,47975,45436,45436,18485,18485,52897,52897,28761,28761,18741,18741,36360,36360,35218,35218,54905,54905,32502,32502,33525,33525,60043,60043,59354,59354,42443,42443,14882,14882,4586,4586,64591,64591,52405,52405,27738,27738,21655,21655,45042,45042,14233,14233,32226,32226,52149,52149,11477,11477,54354,54354,334,334},
  {17914,17914,17914,17914,24155,24155,24155,24155,61224,61224,61224,61224,48704,48704,48704,48704,12756,12756,12756,12756,29155,29155,29155,29155,51519,51519,51519,51519,52109,52109,52109,52109,47286,47286,47286,47286,30198,30198,30198,30198,56460,56460,56460,56460,28309,28309,28309,28309,8898,8898,8898,8898,15886,15886,15886,15886,28249,28249,28249,28249,45652,45652,45652,45652,37699,37699,37699,37699,25986,25986,25986,25986,649,649,649,649,56401,56401,56401,56401,12441,12441,12441,12441,49471,49471,49471,49471,38919,38919,38919,38919,12796,12796,12796,12796,40455,40455,40455,40455,44825,44825,44825,44825,45357,45357,45357,45357,23564,23564,23564,23564,34569,34569,34569,34569,64039,64039,64039,64039,6516,6516,6516,6516,5689,5689,5689,5689},
  {16162,16162,16162,16162,16162,16162,16162,16162,38860,38860,38860,38860,38860,38860,38860,38860,56677,56677,56677,56677,56677,56677,56677,56677,47109,47109,47109,47109,47109,47109,47109,47109,56736,56736,56736,56736,56736,56736,56736,56736,10532,10532,10532,10532,10532,10532,10532,10532,41223,41223,41223,41223,41223,41223,41223,41223,28072,28072,28072,28072,28072,28072,28072,28072,26241,26241,26241,26241,26241,26241,26241,26241,44097,44097,44097,44097,44097,44097,44097,44097,1102,1102,1102,1102,1102,1102,1102,1102,59964,59964,59964,59964,59964,59964,59964,59964,29057,29057,29057,29057,29057,29057,29057,29057,26360,26360,26360,26360,26360,26360,26360,26360,48172,48172,48172,48172,48172,48172,48172,48172,5827,5827,5827,5827,5827,5827,5827,5827},
  {34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,34372,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,11201,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,64177,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,54846,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,15690,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,3799,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,37778,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906,20906},
  {16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,16694,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,37345,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,12402,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011,52011},
  {64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,64748,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790,50790},
  {34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037,34037}
};
static const uint32_t BM_W[128] = {17,3312,2761,568,583,2746,2649,680,1637,1692,723,2606,2288,1041,1100,2229,1409,1920,2662,667,3281,48,233,3096,756,2573,2156,1173,3015,314,3050,279,1703,1626,1651,1678,2789,540,1789,1540,1847,1482,952,2377,1461,1868,2687,642,939,2390,2308,1021,2437,892,2388,941,733,2596,2337,992,268,3061,641,2688,1584,1745,2298,1031,2037,1292,3220,109,375,2954,2549,780,2090,1239,1645,1684,1063,2266,319,3010,2773,556,757,2572,2099,1230,561,2768,2466,863,2594,735,2804,525,1092,2237,403,2926,1026,2303,1143,2186,2150,1179,2775,554,886,2443,1722,1607,1212,2117,1874,1455,1029,2300,2110,1219,2935,394,885,2444,2154,1175};
static const uint32_t BM_MW[128] = {334,65201,54354,11181,11477,54058,52149,13386,32226,33309,14233,51302,45042,20493,21655,43880,27738,37797,52405,13130,64591,944,4586,60949,14882,50653,42443,23092,59354,6181,60043,5492,33525,32010,32502,33033,54905,10630,35218,30317,36360,29175,18741,46794,28761,36774,52897,12638,18485,47050,45436,20099,47975,17560,47011,18524,14430,51105,46007,19528,5275,60260,12618,52917,31183,34352,45239,20296,40101,25434,63390,2145,7382,58153,50180,15355,41144,24391,32384,33151,20926,44609,6279,59256,54590,10945,14902,50633,41321,24214,11044,54491,48546,16989,51066,14469,55200,10335,21497,44038,7933,57602,20198,45337,22501,43034,42325,23210,54629,10906,17442,48093,33899,31636,23859,41676,36892,28643,20257,45278,41538,23997,57779,7756,17422,48113,42404,23131};
# 3 "kyber-mult-kernel-dataflow.cpp" 2
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/hls_stream.h" 1
# 12 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/hls_stream.h"
# 1 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/hls_stream_39.h" 1
# 23 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/hls_stream_39.h"
namespace hls {
# 49 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/hls_stream_39.h"
template<typename __STREAM_T__, int DEPTH=0>
class stream;

template<typename __STREAM_T__>
class stream<__STREAM_T__, 0>
{
  public:
    using value_type = __STREAM_T__;

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream() {
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const char* name) {
      (void)(name);
    }


  private:
    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }

  public:

    inline __attribute__((always_inline)) __attribute__((nodebug)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }


  public:

    inline __attribute__((always_inline)) __attribute__((nodebug)) bool empty() const {
        return !__fpga_fifo_not_empty(&V);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) bool full() const {
        return !__fpga_fifo_not_full(&V);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) void read(__STREAM_T__& dout) {
        __fpga_fifo_pop(&V, &dout);
    }


    inline __attribute__((noinline)) __attribute__((nodebug)) bool read_dep(__STREAM_T__& dout, volatile bool flag) {
        __fpga_fifo_pop(&V, &dout);
        return flag;
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        read(tmp);
        return tmp;
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;

        if (__fpga_fifo_nb_pop(&V, &tmp)) {
            dout = tmp;
            return true;
        } else {
            return false;
        }
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) void write(const __STREAM_T__& din) {
        __fpga_fifo_push(&V, &din);
    }


    inline __attribute__((noinline)) __attribute__((nodebug)) bool write_dep(const __STREAM_T__& din, volatile bool flag) {
        __fpga_fifo_push(&V, &din);
        return flag;
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) bool write_nb(const __STREAM_T__& din) {
        return __fpga_fifo_nb_push(&V, &din);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned size() const {
        return __fpga_fifo_size(&V);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned capacity() const {
        return __fpga_fifo_capacity(&V);
    }


    void set_name(const char* name) { (void)(name); }

  public:
    __STREAM_T__ V __attribute__((no_ctor));
};

template<typename __STREAM_T__, int DEPTH>
class stream : public stream<__STREAM_T__, 0> {
  public:
    inline __attribute__((always_inline)) __attribute__((nodebug)) stream() {
#pragma HLS stream variable=this depth=DEPTH
 }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const char* name) {
#pragma HLS stream variable=this depth=DEPTH
 (void)(name);
    }
};
}
# 13 "/eda/xilinx/Vitis_HLS/2023.2/common/technology/autopilot/hls_stream.h" 2
# 4 "kyber-mult-kernel-dataflow.cpp" 2
# 31 "kyber-mult-kernel-dataflow.cpp"
struct kbeat_t { kcoef_t lane[(2*8)]; };


static inline kdata_t cbarrett(kdata_t x, uint32_t w, uint32_t mw){
#pragma HLS INLINE
 uint64_t xm = (uint64_t)x * mw;
#pragma HLS BIND_OP variable=xm op=mul impl=dsp latency=2
 uint32_t q_est = (uint32_t)(xm >> 16);
    uint32_t xw = x*w;
#pragma HLS BIND_OP variable=xw op=mul impl=dsp latency=2
 uint32_t qq = q_est*3329;
#pragma HLS BIND_OP variable=qq op=mul impl=dsp latency=2
 uint32_t r = xw - qq;
    return (r >= 3329) ? (kdata_t)(r - 3329) : (kdata_t)r;
}
static inline kdata_t addm(kdata_t a, kdata_t b){
#pragma HLS INLINE
 kdata_t s=a+b; return (s>=3329)?(kdata_t)(s-3329):s;
}
static inline kdata_t subm(kdata_t a, kdata_t b){
#pragma HLS INLINE
 return (a>=b)?(kdata_t)(a-b):(kdata_t)(a+3329 -b);
}
static inline kdata_t mulm(kdata_t a, kdata_t b){
#pragma HLS INLINE
 uint32_t x = (uint32_t)a*b;
#pragma HLS BIND_OP variable=x op=mul impl=dsp latency=2
 uint64_t xmu = (uint64_t)x * 5039;
#pragma HLS BIND_OP variable=xmu op=mul impl=dsp latency=2
 uint32_t q_est = (uint32_t)(xmu >> 24);
    uint32_t qq = q_est*3329;
#pragma HLS BIND_OP variable=qq op=mul impl=dsp latency=2
 uint32_t r = x - qq;
    if (r >= 3329) r -= 3329;
    return (kdata_t)r;
}


template<int LEN>
static void fwd_stage2_t(const kcoef_t sA[256], kcoef_t dA[256],
                         const kcoef_t sB[256], kcoef_t dB[256], int s){
#pragma HLS INLINE off
 FWD_BF2: for(int m=0; m<256/2; m+=8){
#pragma HLS PIPELINE II=1
 VITIS_LOOP_75_1: for(int p=0;p<8;++p){
#pragma HLS UNROLL
 int idx=m+p;
            int g = idx / LEN;
            int j = idx % LEN;
            int j1 = g*(2*LEN)+j;
            int j2 = j1+LEN;
            uint32_t w=FWD_W[s][idx], mw=FWD_MW[s][idx];
            kdata_t uA=sA[j1], tA=cbarrett(sA[j2], w, mw);
            dA[j1]=addm(uA,tA); dA[j2]=subm(uA,tA);
            kdata_t uB=sB[j1], tB=cbarrett(sB[j2], w, mw);
            dB[j1]=addm(uB,tB); dB[j2]=subm(uB,tB);
        }
    }
}
static void fwd_ntt2(kcoef_t A[256], kcoef_t B[256]){
#pragma HLS INLINE off
 kcoef_t tA[256], tB[256];
#pragma HLS ARRAY_PARTITION variable=tA cyclic factor=(2*8) dim=1
#pragma HLS ARRAY_PARTITION variable=tB cyclic factor=(2*8) dim=1
 fwd_stage2_t<128>(A,tA,B,tB,0); fwd_stage2_t<64>(tA,A,tB,B,1);
    fwd_stage2_t<32>(A,tA,B,tB,2); fwd_stage2_t<16>(tA,A,tB,B,3);
    fwd_stage2_t<8>(A,tA,B,tB,4); fwd_stage2_t<4>(tA,A,tB,B,5);
    fwd_stage2_t<2>(A,tA,B,tB,6);
    FCP2: for(int i=0;i<256;++i){
#pragma HLS PIPELINE II=1
 A[i]=tA[i]; B[i]=tB[i];
    }
}
template<int LEN>
static void inv_stage_t(const kcoef_t src[256], kcoef_t dst[256], int s){
#pragma HLS INLINE off
 INV_BF: for(int m=0; m<256/2; m+=8){
#pragma HLS PIPELINE II=1
 VITIS_LOOP_109_1: for(int p=0;p<8;++p){
#pragma HLS UNROLL
 int idx=m+p;
            int g = idx / LEN;
            int j = idx % LEN;
            int j1 = g*(2*LEN)+j;
            int j2 = j1+LEN;
            kdata_t t=src[j1];
            kdata_t v=src[j2];
            dst[j1]=addm(t,v);
            dst[j2]=cbarrett(subm(v,t), INV_W[s][idx], INV_MW[s][idx]);
        }
    }
}
static void inv_ntt(kcoef_t buf[256]){
#pragma HLS INLINE off
 kcoef_t tmp[256];
#pragma HLS ARRAY_PARTITION variable=tmp cyclic factor=(2*8) dim=1
 inv_stage_t<2>(buf,tmp,0); inv_stage_t<4>(tmp,buf,1); inv_stage_t<8>(buf,tmp,2);
    inv_stage_t<16>(tmp,buf,3); inv_stage_t<32>(buf,tmp,4); inv_stage_t<64>(tmp,buf,5);
    inv_stage_t<128>(buf,tmp,6);
    SCALE: for(int i=0;i<256;++i){
#pragma HLS PIPELINE II=1
 buf[i]=mulm(tmp[i], 3303);
    }
}

static void basemul(const kcoef_t A[256], const kcoef_t B[256], kcoef_t C[256]){
#pragma HLS INLINE off
 BM: for(int i=0;i<256/2;i+=8){
#pragma HLS PIPELINE II=1
 VITIS_LOOP_140_1: for(int p=0;p<8;++p){
#pragma HLS UNROLL
 int idx=i+p;
            kdata_t a0=A[2*idx],a1=A[2*idx+1],b0=B[2*idx],b1=B[2*idx+1];
            kdata_t a1b1=mulm(a1,b1);
            C[2*idx] = addm(mulm(a0,b0), cbarrett(a1b1, BM_W[idx], BM_MW[idx]));
            C[2*idx+1] = addm(mulm(a0,b1), mulm(a1,b0));
        }
    }
}







static void load_all(const kdata_t* a, const kdata_t* b,
                     hls::stream<kbeat_t>& sA, hls::stream<kbeat_t>& sB,
                     int batch){
#pragma HLS INLINE off
 LD_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
 int base=blk*256;
        LD: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t ba, bb;
            VITIS_LOOP_167_1: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 ba.lane[l]=(kcoef_t)a[base + w*(2*8) + l];
                bb.lane[l]=(kcoef_t)b[base + w*(2*8) + l];
            }
            sA.write(ba); sB.write(bb);
        }
    }
}


static void fwd_all(hls::stream<kbeat_t>& sA_in, hls::stream<kbeat_t>& sB_in,
                    hls::stream<kbeat_t>& sA_out, hls::stream<kbeat_t>& sB_out,
                    int batch){
#pragma HLS INLINE off
 FW_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
 kcoef_t A[256], B[256];
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=(2*8) dim=1
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=(2*8) dim=1
 FW_RD: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t ba=sA_in.read(), bb=sB_in.read();
            VITIS_LOOP_190_1: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 A[w*(2*8)+l]=ba.lane[l];
                B[w*(2*8)+l]=bb.lane[l];
            }
        }
        fwd_ntt2(A,B);
        FW_WR: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t ba, bb;
            VITIS_LOOP_200_2: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 ba.lane[l]=A[w*(2*8)+l];
                bb.lane[l]=B[w*(2*8)+l];
            }
            sA_out.write(ba); sB_out.write(bb);
        }
    }
}


static void basemul_all(hls::stream<kbeat_t>& sA_in, hls::stream<kbeat_t>& sB_in,
                        hls::stream<kbeat_t>& sC_out, int batch){
#pragma HLS INLINE off
 BM_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
 kcoef_t A[256], B[256], C[256];
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=(2*8) dim=1
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=(2*8) dim=1
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=(2*8) dim=1
 BM_RD: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t ba=sA_in.read(), bb=sB_in.read();
            VITIS_LOOP_223_1: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 A[w*(2*8)+l]=ba.lane[l];
                B[w*(2*8)+l]=bb.lane[l];
            }
        }
        basemul(A,B,C);
        BM_WR: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t bc;
            VITIS_LOOP_233_2: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 bc.lane[l]=C[w*(2*8)+l];
            }
            sC_out.write(bc);
        }
    }
}


static void inv_all(hls::stream<kbeat_t>& sC_in, hls::stream<kbeat_t>& sC_out,
                    int batch){
#pragma HLS INLINE off
 IN_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
 kcoef_t C[256];
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=(2*8) dim=1
 IN_RD: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t bc=sC_in.read();
            VITIS_LOOP_253_1: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 C[w*(2*8)+l]=bc.lane[l];
            }
        }
        inv_ntt(C);
        IN_WR: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t bc;
            VITIS_LOOP_262_2: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 bc.lane[l]=C[w*(2*8)+l];
            }
            sC_out.write(bc);
        }
    }
}


static void store_all(hls::stream<kbeat_t>& sC_in, kdata_t* c, int batch){
#pragma HLS INLINE off
 ST_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
 int base=blk*256;
        ST: for(int w=0; w<(256/(2*8)); ++w){
#pragma HLS PIPELINE II=1
 kbeat_t bc=sC_in.read();
            VITIS_LOOP_280_1: for(int l=0;l<(2*8);++l){
#pragma HLS UNROLL
 c[base + w*(2*8) + l] = (kdata_t)bc.lane[l];
            }
        }
    }
}

extern "C" {
__attribute__((sdx_kernel("kyber_mult", 0))) void kyber_mult(kdata_t *a, kdata_t *b, kdata_t *c, int batch_size){
#line 18 "/home/ak13118/ntt_kyber_vitis/ntt_kyber/solution1/csynth.tcl"
#pragma HLSDIRECTIVE TOP name=kyber_mult
# 289 "kyber-mult-kernel-dataflow.cpp"

#line 7 "/home/ak13118/ntt_kyber_vitis/ntt_kyber/solution1/directives.tcl"
#pragma HLSDIRECTIVE TOP name=kyber_mult
# 289 "kyber-mult-kernel-dataflow.cpp"

#pragma HLS INTERFACE m_axi port=a bundle=gmem0 depth=8192
#pragma HLS INTERFACE m_axi port=b bundle=gmem1 depth=8192
#pragma HLS INTERFACE m_axi port=c bundle=gmem2 depth=8192
#pragma HLS INTERFACE s_axilite port=a bundle=control
#pragma HLS INTERFACE s_axilite port=b bundle=control
#pragma HLS INTERFACE s_axilite port=c bundle=control
#pragma HLS INTERFACE s_axilite port=batch_size bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS DATAFLOW


 hls::stream<kbeat_t> sA0, sB0;
    hls::stream<kbeat_t> sA1, sB1;
    hls::stream<kbeat_t> sC0;
    hls::stream<kbeat_t> sC1;
#pragma HLS STREAM variable=sA0 depth=32
#pragma HLS STREAM variable=sB0 depth=32
#pragma HLS STREAM variable=sA1 depth=32
#pragma HLS STREAM variable=sB1 depth=32
#pragma HLS STREAM variable=sC0 depth=32
#pragma HLS STREAM variable=sC1 depth=32

 load_all(a, b, sA0, sB0, batch_size);
    fwd_all(sA0, sB0, sA1, sB1, batch_size);
    basemul_all(sA1, sB1, sC0, batch_size);
    inv_all(sC0, sC1, batch_size);
    store_all(sC1, c, batch_size);
}
}
