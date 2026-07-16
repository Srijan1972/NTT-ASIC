#!/usr/bin/env python3
"""Golden model: Dilithium N=256 forward NTT, exact transcription of the
reference C (pq-crystals/dilithium ntt.c), built on dilithium_modmul.

Reference algorithm (Cooley-Tukey, decimation-in-time, in-place):

    k = 0;
    for (len = 128; len > 0; len >>= 1)
      for (start = 0; start < N; start = j + len) {
        zeta = zetas[++k];
        for (j = start; j < start + len; ++j) {
          t          = montgomery_reduce((int64)zeta * a[j+len]);
          a[j+len]   = a[j] - t;
          a[j]       = a[j] + t;
        }
      }

Key properties this model preserves (and the RTL must too):
  - LAZY reduction: adds/subs are plain signed adds, no mod after them.
    Input |a[i]| < q grows by < q per stage; after 8 stages |a[i]| < 9q,
    comfortably inside int32. Products zeta*a[j+len] stay inside the
    montgomery_reduce input domain (|zeta| < q/2 wait, |zeta| <= q/2 and
    |a| < 9q < 2^31/q ... see assert below).
  - zetas are the reference table values: MONT * psi^brv8(k) mod q,
    centrally reduced to (-q/2, q/2], psi = 1753.
  - Output order is the reference's bit-reversed-index evaluation order.

Everything is checked in test_dilithium_ntt.py, including an independent
naive negacyclic evaluation cross-check.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import MONT, Q, montgomery_reduce_ref

N = 256
PSI = 1753  # primitive 512th root of unity mod q (root of -1)

assert pow(PSI, 256, Q) == Q - 1, "psi must be a root of -1 mod q"


def brv8(x: int) -> int:
    """Reverse the low 8 bits of x."""
    r = 0
    for i in range(8):
        if (x >> i) & 1:
            r |= 1 << (7 - i)
    return r


def _center(x: int) -> int:
    """Centrally reduce mod q into (-q/2, q/2] (reference table convention)."""
    x %= Q
    return x - Q if x > Q // 2 else x


def make_zetas() -> list[int]:
    """zetas[k] = center(MONT * psi^brv8(k)), k = 0..255. zetas[0] unused
    by the forward NTT (loop pre-increments k)."""
    return [_center(MONT * pow(PSI, brv8(k), Q)) for k in range(N)]


ZETAS = make_zetas()

# Anchor against the published reference table head (pq-crystals/dilithium).
_REF_HEAD = [0, 25847, -2608894, -518909, 237124, -777960, -876248, 466468]
assert ZETAS[1:8] == _REF_HEAD[1:8], f"zeta table mismatch: {ZETAS[:8]}"
assert ZETAS[0] == _center(MONT)  # k=0 entry is MONT itself, unused in fwd


def ntt(a: list[int]) -> list[int]:
    """Forward NTT, in the reference's lazy signed arithmetic. Input:
    256 centered coefficients with |a[i]| < q. Output: 256 signed values
    with |out[i]| < 9q (NOT reduced), matching the reference C exactly."""
    assert len(a) == N
    assert all(-Q < x < Q for x in a), "inputs must be centered, |x| < q"
    a = list(a)
    k = 0
    length = 128
    while length > 0:
        start = 0
        while start < N:
            k += 1
            zeta = ZETAS[k]
            for j in range(start, start + length):
                t = montgomery_reduce_ref(zeta * a[j + length])
                a[j + length] = a[j] - t
                a[j] = a[j] + t
            start = start + 2 * length
        length >>= 1
    assert all(abs(x) < 9 * Q for x in a), "lazy growth bound exceeded"
    return a


def ntt_normalized(a: list[int]) -> list[int]:
    """Forward NTT with outputs mapped to [0, q). For math-level checks;
    the RTL golden comparison should use ntt() raw values."""
    return [x % Q for x in ntt(a)]


def naive_eval(a: list[int], point: int) -> int:
    """Evaluate the polynomial a at 'point' mod q (plain math reference)."""
    acc = 0
    for i in reversed(range(N)):
        acc = (acc * point + a[i]) % Q
    return acc


if __name__ == "__main__":
    import random
    rng = random.Random(7)
    x = [rng.randrange(-Q + 1, Q) for _ in range(N)]
    y = ntt(x)
    print(f"smoke: max |out| = {max(abs(v) for v in y)} ({max(abs(v) for v in y)/Q:.2f} q)")
