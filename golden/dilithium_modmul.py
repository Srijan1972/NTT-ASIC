#!/usr/bin/env python3
"""Golden model: Dilithium Montgomery reduction with Solinas shift-add q-multiply.

Fixed prime: q = 8380417 = 2^23 - 2^13 + 1 (Dilithium, FIPS 204).
Convention: signed REDUCE32-style Montgomery reduction, matching the
Dilithium reference C implementation (pq-crystals/dilithium reduce.c):

    int32_t montgomery_reduce(int64_t a) {
      int32_t t;
      t = (int64_t)(int32_t)a * QINV;   // QINV = q^-1 mod 2^32 = 58728449
      t = (a - (int64_t)t * Q) >> 32;   // arithmetic shift
      return t;
    }

Input domain:  a in (-2^31 * q, 2^31 * q)
Output range:  t in (-q, q),  t == a * 2^-32 mod q

Three implementations, all required to be bit-exact to each other:
  1. montgomery_reduce_ref    -- direct transcription of the reference C
  2. montgomery_reduce_solinas -- t*Q replaced by (t<<23) - (t<<13) + t
  3. montgomery_reduce_hw      -- fixed-width two's-complement lane model of
                                  the intended RTL datapath (what iverilog
                                  will compute with signed vectors)

NOTE on QINV sign convention: Dilithium uses QINV = +q^-1 mod 2^32
(58728449) and SUBTRACTS t*Q. Srijan's modmul_montgomery.sv and the old
runtime-q mont_mul.sv use -q^-1 mod 2^32 (4236238847) and ADD m*q. Same
math, opposite sign. This model follows the Dilithium reference so its
vectors cross-check directly against the reference C and known zetas.
"""

from __future__ import annotations

Q = 8380417                       # 2**23 - 2**13 + 1
QINV = 58728449                   # q^-1 mod 2^32 (Dilithium reference value)
R = 1 << 32
MONT = R % Q                      # 2^32 mod q = 4193792  (Montgomery factor)
MONT2 = (MONT * MONT) % Q         # used to enter Montgomery domain via fqmul

MASK32 = 0xFFFFFFFF
MASK64 = 0xFFFFFFFFFFFFFFFF

assert Q == (1 << 23) - (1 << 13) + 1
assert (Q * QINV) & MASK32 == 1, "QINV must satisfy q*QINV == 1 mod 2^32"


def _s32(x: int) -> int:
    """Interpret the low 32 bits of x as a signed 32-bit integer."""
    x &= MASK32
    return x - (1 << 32) if x & (1 << 31) else x


def _s64(x: int) -> int:
    """Interpret the low 64 bits of x as a signed 64-bit integer."""
    x &= MASK64
    return x - (1 << 64) if x & (1 << 63) else x


# ---------------------------------------------------------------------------
# 1. Direct transcription of the Dilithium reference C
# ---------------------------------------------------------------------------

def montgomery_reduce_ref(a: int) -> int:
    """Reference REDUCE32. a is a signed 64-bit value, |a| < 2^31 * q."""
    assert -(1 << 31) * Q < a < (1 << 31) * Q, "input out of Montgomery range"
    t = _s32(_s32(a) * QINV)        # (int32_t)a * QINV, keep low 32 signed
    t = (a - t * Q) >> 32           # Python >> on negative ints is arithmetic
    assert -Q < t < Q
    return t


# ---------------------------------------------------------------------------
# 2. Solinas shift-add form: t*Q = (t<<23) - (t<<13) + t
# ---------------------------------------------------------------------------

def montgomery_reduce_solinas(a: int) -> int:
    """Same reduction, q-multiply done as shifts and adds (no multiplier)."""
    t = _s32(_s32(a) * QINV)
    tq = (t << 23) - (t << 13) + t  # == t * Q exactly, for any integer t
    r = (a - tq) >> 32
    return r


