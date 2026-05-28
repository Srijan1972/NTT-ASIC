#include <stdint.h>
#include "ntt-kernel.h"

// Define the maximum capacity the hardware can handle (e.g., up to N=2048)
#define MAX_N 65536

typedef uint32_t data_t;

// -----------------------------------------------------------------------------
// Hardware-Optimized Modular Arithmetic
// -----------------------------------------------------------------------------

inline data_t mod_add(data_t a, data_t b, data_t q) {
    #pragma HLS INLINE
    data_t res = a + b;
    return (res >= q) ? (res - q) : res;
}

inline data_t mod_sub(data_t a, data_t b, data_t q) {
    #pragma HLS INLINE
    return (a < b) ? (a + q - b) : (a - b);
}

inline data_t mod_mul(data_t a, data_t b, data_t q, uint32_t q_inv) {
    #pragma HLS INLINE
    uint64_t ab = (uint64_t)a * b;
    uint32_t ab_low = (uint32_t)ab;
    uint32_t m = ab_low * q_inv;
    uint64_t mq = (uint64_t)m * (uint64_t)q;
    uint32_t t = (uint32_t)((ab + mq) >> 32);
    return (t >= q) ? (t - q) : t;
}

// -----------------------------------------------------------------------------
// Vitis HLS NTT Kernel with Runtime Parameters
// -----------------------------------------------------------------------------

void ntt_kernel(
    data_t *x,                      // Unsized pointer for variable global memory
    const data_t *psi_powers,
    const data_t *twiddles,
    data_t q,
    uint32_t q_inv,
    int batch_size,                 // Dynamic batch size input
    int n                           // Dynamic polynomial size input (must be <= MAX_N)
) {
    // 1. AXI4 Master interfaces for global memory access
    #pragma HLS INTERFACE m_axi port=x bundle=gmem0 depth=65536
    #pragma HLS INTERFACE m_axi port=psi_powers bundle=gmem1 depth=65536
    #pragma HLS INTERFACE m_axi port=twiddles bundle=gmem2 depth=65535

    // 2. AXI4-Lite slave interfaces for dynamic scalar inputs and control
    #pragma HLS INTERFACE s_axilite port=q bundle=control
    #pragma HLS INTERFACE s_axilite port=q_inv bundle=control
    #pragma HLS INTERFACE s_axilite port=batch_size bundle=control
    #pragma HLS INTERFACE s_axilite port=n bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    BATCH_LOOP: for (int b = 0; b < batch_size; ++b) {
        // HLS hint for latency reporting (assuming typical runtime batch of 1 to 16)
        #pragma HLS LOOP_TRIPCOUNT min=1 max=16

        int batch_offset = b * n;

        // Physical allocation requires a fixed layout compile-time bound (MAX_N)
        data_t local_x[MAX_N];
        #pragma HLS BIND_STORAGE variable=local_x type=ram_2p impl=bram

        // --- 1. Initial Permutation (Controlled by dynamic 'n') ---
        PERMUTE_LOOP: for (int i = 0; i < n; ++i) {
            #pragma HLS PIPELINE II=1
            #pragma HLS LOOP_TRIPCOUNT min=256 max=65536
            local_x[i] = x[batch_offset + psi_powers[i]];
        }

        // --- 2. Core Cooley-Tukey NTT Loops (Controlled by dynamic 'n') ---
        int offset = 0;

        STAGE_LOOP: for (int length = 1; length < n; length *= 2) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=16 // log2(65536) = 16 stages max

            BLOCK_LOOP: for (int i = 0; i < n; i += 2 * length) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=32768

                BUTTERFLY_LOOP: for (int j = 0; j < length; ++j) {
                    #pragma HLS PIPELINE II=1
                    #pragma HLS LOOP_TRIPCOUNT min=1 max=32768
					#pragma HLS DEPENDENCE variable=local_x array inter false

                    data_t twiddle = twiddles[offset + j];

                    data_t u = local_x[i + j];
                    data_t v = local_x[i + length + j];

                    data_t t = mod_mul(v, twiddle, q, q_inv);
                    local_x[i + j]          = mod_add(u, t, q);
                    local_x[i + length + j] = mod_sub(u, t, q);
                }
            }
            offset += length;
        }

        // --- 3. Write Output Back to Global Memory ---
        WRITE_BACK_LOOP: for (int i = 0; i < n; ++i) {
            #pragma HLS PIPELINE II=1
            #pragma HLS LOOP_TRIPCOUNT min=256 max=65536
            x[batch_offset + i] = local_x[i];
        }
    }
}
