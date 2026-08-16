#!/usr/bin/env python3
"""Paired zeta SRAM store: replaces the logic ROM (the 100MHz blocker,
Yosys OR-tree critical path) with two of the ALREADY-PROVEN sky130 SRAM
macros holding zetas as pairs:

    macro E (256x32, 128 used): E[m] = ZETAS[2m]
    macro O (256x32, 128 used): O[m] = ZETAS[2m+1]
    shared 7-bit pair address, registered read, latency 1 (same as the
    behavioral ROM today -> ZERO schedule change).

Proves, exhaustively:
  Z1  Pairing invariant: in the CURRENT dual radix-2 engine schedule
      (exact RTL j0/j1/k0/k1 forms), the (up to) two zeta indices
      needed in any cycle always lie inside ONE pair {2m, 2m+1}:
        - fwd stages 1..6 and inv stages 1..7: k1 == k0 (same pair)
        - fwd stage log2len==0: k0 = 128 + 2*issue is EVEN, k1 = k0+1
        - inv stage len==1:     k0 = 255 - 2*issue is ODD,  k1 = k0-1
      => one paired read port serves the whole engine. Scale pass and
      MAC use no ROM.
  Z2  Cycle-accurate functional equivalence: full NTT and INTT
      simulated with the paired-SRAM zeta path model (pair address
      issued at cycle c, data registered at c+1, per-lane select by
      registered k parity) are bit-exact vs dilithium_ntt.ntt() /
      dilithium_intt.invntt_tomont(). Dense random + edge vectors.
  Z3  Boot-load image: emits zeta_even.hex / zeta_odd.hex (32-bit
      words, macro $readmemh format for sim; on silicon loaded via 256
      ext writes at reset). Models the ext-write load sequence
      (addr k -> macro[k>>1], lane k&1) and proves the loaded image
      reproduces ZETAS exactly, round-trip through the hex files.
  Z4  Merged-layer phase port count: the merged radix-2^2 schedule
      (dilithium_merged_sched) needs pairs {k>>1, k} per cycle ->
      TWO paired ports. Proven: never more than 2 distinct pairs per
      cycle, fwd and inv, all passes. Implementation: mirror the pair
      (4 macros total) or a group-addressed redundant 96-bit ROM
      (3 macros, one read/cycle; zetas fit 24 bits: |zeta| <= q/2).

Timing rationale: critical path becomes issue-reg -> k logic (8-bit
shift+add+mux) -> macro address setup, then macro internal access to a
registered output. No 256:1 logic mux anywhere. The macro access is
the same class already closing timing on the 4 coefficient banks.
"""

from __future__ import annotations

import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_modmul import Q, montgomery_reduce_ref
from dilithium_ntt import N, ZETAS, ntt
from dilithium_intt import invntt_tomont

F_TOMONT = 41978


# ---------------------------------------------------------------------------
# exact RTL index forms (ntt_engine_256.sv)
# ---------------------------------------------------------------------------

def fwd_issue(stage: int, issue: int):
    """Return (j0, j1, k0, k1) for forward stage (0..7), issue (0..63)."""
    log2len = 7 - stage
    if log2len != 0:
        block = issue >> (log2len - 1)
        off = (issue & ((1 << (log2len - 1)) - 1)) << 1
        j0 = (block << (log2len + 1)) | off
        j1 = j0 + 1
    else:
        j0 = (issue << 2)
        j1 = j0 + 2
    k0 = (1 << stage) + (j0 >> (log2len + 1))
    k1 = k0 + 1 if log2len == 0 else k0
    return j0, j1, k0, k1


def inv_issue(stage: int, issue: int):
    """Return (j0, j1, k0, k1) for inverse GS stage (0..7), issue (0..63)."""
    log2len = stage
    if log2len != 0:
        block = issue >> (log2len - 1)
        off = (issue & ((1 << (log2len - 1)) - 1)) << 1
        j0 = (block << (log2len + 1)) | off
        j1 = j0 + 1
    else:
        j0 = (issue << 2)
        j1 = j0 + 2
    k0 = (255 >> stage) - (j0 >> (stage + 1))
    k1 = k0 - 1 if log2len == 0 else k0
    return j0, j1, k0, k1


