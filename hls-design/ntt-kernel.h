#include <stdint.h>
#include <hls_vector.h>
#define MAX_N 4096

extern "C" {
void ntt_kernel(
    uint32_t *x,                      // Unsized pointer for variable global memory
    const uint32_t *psi_powers,
    const uint32_t *twiddles,
	uint32_t q,
    uint32_t q_inv,
    int batch_size,                 // Dynamic batch size input
    int n                           // Dynamic polynomial size input (must be <= MAX_N)
);
}
