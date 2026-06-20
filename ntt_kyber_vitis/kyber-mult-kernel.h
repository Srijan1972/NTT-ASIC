#ifndef KYBER_MULT_KERNEL_H
#define KYBER_MULT_KERNEL_H
#include <stdint.h>
#define KN 256
#define KP 8          

#ifdef __SYNTHESIS__
#include "ap_int.h"
typedef ap_uint<12> kcoef_t;    
#else
#include <cstdint>
typedef uint16_t kcoef_t;
#endif
typedef uint32_t kdata_t;        

extern "C" {
void kyber_mult(kdata_t *a, kdata_t *b, kdata_t *c, int batch_size);
}
#endif
