#!/usr/bin/env python3
"""Vectors for the inverse-NTT and full polynomial-multiply testbench.

Test A (INTT only, 3 sets): centered inputs |x| < q -> reference
    invntt_tomont, exact lazy... (outputs are already < q here).
Test B (full ring multiply, the crown jewel):
    c = a0*b0 + a1*b1 in Z_q[X]/(X^256+1), via the exact engine sequence:
      per term i: load a_i -> NTT -> COPY 0->1; load b_i -> NTT -> COPY 0->2;
                  MAC 1o2 -> 3 (init on i=0)
      REDUCE 3 -> 0
      INTT (slot 0)
    Expected values are the golden composition run in the same order, so
    the comparison is exact 32-bit, and the generator independently asserts
    the result equals the schoolbook negacyclic sum mod q.

Files:
  intt_in.hex / intt_out.hex : 3 x 256 pairs
  pm_polys.hex               : 4 x 256 (a0, b0, a1, b1)
  pm_out.hex                 : 256 expected slot-0 values after INTT
"""

from __future__ import annotations

import argparse
import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import MASK32, Q, reduce32
from dilithium_ntt import N, ntt
from dilithium_intt import invntt_tomont
from dilithium_pointwise import pointwise, pointwise_acc


def schoolbook_negacyclic(a, b):
    c = [0] * N
    for i in range(N):
        for j in range(N):
            idx = i + j
            if idx < N:
                c[idx] = (c[idx] + a[i] * b[j]) % Q
            else:
                c[idx - N] = (c[idx - N] - a[i] * b[j]) % Q
    return c


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--seed", type=int, default=0x1477)
    ap.add_argument("--out-dir", default="test_vectors")
    args = ap.parse_args()

    rng = random.Random(args.seed)
    cent = lambda: [rng.randrange(-Q + 1, Q) for _ in range(N)]

    # --- test A ---
    intt_sets = [cent() for _ in range(3)]
    intt_in, intt_out = [], []
    for x in intt_sets:
        y = invntt_tomont(x)
        intt_in += x
        intt_out += y

    # --- test B ---
    a0, b0, a1, b1 = cent(), cent(), cent(), cent()
    acc = pointwise(ntt(a0), ntt(b0))
    acc = pointwise_acc(acc, ntt(a1), ntt(b1))
    red = [reduce32(x) for x in acc]
    pm_out = invntt_tomont(red)

    # independent math anchor: engine result == schoolbook sum mod q
    want = [(x + y) % Q for x, y in zip(schoolbook_negacyclic(a0, b0),
                                        schoolbook_negacyclic(a1, b1))]
    assert all((pm_out[j] - want[j]) % Q == 0 for j in range(N)), \
        "golden composition does not match schoolbook!"

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    hx = lambda vals: "\n".join(f"{v & MASK32:08x}" for v in vals) + "\n"
    (out / "intt_in.hex").write_text(hx(intt_in))
    (out / "intt_out.hex").write_text(hx(intt_out))
    (out / "pm_polys.hex").write_text(hx(a0 + b0 + a1 + b1))
    (out / "pm_out.hex").write_text(hx(pm_out))
    print(f"Wrote INTT + polymul vectors to {out}/ (seed={args.seed}); "
          "schoolbook anchor verified")


if __name__ == "__main__":
    main()
