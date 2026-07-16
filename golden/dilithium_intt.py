#!/usr/bin/env python3
"""Golden model: Dilithium inverse NTT (invntt_tomont), exact transcription
of the reference C, plus the dual radix-2 inverse schedule proof.

Reference algorithm (Gentleman-Sande, in-place, k counts DOWN from 256):

    k = 256;
    for (len = 1; len < N; len <<= 1)
      for (start = 0; start < N; start = j + len) {
        zeta = -zetas[--k];
        for (j = start; j < start + len; ++j) {
          t          = a[j];
          a[j]       = t + a[j+len];
          a[j+len]   = montgomery_reduce((int64)zeta * (t - a[j+len]));
        }
      }
    for (j = 0; j < N; ++j)
      a[j] = montgomery_reduce((int64)f * a[j]);     // f = mont^2/256

Contracts:
  - INPUT must satisfy |a[i]| < q. The pure-accumulator coefficient doubles
    per stage: worst case 256*(q-1) = 2145386496 < 2^31-1, so int32 holds
    with |in| < q but NOT with lazy MAC outputs (|x| < L*q) — normalize
    with reduce32 first.
  - OUTPUT: |a[i]| < q (the final mr pass bounds everything).
  - Composition (the whole point): invntt_tomont(pointwise(ntt(a), ntt(b)))
    equals the plain negacyclic product a*b mod (X^256+1, q). The pointwise
    R^-1 is cancelled by the mont in f.

Schedule (mirrors the forward engine): dual radix-2, same (j, j+len) pair
structure so the SAME XOR banking applies; stages run len = 1..128; zeta
index k = (255 >> s) - (j0 >> (s+1)) with s = log2(len), second butterfly
shares k for len >= 2 and uses k-1 at len == 1 (k DESCENDS).
"""

from __future__ import annotations

import sys
from dataclasses import dataclass
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import F_TOMONT, Q, montgomery_reduce_ref
from dilithium_ntt import N, ZETAS
from dilithium_engine_sched import bank_of


def invntt_tomont(a_in: list[int]) -> list[int]:
    """Reference-exact inverse NTT with tomont scaling. |input| < q."""
    assert len(a_in) == N
    assert all(-Q < x < Q for x in a_in), "invntt input must satisfy |x| < q"
    a = list(a_in)
    k = 256
    length = 1
    peak = 0
    while length < N:
        start = 0
        while start < N:
            k -= 1
            zeta = -ZETAS[k]
            for j in range(start, start + length):
                t = a[j]
                a[j] = t + a[j + length]
                a[j + length] = montgomery_reduce_ref(zeta * (t - a[j + length]))
            start += 2 * length
        peak = max(peak, max(abs(x) for x in a))
        length <<= 1
    assert peak < (1 << 31), "int32 overflow in GS accumulation"
    for j in range(N):
        a[j] = montgomery_reduce_ref(F_TOMONT * a[j])
    assert all(-Q < x < Q for x in a)
    return a


# ---------------------------------------------------------------------------
# dual-issue inverse schedule (mirrors dilithium_engine_sched.Issue)
# ---------------------------------------------------------------------------

@dataclass(frozen=True)
class InvIssue:
    len_: int
    j0: int
    k0: int
    j1: int
    k1: int

    @property
    def addrs(self) -> tuple[int, int, int, int]:
        return (self.j0, self.j0 + self.len_, self.j1, self.j1 + self.len_)


def make_inv_schedule() -> list[InvIssue]:
    sched: list[InvIssue] = []
    k = 256
    length = 1
    while length < N:
        start = 0
        while start < N:
            if length >= 2:
                k -= 1
                s = length.bit_length() - 1
                if s & 1:
                    for j in range(start, start + length, 2):
                        sched.append(InvIssue(length, j, k, j + 1, k))
                else:
                    # even stage under XOR-fold map: pair (j, j+2)
                    for base in range(start, start + length, 4):
                        sched.append(InvIssue(length, base, k, base + 2, k))
                        sched.append(InvIssue(length, base + 1, k, base + 3, k))
                start += 2 * length
            else:
                k -= 1
                k0 = k
                k -= 1
                k1 = k
                sched.append(InvIssue(1, start, k0, start + 2, k1))
                start += 4
        length <<= 1
    return sched


