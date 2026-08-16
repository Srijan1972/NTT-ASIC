#!/usr/bin/env python3
"""Generate hex vectors for the CT butterfly RTL testbench.

Each vector: (a, b, zeta) -> (out_a, out_b) where
    t     = montgomery_reduce(zeta * b)
    out_a = a + t          (lazy, unreduced)
    out_b = a - t

a, b are drawn from the worst stage input bound (|x| < 8q) so the
testbench exercises grown coefficients, not just fresh centered ones.
zeta is drawn from the real reference table (ZETAS[1..255]) plus sign
and magnitude corners.

Files (two's-complement 32-bit hex, one per line):
    bfly_a.hex, bfly_b.hex, bfly_zeta.hex, bfly_out_a.hex, bfly_out_b.hex
"""

from __future__ import annotations

import argparse
import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import MASK32, Q, montgomery_reduce_ref
from dilithium_ntt import ZETAS

BOUND = 8 * Q  # worst input bound at the last stage


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--count", type=int, default=4096)
    ap.add_argument("--seed", type=int, default=0xBF17)
    ap.add_argument("--out-dir", default="test_vectors")
    args = ap.parse_args()

    rng = random.Random(args.seed)

    cases: list[tuple[int, int, int]] = []
    # directed: extreme a/b against extreme and typical zetas
    edge_ab = [0, 1, -1, Q - 1, -(Q - 1), BOUND - 1, -(BOUND - 1)]
    edge_z = [ZETAS[1], ZETAS[255], max(ZETAS[1:]), min(ZETAS[1:]), 1, -1]
    for a in edge_ab:
        for b in edge_ab:
            for z in edge_z:
                cases.append((a, b, z))
    # random fill: real zetas, grown-range operands
    while len(cases) < args.count:
        cases.append((rng.randrange(-BOUND + 1, BOUND),
                      rng.randrange(-BOUND + 1, BOUND),
                      ZETAS[rng.randrange(1, 256)]))
    cases = cases[: args.count]

    files = {n: [] for n in ("a", "b", "zeta", "out_a", "out_b")}
    for a, b, z in cases:
        t = montgomery_reduce_ref(z * b)
        oa, ob = a + t, a - t
        assert -(1 << 31) <= oa < (1 << 31) and -(1 << 31) <= ob < (1 << 31)
        files["a"].append(a)
        files["b"].append(b)
        files["zeta"].append(z)
        files["out_a"].append(oa)
        files["out_b"].append(ob)

    out = Path(args.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    for name, vals in files.items():
        (out / f"bfly_{name}.hex").write_text(
            "\n".join(f"{v & MASK32:08x}" for v in vals) + "\n")
    ndirected = len(edge_ab) ** 2 * len(edge_z)
    print(f"Wrote {len(cases)} butterfly vectors to {out}/ "
          f"({ndirected} directed + random, seed={args.seed})")


if __name__ == "__main__":
    main()
