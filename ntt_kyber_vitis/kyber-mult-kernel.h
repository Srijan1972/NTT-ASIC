#ifndef KYBER_MULT_KERNEL_H
#define KYBER_MULT_KERNEL_H
#include <stdint.h>
// Spatial Kyber polynomial multiply: c = a*b mod (x^256+1), q=3329.
// Incomplete NTT (7 stages) + 128 2x2 base-muls + inverse, baked-constant
// Barrett reduction, P butterflies in parallel per cycle.
#define KN 256
#define KP 8          // parallelism: P butterflies/cycle (try 4, 8, 16)

// Coefficients are < q=3329 (12-bit). Store/move them in a narrow type to cut
// FF/LUT/routing; arithmetic intermediates inside the Barrett helpers stay wide.
// Under HLS use ap_uint<12>; native (g++) build uses uint16_t so tests compile.
#ifdef __SYNTHESIS__
#include "ap_int.h"
typedef ap_uint<12> kcoef_t;     // on-chip storage element (12-bit)
#else
#include <cstdint>
typedef uint16_t kcoef_t;
#endif
typedef uint32_t kdata_t;        // arithmetic / DDR interface width

extern "C" {
void kyber_mult(kdata_t *a, kdata_t *b, kdata_t *c, int batch_size);
}
#endif
