#!/usr/bin/env python3
"""Golden-model and vector-generation helpers for the NTT ASIC conversion.

This mirrors the math in hls-design/ntt-kernel.cpp closely enough to generate
RTL test vectors. The first ASIC target is intentionally small and fixed:
N=256, q=8380417, batch_size=1.
"""

from __future__ import annotations

import argparse
import math
import random
from pathlib import Path

MASK32 = 0xFFFFFFFF
DEFAULT_Q = 8380417
DEFAULT_N = 256


def u32(x: int) -> int:
    return x & MASK32


def compute_q_inv(q: int) -> int:
    """Return -q^-1 mod 2^32, matching the HLS/PYNQ implementation."""
    inv = 1
    for _ in range(5):
        inv = u32(inv * u32(2 - u32(q) * inv))
    return u32(-inv)


def bit_reverse(x: int, log2n: int) -> int:
    """Reverse the low log2n bits of x."""
    rev = 0
    for i in range(log2n):
        if (x >> i) & 1:
            rev |= 1 << (log2n - 1 - i)
    return rev


def find_primitive_root(q: int) -> int:
    """Find a small primitive root modulo prime q."""
    n = q - 1
    factors: set[int] = set()
    temp = n
    d = 2
    while d * d <= temp:
        while temp % d == 0:
            factors.add(d)
            temp //= d
        d += 1
    if temp > 1:
        factors.add(temp)

    for g in range(2, 1000):
        if all(pow(g, n // p, q) != 1 for p in factors):
            return g
    raise ValueError(f"No primitive root found for q={q}")


def compute_psi(q: int, n: int) -> int:
    """Compute a primitive 2n-th root of unity modulo q."""
    if (q - 1) % (2 * n) != 0:
        raise ValueError(f"2n={2*n} does not divide q-1={q-1}")
    g = find_primitive_root(q)
    psi = pow(g, (q - 1) // (2 * n), q)
    if pow(psi, n, q) != q - 1:
        raise ValueError(f"g={g} did not yield a valid primitive 2n-th root")
    return psi


def mod_add(a: int, b: int, q: int) -> int:
    res = u32(a + b)
    return u32(res - q) if res >= q or res < a else res


def mod_sub(a: int, b: int, q: int) -> int:
    return a + q - b if a < b else a - b


def modmul_montgomery(a: int, b: int, q: int, q_inv: int) -> int:
    """Match hls-design/ntt-kernel.cpp mod_mul exactly."""
    ab = a * b
    ab_low = u32(ab)
    m = u32(ab_low * q_inv)
    mq = m * q
    total = ab + mq
    t = u32(total >> 32)
    return t - q if t >= q else t


def make_bitrev_table(n: int) -> list[int]:
    log2n = int(math.log2(n))
    if 1 << log2n != n:
        raise ValueError("n must be a power of two")
    return [bit_reverse(i, log2n) for i in range(n)]


def make_twiddles(n: int, q: int, psi: int) -> list[int]:
    psi_powers = [1] * (2 * n)
    for i in range(1, 2 * n):
        psi_powers[i] = (psi_powers[i - 1] * psi) % q

    r_mod_q = (1 << 32) % q
    twiddles = [0] * (n - 1)
    length = 1
    offset = 0
    while length < n:
        for j in range(length):
            power = (2 * j + 1) * (n // (2 * length))
            twiddles[offset + j] = (psi_powers[power] * r_mod_q) % q
        offset += length
        length *= 2
    return twiddles


def hls_style_ntt(x: list[int], q: int, q_inv: int, bitrev: list[int], twiddles: list[int]) -> list[int]:
    """Run the same iterative algorithm shape as the HLS kernel for one batch."""
    n = len(x)
    ping = [x[bitrev[i]] for i in range(n)]
    pong = [0] * n

    offset = 0
    use_ping_as_input = True
    stage = 0
    length = 1
    while length < n:
        half_n = n >> 1
        for step in range(half_n):
            j = step & (length - 1)
            i = (step >> stage) << (stage + 1)
            idx1 = i + j
            idx2 = i + length + j
            twiddle = twiddles[offset + j]

            if use_ping_as_input:
                u = ping[idx1]
                v = ping[idx2]
            else:
                u = pong[idx1]
                v = pong[idx2]

            t = modmul_montgomery(v, twiddle, q, q_inv)
            out_u = mod_add(u, t, q)
            out_v = mod_sub(u, t, q)

            if use_ping_as_input:
                pong[idx1] = out_u
                pong[idx2] = out_v
            else:
                ping[idx1] = out_u
                ping[idx2] = out_v

        offset += length
        stage += 1
        length *= 2
        use_ping_as_input = not use_ping_as_input

    return ping if use_ping_as_input else pong


def naive_negacyclic_ntt(x: list[int], q: int, psi: int) -> list[int]:
    n = len(x)
    y = []
    for k in range(n):
        total = 0
        for i, coeff in enumerate(x):
            power = (2 * k + 1) * i
            total = (total + coeff * pow(psi, power, q)) % q
        y.append(total)
    return y


def generate_vectors(n: int = DEFAULT_N, q: int = DEFAULT_Q, seed: int = 42, psi: int | None = None) -> dict[str, list[int] | int]:
    if psi is None:
        psi = compute_psi(q, n)
    q_inv = compute_q_inv(q)
    rng = random.Random(seed)
    x = [rng.randrange(q) for _ in range(n)]
    bitrev = make_bitrev_table(n)
    twiddles = make_twiddles(n, q, psi)
    expected = hls_style_ntt(x, q, q_inv, bitrev, twiddles)
    return {
        "n": n,
        "q": q,
        "psi": psi,
        "q_inv": q_inv,
        "input": x,
        "bitrev": bitrev,
        "twiddles": twiddles,
        "expected": expected,
    }


def write_hex(path: Path, values: list[int]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("".join(f"{v:08x}\n" for v in values), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser(description="Generate NTT ASIC test vectors")
    parser.add_argument("--n", type=int, default=DEFAULT_N)
    parser.add_argument("--q", type=int, default=DEFAULT_Q)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--psi", type=int, default=None)
    parser.add_argument("--out-dir", default="sim/test_vectors")
    args = parser.parse_args()

    vectors = generate_vectors(n=args.n, q=args.q, seed=args.seed, psi=args.psi)
    out_dir = Path(args.out_dir)
    write_hex(out_dir / f"input_{args.n}.hex", vectors["input"])  # type: ignore[arg-type]
    write_hex(out_dir / f"bitrev_{args.n}.hex", vectors["bitrev"])  # type: ignore[arg-type]
    write_hex(out_dir / f"twiddles_{args.n}.hex", vectors["twiddles"])  # type: ignore[arg-type]
    write_hex(out_dir / f"expected_{args.n}.hex", vectors["expected"])  # type: ignore[arg-type]
    (out_dir / f"params_{args.n}.txt").write_text(
        f"n={vectors['n']}\nq={vectors['q']}\npsi={vectors['psi']}\nq_inv={vectors['q_inv']}\n",
        encoding="utf-8",
    )
    print(f"Wrote vectors to {out_dir}")
    print(f"n={vectors['n']} q={vectors['q']} psi={vectors['psi']} q_inv={vectors['q_inv']}")


if __name__ == "__main__":
    main()
