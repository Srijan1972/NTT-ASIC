#!/usr/bin/env python3
"""Unit tests for the NTT golden-model helper."""

import unittest

import ntt_golden


class TestNttGolden(unittest.TestCase):
    def test_bit_reverse_reverses_low_bits(self):
        self.assertEqual(ntt_golden.bit_reverse(0b001, 3), 0b100)
        self.assertEqual(ntt_golden.bit_reverse(0b101, 3), 0b101)
        self.assertEqual(ntt_golden.bit_reverse(0b011, 3), 0b110)

    def test_compute_q_inv_matches_montgomery_identity(self):
        q = 8380417
        q_inv = ntt_golden.compute_q_inv(q)
        self.assertEqual((q * q_inv) & 0xFFFFFFFF, 0xFFFFFFFF)

    def test_modmul_montgomery_matches_hls_formula(self):
        q = 8380417
        q_inv = ntt_golden.compute_q_inv(q)
        # This is the exact Montgomery-reduction formula used in hls-design/ntt-kernel.cpp.
        # It is not the same as plain (123 * 456) % q because inputs are not converted
        # into/out of Montgomery form here.
        self.assertEqual(ntt_golden.modmul_montgomery(123, 456, q, q_inv), 543743)

    def test_generate_vectors_has_expected_sizes(self):
        vectors = ntt_golden.generate_vectors(n=8, q=8380417, seed=1)
        self.assertEqual(len(vectors["input"]), 8)
        self.assertEqual(len(vectors["bitrev"]), 8)
        self.assertEqual(len(vectors["twiddles"]), 7)
        self.assertEqual(len(vectors["expected"]), 8)


if __name__ == "__main__":
    unittest.main()
