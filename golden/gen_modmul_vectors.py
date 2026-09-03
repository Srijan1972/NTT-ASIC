#!/usr/bin/env python3
"""Generate hex test vectors for the Solinas/Montgomery modmul RTL testbench.

Emits three files (two's-complement, fixed width, one value per line):
  modmul_a.hex    -- 32-bit operand a (centered, |a| < q)
  modmul_b.hex    -- 32-bit operand b (centered, |b| < q)
  modmul_out.hex  -- 32-bit expected montgomery_reduce(a*b), in (-q, q)

Vector mix: directed corners first, then deterministic random fill.
The RTL testbench should compare full 32-bit signed equality (not mod-q
equivalence) so it catches any deviation from the reference reduction.
"""

from __future__ import annotations

import argparse
import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import MASK32, Q, montgomery_reduce_ref


def directed_pairs() -> list[tuple[int, int]]:
    edge = [0, 1, -1, 2, -2, Q - 1, -(Q - 1), Q // 2, -(Q // 2),
            (1 << 22), -(1 << 22), 8191, -8191]  # around the 2^23/2^13 terms
    pairs = [(a, b) for a in edge for b in edge]
    return pairs


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--count", type=int, default=4096, help="total vectors")
    ap.add_argument("--seed", type=int, default=0xD117)
    ap.add_argument("--out-dir", default="test_vectors")
    args = ap.parse_args()

    rng = random.Random(args.seed)
    pairs = directed_pairs()
    while len(pairs) < args.count:
        pairs.append((rng.randrange(-Q + 1, Q), rng.randrange(-Q + 1, Q)))
    pairs = pairs[: args.count]

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)

    a_lines, b_lines, r_lines = [], [], []
    for a, b in pairs:
        r = montgomery_reduce_ref(a * b)
        a_lines.append(f"{a & MASK32:08x}")
        b_lines.append(f"{b & MASK32:08x}")
        r_lines.append(f"{r & MASK32:08x}")

    (out / "modmul_a.hex").write_text("\n".join(a_lines) + "\n")
    (out / "modmul_b.hex").write_text("\n".join(b_lines) + "\n")
    (out / "modmul_out.hex").write_text("\n".join(r_lines) + "\n")
    print(f"Wrote {len(pairs)} vectors to {out}/ "
          f"({len(directed_pairs())} directed + random fill, seed={args.seed})")


if __name__ == "__main__":
    main()