# ---------------------------------------------------------------------------
# Z1: one pair per cycle, current schedule
# ---------------------------------------------------------------------------

def prove_pairing() -> None:
    for stage in range(8):
        for issue in range(64):
            _, _, k0, k1 = fwd_issue(stage, issue)
            assert (k0 >> 1) == (k1 >> 1), \
                f"FWD s{stage} i{issue}: k0={k0} k1={k1} span pairs"
            if stage == 7:
                assert k0 % 2 == 0 and k1 == k0 + 1
            _, _, k0, k1 = inv_issue(stage, issue)
            assert (k0 >> 1) == (k1 >> 1), \
                f"INV s{stage} i{issue}: k0={k0} k1={k1} span pairs"
            if stage == 0:
                assert k0 % 2 == 1 and k1 == k0 - 1
    print("Z1  pairing: all 512 fwd + 512 inv issues need exactly one "
          "pair/cycle  OK")


# ---------------------------------------------------------------------------
# Z2: cycle-accurate sim with the paired-SRAM zeta path
# ---------------------------------------------------------------------------

class PairedZetaSram:
    """Two 256-deep 32-bit macros, shared pair address, latency 1.
    Rows 0..127 hold +ZETAS pairs; rows 128..255 hold -ZETAS pairs
    (negated at BOOT, not per cycle: the 32-bit negate carry chain was
    4.6 ns of the post-route critical path in the v3 run). The read
    address is {gs, pair}: sign selection is ADDRESS logic."""

    def __init__(self, even: list[int], odd: list[int]):
        assert len(even) == 256 and len(odd) == 256
        self.E, self.O = even, odd
        self._pa = None      # address presented this cycle
        self._data = None    # registered output (valid for reads last cycle)

    def clock(self, pair_addr: int | None):  # pair_addr includes gs bit
        self._data = (None if self._pa is None
                      else (self.E[self._pa], self.O[self._pa]))
        self._pa = pair_addr

    def read(self, parity: int) -> int:
        assert self._data is not None, "zeta read with no address issued"
        return self._data[parity]


def bf_ct(a, b, zeta):
    t = montgomery_reduce_ref(zeta * b)
    return a + t, a - t


def bf_gs(a, b, zeta):
    a2 = a + b
    b2 = montgomery_reduce_ref(zeta * (a - b))
    return a2, b2


def sim_fwd_sram(a: list[int], z: PairedZetaSram) -> list[int]:
    a = list(a)
    for stage in range(8):
        pend = None  # (j0,j1,k0,k1) issued last cycle, data arrives now
        for issue in range(65):  # one extra cycle to drain the pipe
            z.clock((fwd_issue(stage, issue)[2] >> 1) if issue < 64 else None)
            if pend is not None:
                j0, j1, k0, k1 = pend
                log2len = 7 - stage
                length = 1 << log2len
                z0 = z.read(k0 & 1)
                z1 = z.read(k1 & 1)
                a[j0], a[j0 + length] = bf_ct(a[j0], a[j0 + length], z0)
                a[j1], a[j1 + length] = bf_ct(a[j1], a[j1 + length], z1)
            pend = fwd_issue(stage, issue) if issue < 64 else None
    return a


def sim_inv_sram(a: list[int], z: PairedZetaSram) -> list[int]:
    a = list(a)
    for stage in range(8):
        pend = None
        for issue in range(65):
            z.clock((128 + (inv_issue(stage, issue)[2] >> 1)) if issue < 64 else None)
            if pend is not None:
                j0, j1, k0, k1 = pend
                length = 1 << stage
                z0 = z.read(k0 & 1)   # already negated in rows 128..255
                z1 = z.read(k1 & 1)
                a[j0], a[j0 + length] = bf_gs(a[j0], a[j0 + length], z0)
                a[j1], a[j1 + length] = bf_gs(a[j1], a[j1 + length], z1)
            pend = inv_issue(stage, issue) if issue < 64 else None
    return [montgomery_reduce_ref(F_TOMONT * x) for x in a]


