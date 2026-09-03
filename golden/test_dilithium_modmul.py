#!/usr/bin/env python3
"""Verification for dilithium_modmul.py.

Checks, in order of increasing integration:
  A. Constants (q, QINV, MONT) against known Dilithium reference values.
  B. Solinas identity t*Q == (t<<23)-(t<<13)+t exhaustively at the edges
     and randomly across the full signed-32 range.
  C. Three-way bit-exactness: ref vs solinas vs hw lane model
     (random products, edge products, and directed 64-bit lane corners).
  D. Mathematical correctness: result == a*2^-32 mod q, result in (-q, q).
  E. Cross-check against Dilithium reference C montgomery_reduce, compiled
     and run locally, on the same vector set (the true reference anchor).
  F. Known-answer test on the first Dilithium reference zetas: fqmul with
     zeta table values reproduces plain modular multiplication.
"""

from __future__ import annotations

import ctypes
import random
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import (
    MASK64, MONT, Q, QINV, R,
    caddq, fqmul, from_mont,
    montgomery_reduce_hw, montgomery_reduce_ref, montgomery_reduce_solinas,
    to_mont,
)

RNG = random.Random(0xD117)
RINV = pow(R, -1, Q)


def check(name: str, cond: bool) -> None:
    status = "PASS" if cond else "FAIL"
    print(f"{status}: {name}")
    if not cond:
        sys.exit(1)


# --- A. constants -----------------------------------------------------------

check("q = 2^23 - 2^13 + 1", Q == (1 << 23) - (1 << 13) + 1 == 8380417)
check("QINV = 58728449 and q*QINV == 1 mod 2^32", QINV == 58728449 and (Q * QINV) & 0xFFFFFFFF == 1)
check("MONT = 2^32 mod q", MONT == (1 << 32) % Q)

# --- B. Solinas identity ----------------------------------------------------

def solinas(t: int) -> int:
    return (t << 23) - (t << 13) + t

edge_ts = [0, 1, -1, 2**31 - 1, -(2**31), 2**30, -(2**30), Q, -Q]
rand_ts = [RNG.randrange(-(2**31), 2**31) for _ in range(200_000)]
check("Solinas identity t*Q == (t<<23)-(t<<13)+t",
      all(solinas(t) == t * Q for t in edge_ts + rand_ts))

# --- C+D. three-way equivalence and correctness -----------------------------

def one_case(a64: int) -> bool:
    r1 = montgomery_reduce_ref(a64)
    r2 = montgomery_reduce_solinas(a64)
    r3 = montgomery_reduce_hw(a64 & MASK64)
    if not (r1 == r2 == r3):
        print(f"  mismatch a={a64}: ref={r1} sol={r2} hw={r3}")
        return False
    if not (-Q < r1 < Q):
        print(f"  range violation a={a64}: {r1}")
        return False
    if (r1 - a64 * RINV) % Q != 0:
        print(f"  math violation a={a64}: {r1}")
        return False
    return True

LIM = (1 << 31) * Q  # exclusive-ish input bound

directed = [
    0, 1, -1, Q - 1, -(Q - 1), Q, -Q,
    LIM - 1, -(LIM - 1),                     # extreme legal inputs (strict bound)
    (Q - 1) * (Q - 1), -(Q - 1) * (Q - 1),   # max centered product
    1 << 32, -(1 << 32), (1 << 32) - 1, 1 - (1 << 32),
    (1 << 31) - 1, -(1 << 31),               # low-word sign boundary
]
check("directed 64-bit corners (ref==solinas==hw, range, math)",
      all(one_case(a) for a in directed))

rand_products = [RNG.randrange(-Q + 1, Q) * RNG.randrange(-Q + 1, Q)
                 for _ in range(500_000)]
check("500k random centered products", all(one_case(a) for a in rand_products))

rand_full = [RNG.randrange(-LIM + 1, LIM) for _ in range(500_000)]
check("500k random full-range inputs", all(one_case(a) for a in rand_full))

# --- E. compiled Dilithium reference C cross-check --------------------------

C_SRC = r"""
#include <stdint.h>
#define Q 8380417
#define QINV 58728449
int32_t montgomery_reduce(int64_t a) {
  int32_t t;
  t = (int64_t)(int32_t)a * QINV;
  t = (a - (int64_t)t * Q) >> 32;
  return t;
}
"""

def build_ref_lib() -> ctypes.CDLL:
    src = Path("/tmp/dilithium_reduce_ref.c")
    lib = Path("/tmp/dilithium_reduce_ref.so")
    src.write_text(C_SRC)
    subprocess.run(["gcc", "-O2", "-shared", "-fPIC", "-o", str(lib), str(src)],
                   check=True)
    dll = ctypes.CDLL(str(lib))
    dll.montgomery_reduce.restype = ctypes.c_int32
    dll.montgomery_reduce.argtypes = [ctypes.c_int64]
    return dll

ref = build_ref_lib()
c_vectors = directed + rand_products[:100_000] + rand_full[:100_000]
check("compiled Dilithium reference C agrees on all vectors",
      all(ref.montgomery_reduce(a) == montgomery_reduce_ref(a) for a in c_vectors))

# --- F. known-answer: Dilithium reference zetas -----------------------------
# First entries of the reference zetas[] table (pq-crystals/dilithium ntt.c).
# zetas[k] = MONT * psi^brv(k) mod q in centered form, psi = 1753 (root of -1).
# fqmul(x, zetas[k]) must equal x * psi^brv(k) mod q.

REF_ZETAS_HEAD = [0, 25847, -2608894, -518909, 237124, -777960, -876248, 466468]
PSI = 1753

def brv8(x: int) -> int:
    return int(f"{x:08b}"[::-1], 2)

ok = True
for k in range(1, 8):
    expected_plain = pow(PSI, brv8(k), Q)
    z = REF_ZETAS_HEAD[k]
    # zeta table value should be MONT * psi^brv(k) centered
    if (z - MONT * expected_plain) % Q != 0:
        print(f"  zeta[{k}]={z} is not MONT*psi^brv({k})")
        ok = False
    # fqmul against the zeta undoes the MONT factor
    for x in [1, 2, Q - 1, 123456, RNG.randrange(Q)]:
        got = caddq(fqmul(x, z))
        want = (x * expected_plain) % Q
        if got != want:
            print(f"  fqmul({x}, zeta[{k}]) = {got}, want {want}")
            ok = False
check("Dilithium reference zetas known-answer test", ok)

# --- domain round-trip -------------------------------------------------------

vals = [0, 1, Q - 1] + [RNG.randrange(Q) for _ in range(1000)]
check("to_mont/from_mont round trip",
      all(caddq(from_mont(to_mont(v))) % Q == v % Q for v in vals))

print("\nALL CHECKS PASSED")
print(f"q={Q} QINV={QINV} MONT={MONT}")
