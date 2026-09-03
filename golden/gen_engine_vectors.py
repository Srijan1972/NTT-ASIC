#!/usr/bin/env python3
"""Generate full-NTT test vectors for the engine testbench.

Emits NSETS concatenated input/output pairs (256 words each, 32-bit
two's-complement hex, one per line):
    ntt_in.hex   -- centered inputs, |x| < q
    ntt_out.hex  -- raw lazy outputs of the reference ntt() (NOT reduced)

Set 0 is directed (X^1 monomial: exercises every zeta as a pure twiddle
response); set 1 is all (q-1); remaining sets are random.
"""

from __future__ import annotations

import argparse
import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import MASK32, Q
from dilithium_ntt import N, ntt


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--sets", type=int, default=6)
    ap.add_argument("--seed", type=int, default=0xE7E7)
    ap.add_argument("--out-dir", default="test_vectors")
    args = ap.parse_args()

    rng = random.Random(args.seed)
    inputs: list[list[int]] = []
    x1 = [0] * N
    x1[1] = 1
    inputs.append(x1)
    inputs.append([Q - 1] * N)
    while len(inputs) < args.sets:
        inputs.append([rng.randrange(-Q + 1, Q) for _ in range(N)])

    in_lines, out_lines = [], []
    for a in inputs:
        y = ntt(a)
        in_lines += [f"{v & MASK32:08x}" for v in a]
        out_lines += [f"{v & MASK32:08x}" for v in y]

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    (out / "ntt_in.hex").write_text("\n".join(in_lines) + "\n")
    (out / "ntt_out.hex").write_text("\n".join(out_lines) + "\n")
    print(f"Wrote {args.sets} NTT vector sets to {out}/ (seed={args.seed})")


if __name__ == "__main__":
    main()