# ---------------------------------------------------------------------------
# 3. Fixed-width hardware lane model
# ---------------------------------------------------------------------------
# Models the intended RTL datapath bit-for-bit in two's complement:
#   - product lane is 64 bits
#   - m is a 32-bit lane (wrapping multiply by QINV)
#   - mq lane is 64 bits: sign-extend m to 64, then (m<<23) - (m<<13) + m
#     with wraparound (it never actually overflows: |m*Q| < 2^55)
#   - diff = a - mq wraps in 64 bits (never overflows: low 32 bits of diff
#     are zero by construction, |diff| < 2^63)
#   - arithmetic shift right by 32, take low 32 bits as the signed result
# ---------------------------------------------------------------------------

def montgomery_reduce_hw(a64: int) -> int:
    """a64: 64-bit two's-complement lane holding the signed product."""
    a64 &= MASK64
    a_lo32 = a64 & MASK32                       # low word of the product
    m = (a_lo32 * QINV) & MASK32                # wrapping 32x32 low multiply
    m_sx = m | (MASK64 ^ MASK32) if m & (1 << 31) else m   # sign-extend to 64
    mq = ((m_sx << 23) - (m_sx << 13) + m_sx) & MASK64     # Solinas, wrap 64
    diff = (a64 - mq) & MASK64
    t = (diff >> 32) & MASK32                   # arithmetic shift: low 32 of
    # (diff >>> 32); since diff's meaningful range fits, bits 63:32 ARE the
    # arithmetic-shift result's low word.
    return _s32(t)


# ---------------------------------------------------------------------------
# fqmul and domain helpers (the ops the butterfly will actually perform)
# ---------------------------------------------------------------------------

def fqmul(a: int, b: int) -> int:
    """Montgomery multiply: returns a*b*2^-32 mod q, in (-q, q).

    Matches Dilithium's usage: if b is a Montgomery-domain constant
    (e.g. a zeta from the reference table), the result is a*b_plain mod q
    up to the centered representation.
    """
    return montgomery_reduce_ref(a * b)


def to_mont(x: int) -> int:
    """Enter Montgomery domain: x -> x * 2^32 mod q (centered rep)."""
    return fqmul(x, MONT2 % Q)


def from_mont(x: int) -> int:
    """Leave Montgomery domain: x -> x * 2^-32 mod q (centered rep)."""
    return montgomery_reduce_ref(x)


def caddq(x: int) -> int:
    """Conditional add q: map (-q, q) -> [0, q). Mirrors Dilithium caddq."""
    return x + Q if x < 0 else x


# ---------------------------------------------------------------------------
# Mod add/sub in the centered signed convention the RTL will use
# ---------------------------------------------------------------------------

def mod_add_centered(a: int, b: int) -> int:
    """a + b with lazy bounds tracking left to the caller (Dilithium style:
    the reference NTT does NOT reduce after add/sub, coefficients grow and
    stay within 32 bits). Provided for the butterfly golden model."""
    return a + b


def mod_sub_centered(a: int, b: int) -> int:
    return a - b


if __name__ == "__main__":
    # smoke test
    import random
    rng = random.Random(1)
    for _ in range(10):
        a = rng.randrange(-Q + 1, Q)
        b = rng.randrange(-Q + 1, Q)
        r1 = montgomery_reduce_ref(a * b)
        r2 = montgomery_reduce_solinas(a * b)
        r3 = montgomery_reduce_hw((a * b) & MASK64)
        assert r1 == r2 == r3
        assert (r1 - a * b * pow(R, -1, Q)) % Q == 0
    print("smoke test OK")


# ---------------------------------------------------------------------------
# reduce32: reference centered reduction (pq-crystals reduce.c). For any
# int32 a with |a| <= 2^31 - 2^22: returns r == a mod q with
# r in [-6283009, 6283008] (subset of (-q, q)). The t*q multiply is the
# same Solinas shift-add as the Montgomery path: (t<<23) - (t<<13) + t.
# ---------------------------------------------------------------------------

def reduce32(a: int) -> int:
    assert -(1 << 31) + (1 << 22) <= a <= (1 << 31) - (1 << 22)
    t = (a + (1 << 22)) >> 23
    return a - ((t << 23) - (t << 13) + t)


F_TOMONT = 41978  # mont^2/256 mod q, centered: the invntt_tomont scale factor
assert (F_TOMONT - (MONT * MONT % Q) * pow(256, -1, Q)) % Q == 0