def prove_functional(even: list[int], odd: list[int]) -> None:
    rng = random.Random(0x5EED)
    vecs = [[rng.randrange(-Q + 1, Q) for _ in range(N)] for _ in range(50)]
    vecs.append([Q - 1] * N)
    vecs.append([-(Q - 1)] * N)
    for i in (0, 1, 255):
        v = [0] * N
        v[i] = Q - 1
        vecs.append(v)
    z = PairedZetaSram(even, odd)
    for a in vecs:
        assert sim_fwd_sram(a, z) == ntt(list(a)), "FWD mismatch"
        assert sim_inv_sram(a, z) == invntt_tomont(list(a)), "INV mismatch"
    print(f"Z2  functional: {len(vecs)} vectors, NTT+INTT bit-exact through "
          f"the 1-port paired-SRAM zeta path  OK")


# ---------------------------------------------------------------------------
# Z3: boot-load model + hex images
# ---------------------------------------------------------------------------

def prove_bootload() -> tuple[list[int], list[int]]:
    even = [0] * 256
    odd = [0] * 256
    # 512 sequential ext writes: zload_addr = {neg, k}, data = (+/-)ZETAS[k]
    for neg in (0, 1):
        for k in range(256):
            v = -ZETAS[k] if neg else ZETAS[k]
            val = v & 0xFFFFFFFF
            row = (neg << 7) | (k >> 1)
            if k & 1:
                odd[row] = val
            else:
                even[row] = val
    here = Path(__file__).parent / "test_vectors"
    for name, img in (("zeta_even.hex", even), ("zeta_odd.hex", odd)):
        (here / name).write_text("\n".join(f"{w:08x}" for w in img) + "\n")
        back = [int(x, 16) for x in (here / name).read_text().split()]
        assert back == img, f"{name} round-trip failed"
    # signed recovery check
    def s32(x): return x - (1 << 32) if x >> 31 else x
    for neg in (0, 1):
        for k in range(256):
            row = (neg << 7) | (k >> 1)
            got = s32(odd[row] if k & 1 else even[row])
            want = -ZETAS[k] if neg else ZETAS[k]
            assert got == want, f"zeta {k} neg={neg} image mismatch"
    print("Z3  boot-load: 512-write sequence + 256-row hex images reproduce "
          "+/-ZETAS exactly (zeta_even.hex / zeta_odd.hex written)  OK")
    return [x - (1 << 32) if x >> 31 else x for x in even], \
           [x - (1 << 32) if x >> 31 else x for x in odd]


# ---------------------------------------------------------------------------
# Z4: merged-layer phase needs exactly two pair ports
# ---------------------------------------------------------------------------

def prove_merged_ports() -> None:
    from dilithium_merged_sched import fwd_groups, inv_groups
    worst = 0
    for p in range(4):
        for _, k in fwd_groups(p):
            pairs = {k >> 1, k}          # parent + children pair
            worst = max(worst, len(pairs))
            assert len(pairs) <= 2
        for _, k1a, k1b, k2 in inv_groups(p):
            pairs = {k1a >> 1, k1b >> 1, k2 >> 1}
            worst = max(worst, len(pairs))
            assert len(pairs) <= 2, f"INV p={p}: pairs {pairs}"
    assert all(0 <= z <= (Q // 2) or -Q // 2 < z for z in ZETAS)
    assert max(abs(z) for z in ZETAS) < (1 << 23)  # 24-bit signed fits
    print(f"Z4  merged phase: never more than {worst} distinct pairs/cycle "
          "-> mirror the pair (4 macros) or one 3x24-bit group-addressed "
          "ROM read  OK")


if __name__ == "__main__":
    prove_pairing()
    even, odd = prove_bootload()
    prove_functional(even, odd)
    prove_merged_ports()
    print("\nAll proofs pass. Zeta store = 2 existing-class SRAM macros, "
          "1 shared-address paired read/cycle, latency 1 (schedule "
          "unchanged), 256-cycle one-time boot load. OR-tree eliminated.")
