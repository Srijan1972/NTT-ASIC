#!/usr/bin/env python3
"""Vectors for the engine pointwise/MAC flow testbench.

Models exactly what the TB drives the engine through, using only golden
functions, so the comparison is bit-exact at every checkpoint:

  Test 1 (L=2 accumulation, the polyvecl_pointwise_acc pattern):
    for i in 0, 1:
        load a_i time-domain -> NTT (slot 0) -> COPY slot0 -> slot1
        load b_i time-domain -> NTT (slot 0) -> COPY slot0 -> slot2
        MAC slot1 o slot2 -> slot3  (init on i == 0)
    checkpoint: acc = pw(ntt(a0), ntt(b0)) + pw(ntt(a1), ntt(b1)) terms

  Test 2 (squaring bypass): a2 -> NTT -> COPY -> slot1; MAC slot1 o slot1
    -> slot3 (init). checkpoint: pw(y, y) with y = ntt(a2).

Files (32-bit two's-complement hex):
  pw_polys.hex : 5 x 256 time-domain inputs (a0, b0, a1, b1, a2)
  pw_acc.hex   : 256 expected slot-3 values after test 1
  pw_sq.hex    : 256 expected slot-3 values after test 2
"""

from __future__ import annotations

import argparse
import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import MASK32, Q
from dilithium_ntt import N, ntt
from dilithium_pointwise import pointwise, pointwise_acc


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--seed", type=int, default=0x9AC5)
    ap.add_argument("--out-dir", default="test_vectors")
    args = ap.parse_args()

    rng = random.Random(args.seed)
    polys = [[rng.randrange(-Q + 1, Q) for _ in range(N)] for _ in range(5)]
    a0, b0, a1, b1, a2 = polys

    acc = pointwise(ntt(a0), ntt(b0))
    acc = pointwise_acc(acc, ntt(a1), ntt(b1))

    sq_y = ntt(a2)
    sq = pointwise(sq_y, sq_y)

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    (out / "pw_polys.hex").write_text(
        "\n".join(f"{v & MASK32:08x}" for p in polys for v in p) + "\n")
    (out / "pw_acc.hex").write_text(
        "\n".join(f"{v & MASK32:08x}" for v in acc) + "\n")
    (out / "pw_sq.hex").write_text(
        "\n".join(f"{v & MASK32:08x}" for v in sq) + "\n")
    print(f"Wrote pointwise flow vectors to {out}/ (seed={args.seed})")


if __name__ == "__main__":
    main()
