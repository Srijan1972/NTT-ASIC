#include <stdint.h>
typedef uint32_t data_t;

extern "C" {
void ntt_kernel(
    data_t *x,                      // Unsized pointer for variable global memory
    const data_t *psi_powers,
    const data_t *twiddles,
    data_t q,
    uint32_t q_inv,
    int batch_size,                 // Dynamic batch size input
    int n                           // Dynamic polynomial size input (must be <= MAX_N)
);
}
