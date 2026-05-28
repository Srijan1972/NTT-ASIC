#include <iostream>
#include <vector>
#include <cmath>
#include <cstdlib>
#include <stdint.h>
#include "ntt-kernel.h"

// -----------------------------------------------------------------------------
// Helper Testbench Setup Functions
// -----------------------------------------------------------------------------

// Computes (-1 / q) mod 2^32 using Newton-Raphson inversion method
uint32_t compute_q_inv(uint32_t q) {
    uint32_t inv = 1;
    inv = inv * (2 - q * inv); // 2 bits
    inv = inv * (2 - q * inv); // 4 bits
    inv = inv * (2 - q * inv); // 8 bits
    inv = inv * (2 - q * inv); // 16 bits
    inv = inv * (2 - q * inv); // 32 bits
    return -inv;
}

// Reverses the lower log2n bits of an integer
uint32_t bit_reverse(uint32_t x, int log2n) {
    uint32_t rev = 0;
    for (int i = 0; i < log2n; ++i) {
        if ((x >> i) & 1) {
            rev |= (1 << (log2n - 1 - i));
        }
    }
    return rev;
}

// Naive O(n^2) Software Reference for the Negacyclic NTT
// y[k] = Σ_{n=0}^{N-1} x[n] · ψ^{(2k+1)·n} (mod q)
void naive_negacyclic_ntt(const data_t* x, data_t* y, data_t q, data_t psi, int n) {
    for (int k = 0; k < n; ++k) {
        uint64_t sum = 0;
        for (int i = 0; i < n; ++i) {
            uint64_t power = (2 * (uint64_t)k + 1) * i;

            // Compute psi^power % q via basic modular exponentiation
            uint64_t psi_pow = 1;
            uint64_t base = psi % q;
            uint64_t exp = power;
            while (exp > 0) {
                if (exp % 2 == 1) psi_pow = (psi_pow * base) % q;
                base = (base * base) % q;
                exp /= 2;
            }

            uint64_t term = ((uint64_t)x[i] * psi_pow) % q;
            sum = (sum + term) % q;
        }
        y[k] = sum;
    }
}

// -----------------------------------------------------------------------------
// Main Test Bench Execution
// -----------------------------------------------------------------------------
int main() {
    // Test Configurations (Using standard Kyber Parameters for validation)
    const data_t q = 8380417;           // Prime Modulus
    const data_t psi = 1753;            // Primitive 2N-th root of unity (17^256 ≡ -1 mod 3329)
    const int n = 256;                  // Dynamic polynomial size (must be <= MAX_N)
    const int batch_size = 4;           // Test processing a batch of 4 polynomials

    const int log2n = static_cast<int>(std::log2(n));
    const uint32_t q_inv = compute_q_inv(q);

    std::cout << ">> Initializing Testbench for N = " << n
              << ", Batch Size = " << batch_size << ", q = " << q << " ..." << std::endl;

    // Allocate host memory buffers
    std::vector<data_t> x_input(batch_size * n);
    std::vector<data_t> x_hw_result(batch_size * n);
    std::vector<data_t> x_sw_ref(batch_size * n);

    std::vector<data_t> bit_rev_idx(n);
    std::vector<data_t> twiddles(n - 1);

    // 1. Generate Input Permutation Table (Bit-Reversal Indices)
    for (int i = 0; i < n; ++i) {
        bit_rev_idx[i] = bit_reverse(i, log2n);
    }

    // 2. Precompute Powers of Psi
    std::vector<uint64_t> psi_powers(2 * n, 1);
    for (int i = 1; i < 2 * n; ++i) {
        psi_powers[i] = (psi_powers[i - 1] * psi) % q;
    }

    // 3. Generate Twiddle Factors in Montgomery Form
    uint64_t R = 1ULL << 32;
    uint64_t Rq = R % q;
    int length = 1;
    int offset = 0;
    while (length < n) {
        for (int j = 0; j < length; ++j) {
            int power = (2 * j + 1) * (n / (2 * length));
            // Convert to Montgomery Domain: (twiddle * R) mod q
            twiddles[offset + j] = static_cast<data_t>((psi_powers[power] * Rq) % q);
        }
        offset += length;
        length *= 2;
    }

    // 4. Generate Random Mock Coefficients for the Batch
    std::srand(42); // Seed for deterministic reproducibility
    for (int i = 0; i < batch_size * n; ++i) {
        x_input[i] = std::rand() % q;
        x_hw_result[i] = x_input[i]; // Copy to buffer that the hardware kernel will modify
    }

    // 5. Compute Software Reference Outputs Batch-by-Batch
    for (int b = 0; b < batch_size; ++b) {
        naive_negacyclic_ntt(&x_input[b * n], &x_sw_ref[b * n], q, psi, n);
    }

    // 6. Execute the Vitis HLS Kernel
    std::cout << ">> Launching HLS NTT Kernel Simulation..." << std::endl;
    ntt_kernel(
        x_hw_result.data(),
        bit_rev_idx.data(),
        twiddles.data(),
        q,
        q_inv,
        batch_size,
        n
    );

    // 7. Verification Verification Check
    int errors = 0;
    for (int b = 0; b < batch_size; ++b) {
        for (int i = 0; i < n; ++i) {
            int idx = b * n + i;
            if (x_hw_result[idx] != x_sw_ref[idx]) {
                if (errors < 10) { // Log first 10 discrepancies
                    std::cerr << "Mismatch at Batch [" << b << "], Element [" << i << "]: "
                              << "HW = " << x_hw_result[idx]
                              << ", Expected SW = " << x_sw_ref[idx] << std::endl;
                }
                errors++;
            }
        }
    }

    // 8. Print Final Test Verdict
    std::cout << "--------------------------------------------------" << std::endl;
    if (errors == 0) {
        std::cout << ">> TEST PASSED SUCCESSFULLY! Hardware matches Software Reference." << std::endl;
        return 0; // Returning 0 tells Vitis HLS that C-Simulation passed
    } else {
        std::cerr << ">> TEST FAILED! Total errors detected: " << errors << std::endl;
        return 1; // Returning non-zero flags a functional failure to HLS compiler
    }
}