def check_inv_k_formula(sched: list[InvIssue]) -> None:
    """RTL closed form: k = (255 >> s) - (j0 >> (s+1)), s = log2(len);
    k1 = k0 for len >= 2, k0 - 1 at len == 1."""
    for iss in sched:
        s = iss.len_.bit_length() - 1
        k0 = (255 >> s) - (iss.j0 >> (s + 1))
        k1 = k0 if iss.len_ >= 2 else (255 >> s) - (iss.j1 >> (s + 1))
        assert (k0, k1) == (iss.k0, iss.k1), \
            f"inv k mismatch len={iss.len_} j0={iss.j0}: ({k0},{k1}) vs ({iss.k0},{iss.k1})"


def simulate_inv(a_in: list[int], sched: list[InvIssue]) -> list[int]:
    a = list(a_in)
    for iss in sched:
        for j, kk in ((iss.j0, iss.k0), (iss.j1, iss.k1)):
            t = a[j]
            a[j] = t + a[j + iss.len_]
            a[j + iss.len_] = montgomery_reduce_ref(-ZETAS[kk] * (t - a[j + iss.len_]))
    for j in range(N):
        a[j] = montgomery_reduce_ref(F_TOMONT * a[j])
    return a


def prove_inv_banking_and_inflight(sched: list[InvIssue], pipe_lat: int) -> None:
    for iss in sched:
        assert len({bank_of(x) for x in iss.addrs}) == 4, f"bank conflict {iss}"
    by_stage: dict[int, list[InvIssue]] = {}
    for iss in sched:
        by_stage.setdefault(iss.len_, []).append(iss)
    for stage in by_stage.values():
        for c, iss in enumerate(stage):
            pending = set()
            for prev in stage[max(0, c - pipe_lat):c]:
                pending.update(prev.addrs)
            assert not (set(iss.addrs) & pending), \
                f"in-flight RAW len={iss.len_} cycle {c}"


if __name__ == "__main__":
    import random
    from dilithium_ntt import ntt
    from dilithium_pointwise import pointwise

    rng = random.Random(0x1477)

    sched = make_inv_schedule()
    assert len(sched) == 8 * 64
    prove_inv_banking_and_inflight(sched, 9)
    print("PASS: inverse schedule banking + in-place safety (512 dual-issues)")
    check_inv_k_formula(sched)
    print("PASS: inverse zeta-index closed form matches reference order")

    for trial in range(30):
        x = [rng.randrange(-Q + 1, Q) for _ in range(N)]
        assert simulate_inv(x, sched) == invntt_tomont(x), f"trial {trial}"
    print("PASS: inverse schedule bit-exact to reference invntt_tomont (30 vectors)")

    # round trip: invntt_tomont(ntt(a)) == a * mont mod q
    MONT = (1 << 32) % Q
    ok = True
    for _ in range(10):
        a = [rng.randrange(-Q + 1, Q) for _ in range(N)]
        y = ntt(a)
        y = [x % Q for x in y]                      # normalize: |ntt out| < 9q
        y = [v - Q if v > Q // 2 else v for v in y] # center to |x| < q
        rt = invntt_tomont(y)
        for j in range(N):
            if (rt[j] - a[j] * MONT) % Q != 0:
                ok = False
    print(f"{'PASS' if ok else 'FAIL'}: invntt_tomont(ntt(a)) == a * mont mod q")
    assert ok

    # THE composition: full ring product via pointwise, vs schoolbook
    def schoolbook_negacyclic(a, b):
        c = [0] * N
        for i in range(N):
            for j in range(N):
                idx = i + j
                if idx < N: c[idx] = (c[idx] + a[i] * b[j]) % Q
                else:       c[idx - N] = (c[idx - N] - a[i] * b[j]) % Q
        return c

    ok = True
    for _ in range(3):
        a = [rng.randrange(-Q + 1, Q) for _ in range(N)]
        b = [rng.randrange(-Q + 1, Q) for _ in range(N)]
        pw = pointwise(ntt(a), ntt(b))              # |pw| < q already (mr out)
        got = invntt_tomont(pw)
        want = schoolbook_negacyclic(a, b)
        if any((got[j] - want[j]) % Q != 0 for j in range(N)):
            ok = False
    print(f"{'PASS' if ok else 'FAIL'}: invntt_tomont(pw(ntt(a),ntt(b))) == "
          "schoolbook a*b mod (X^256+1, q)")
    assert ok
    print("\nALL INVERSE-NTT CHECKS PASSED")
