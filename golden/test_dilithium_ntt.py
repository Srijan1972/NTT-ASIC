#!/usr/bin/env python3
"""Verification for dilithium_ntt.py.

  A. Zeta table anchored to the published reference head values (done at
     import time in dilithium_ntt.py; re-asserted here).
  B. Output-order discovery: feed monomials X^1 to identify which
     evaluation point each output index corresponds to, then assert the
     mapping is point[k] = psi^(2*brv8(k)+1) — the documented Dilithium
     NTT output convention.
  C. Full cross-check: reference-transcribed ntt() output (normalized)
     equals independent naive polynomial evaluation at those points, for
     random and directed inputs.
  D. Linearity and growth-bound sanity on many random vectors.
"""

from __future__ import annotations

import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import Q
from dilithium_ntt import N, PSI, ZETAS, brv8, naive_eval, ntt, ntt_normalized

RNG = random.Random(0xA5A5)


def check(name: str, cond: bool) -> None:
    status = "PASS" if cond else "FAIL"
    print(f"{status}: {name}")
    if not cond:
        sys.exit(1)


# --- A. table anchor ---------------------------------------------------------

REF_HEAD = [25847, -2608894, -518909, 237124, -777960, -876248, 466468]
check("zeta table head matches published reference", ZETAS[1:8] == REF_HEAD)
check("all zetas centered in (-q/2, q/2]",
      all(-Q // 2 < z <= Q // 2 for z in ZETAS))

# --- B. output-order discovery via monomial X^1 ------------------------------
# ntt(X^1)[k] = point_k, where point_k is the evaluation point of output k.
# Build a discrete-log table over the 256 odd powers psi^(2m+1) and assert
# point_k == psi^(2*brv8(k)+1).

x1 = [0] * N
x1[1] = 1
out_x1 = ntt_normalized(x1)

odd_power_of = {pow(PSI, 2 * m + 1, Q): m for m in range(N)}
check("every X^1 output is some odd psi power",
      all(v in odd_power_of for v in out_x1))

mapping_ok = all(odd_power_of[out_x1[k]] == brv8(k) for k in range(N))
check("output order: out[k] evaluates at psi^(2*brv8(k)+1)", mapping_ok)

# --- C. naive evaluation cross-check -----------------------------------------

def full_check(a: list[int]) -> bool:
    got = ntt_normalized(a)
    for k in range(N):
        point = pow(PSI, 2 * brv8(k) + 1, Q)
        want = naive_eval(a, point)
        if got[k] != want:
            print(f"  mismatch at k={k}: got {got[k]}, want {want}")
            return False
    return True

directed_inputs = [
    [0] * N,
    [1] + [0] * (N - 1),
    [Q - 1] * N,
    [-(Q - 1)] * N,
    [(-1) ** i * (Q - 1) for i in range(N)],
]
check("directed inputs match naive evaluation",
      all(full_check(a) for a in directed_inputs))

rand_inputs = [[RNG.randrange(-Q + 1, Q) for _ in range(N)] for _ in range(20)]
check("20 random vectors match naive evaluation",
      all(full_check(a) for a in rand_inputs))

# --- D. linearity + growth bound ---------------------------------------------

a = rand_inputs[0]
b = rand_inputs[1]
lhs = ntt_normalized([(ai + bi) % Q if abs(ai + bi) >= Q else ai + bi
                      for ai, bi in zip(a, b)])
# safer: reduce the sum into centered range first
summed = [((ai + bi) % Q) for ai, bi in zip(a, b)]
lhs = ntt_normalized(summed)
rhs = [(x + y) % Q for x, y in zip(ntt_normalized(a), ntt_normalized(b))]
check("linearity: ntt(a+b) == ntt(a)+ntt(b) mod q", lhs == rhs)

worst = 0
for a in rand_inputs:
    worst = max(worst, max(abs(v) for v in ntt(a)))
check(f"lazy growth stays under 9q (observed max {worst/Q:.2f}q)", worst < 9 * Q)

print("\nALL NTT CHECKS PASSED")
