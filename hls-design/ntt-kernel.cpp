#include <stdint.h>
#include "ntt-kernel.h"

// -----------------------------------------------------------------------------
// Hardware-Optimized Modular Arithmetic
// -----------------------------------------------------------------------------

inline uint32_t mod_add(uint32_t a, uint32_t b, uint32_t q) {
    #pragma HLS INLINE
    uint32_t res = a + b;
    return (res >= q || res < a) ? (res - q) : res;
}

inline uint32_t mod_sub(uint32_t a, uint32_t b, uint32_t q) {
    #pragma HLS INLINE
    return (a < b) ? (a + q - b) : (a - b);
}

inline uint32_t mod_mul(uint32_t a, uint32_t b, uint32_t q, uint32_t q_inv) {
    // Keep this inline so it merges seamlessly into the butterfly pipeline
    #pragma HLS INLINE

    // 1. First Multiplication (Pipelined DSP)
    uint64_t ab = (uint64_t)a * (uint64_t)b;
    #pragma HLS BIND_OP variable=ab op=mul impl=dsp latency=3

    // 2. Second Multiplication (Pipelined DSP)
    uint32_t ab_low = (uint32_t)ab;
    uint32_t m = ab_low * q_inv;
    #pragma HLS BIND_OP variable=m op=mul impl=dsp latency=3

    // 3. Third Multiplication (Pipelined DSP)
    uint64_t mq = (uint64_t)m * (uint64_t)q;
    #pragma HLS BIND_OP variable=mq op=mul impl=dsp latency=3

    // 4. 64-bit Addition (Pipelined Fabric)
    uint64_t sum = ab + mq;
    #pragma HLS BIND_OP variable=sum op=add impl=fabric latency=1

    // 5. Shift (Free in hardware, just wire routing)
    uint32_t t = (uint32_t)(sum >> 32);

    // 6. Final Subtraction
    return (t >= q) ? (t - q) : t;
}

// -----------------------------------------------------------------------------
// Vitis HLS NTT Kernel with Runtime Parameters
// -----------------------------------------------------------------------------

void ntt_kernel(
    uint32_t *x,                      // Unsized pointer for variable global memory
    const uint32_t *psi_powers,
    const uint32_t *twiddles,
    uint32_t q,
    uint32_t q_inv,
    int batch_size,                 // Dynamic batch size input
    int n                           // Dynamic polynomial size input (must be <= MAX_N)
) {
    // AXI4 Master interfaces for global memory access
    #pragma HLS INTERFACE m_axi port=x bundle=gmem0 depth=65536
    #pragma HLS INTERFACE m_axi port=psi_powers bundle=gmem1 depth=4096
    #pragma HLS INTERFACE m_axi port=twiddles bundle=gmem2 depth=4096

    // AXI4-Lite slave interfaces for dynamic scalar inputs and control
    #pragma HLS INTERFACE s_axilite port=q bundle=control
    #pragma HLS INTERFACE s_axilite port=q_inv bundle=control
    #pragma HLS INTERFACE s_axilite port=batch_size bundle=control
    #pragma HLS INTERFACE s_axilite port=n bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

	uint32_t local_twiddles[MAX_N];
	#pragma HLS BIND_STORAGE variable=local_twiddles type=ram_2p impl=bram
	uint32_t local_psi[MAX_N];
	#pragma HLS BIND_STORAGE variable=local_psi type=ram_2p impl=bram

	// Ping-Pong Buffers to avoid 4-port bottleneck during Butterfly
	uint32_t ping[MAX_N];
	#pragma HLS BIND_STORAGE variable=ping type=ram_2p impl=bram
	uint32_t pong[MAX_N];
	#pragma HLS BIND_STORAGE variable=pong type=ram_2p impl=bram

	// Cache Twiddles (Strictly n - 1 elements)
	CACHE_TWIDDLES_LOOP: for (int i = 0; i < n - 1; i++) {
		#pragma HLS PIPELINE II=1
	    #pragma HLS LOOP_TRIPCOUNT min=255 max=4095
	    local_twiddles[i] = twiddles[i];
	}

	// Cache PSI Powers (Strictly n elements)
	CACHE_PSI_LOOP: for (int i = 0; i < n; i++) {
		#pragma HLS PIPELINE II=1
	    #pragma HLS LOOP_TRIPCOUNT min=256 max=4096
	    local_psi[i] = psi_powers[i];
	}

	BATCH_LOOP: for (int b = 0; b < batch_size; ++b) {
	    #pragma HLS LOOP_TRIPCOUNT min=1 max=16
	    int batch_offset = b * n;

	    // Sequential Burst Read to temporary buffer (Fixes AXI random access)
	    uint32_t burst_buffer[MAX_N];
	    BURST_READ_LOOP: for (int i = 0; i < n; i++) {
	        #pragma HLS PIPELINE II=1
	        #pragma HLS LOOP_TRIPCOUNT min=256 max=4096
	        burst_buffer[i] = x[batch_offset + i];
	    }

	    // Local Permutation (No AXI penalties)
	    PERMUTE_LOOP: for (int i = 0; i < n; i++) {
	    	#pragma HLS PIPELINE II=1
	    	#pragma HLS LOOP_TRIPCOUNT min=256 max=4096
	        ping[i] = burst_buffer[local_psi[i]];
	    }

	    // Core Cooley-Tukey NTT with Flattened Loop and Ping-Pong
	    int offset = 0;
	    bool use_ping_as_input = true;
	    int stage = 0;

	    STAGE_LOOP: for (int length = 1; length < n; length *= 2) {
	        #pragma HLS LOOP_TRIPCOUNT min=1 max=12
	        int half_n = n >> 1;

	        // Flattened inner loops (Iterates exactly n/2 times)
	        FLATTENED_BUTTERFLY_LOOP: for (int step = 0; step < half_n; ++step) {
	            #pragma HLS PIPELINE II=1
	            #pragma HLS LOOP_TRIPCOUNT min=128 max=2048
	            // Calculate original i and j from the flattened 'step'
	            int j = step & (length - 1);
	            int i = (step >> stage) << (stage + 1);
	            int idx1 = i + j;
	            int idx2 = i + length + j;
	            uint32_t twiddle = local_twiddles[offset + j];
	            uint32_t u, v;

	            // Read from the active buffer
	            if (use_ping_as_input) {
	                u = ping[idx1];
	                v = ping[idx2];
	            } else {
	                u = pong[idx1];
	                v = pong[idx2];
	            }

	            uint32_t t = mod_mul(v, twiddle, q, q_inv);
	            uint32_t out_u = mod_add(u, t, q);
	            uint32_t out_v = mod_sub(u, t, q);

	            // Write to the inactive buffer
	            if (use_ping_as_input) {
	                pong[idx1] = out_u;
	                pong[idx2] = out_v;
	            } else {
	                ping[idx1] = out_u;
	                ping[idx2] = out_v;
	            }
	        }
	        offset += length;
	        stage++;
	        use_ping_as_input = !use_ping_as_input; // Swap ping/pong flags
	    }

	    // Sequential Burst Write Back
	    WRITE_BACK_LOOP: for (int i = 0; i < n; ++i) {
            #pragma HLS PIPELINE II=1
	        #pragma HLS LOOP_TRIPCOUNT min=256 max=4096
	        if (use_ping_as_input) {
	            x[batch_offset + i] = ping[i];
            } else {
	            x[batch_offset + i] = pong[i];
	        }
	    }
    }
}
