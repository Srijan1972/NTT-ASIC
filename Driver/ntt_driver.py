#!/usr/bin/env python3

import os
os.environ['XILINX_XRT'] = '/usr'

import numpy as np
import time
import math
from pynq import Overlay, allocate, MMIO

CTRL_REG           = 0x00
GIE_REG            = 0x04
IER_REG            = 0x08
ISR_REG            = 0x0C
X_ADDR_LO          = 0x10
X_ADDR_HI          = 0x14
PSI_POWERS_ADDR_LO = 0x1C
PSI_POWERS_ADDR_HI = 0x20
TWIDDLES_ADDR_LO   = 0x28
TWIDDLES_ADDR_HI   = 0x2C
Q_REG              = 0x34
Q_INV_REG          = 0x3C
BATCH_SIZE_REG     = 0x44
N_REG              = 0x4C

AP_START = 0x01
AP_DONE  = 0x02
AP_IDLE  = 0x04

MAX_N = 65536


class NTTAccelerator:

    def __init__(self, bitstream: str, ip_name: str = "ntt_kernel_0"):
        print(f"[NTT] Loading overlay: {bitstream}")
        self.overlay = Overlay(bitstream)
        self.ip = getattr(self.overlay, ip_name)
        self.mmio = self.ip.mmio
        print(f"[NTT] IP mapped at phys 0x{self.mmio.base_addr:08X}, "
              f"range 0x{self.mmio.length:X}")

    @staticmethod
    def _find_primitive_root(q: int) -> int:
        n = q - 1
        factors = set()
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

    @staticmethod
    def compute_psi(q: int, n: int) -> int:
        assert (q - 1) % (2 * n) == 0, \
            f"2n={2*n} does not divide q-1={q-1}; no 2n-th root exists"
        g = NTTAccelerator._find_primitive_root(q)
        psi = pow(g, (q - 1) // (2 * n), q)
        assert pow(psi, n, q) == q - 1, \
            f"g={g} did not yield a valid primitive 2n-th root of unity"
        return psi

    @staticmethod
    def compute_q_inv(q: int) -> np.uint32:
        with np.errstate(over='ignore'):
            inv = np.uint32(1)
            for _ in range(5):
                inv = np.uint32(inv * np.uint32(2 - np.uint32(q) * inv))
            return np.uint32(-np.int32(inv))

    @staticmethod
    def bit_reverse(x: int, log2n: int) -> int:
        rev = 0
        for i in range(log2n):
            if (x >> i) & 1:
                rev |= 1 << (log2n - 1 - i)
        return rev

    def _precompute(self, n: int, q: int, psi: int):
        log2n = int(math.log2(n))
        assert 1 << log2n == n, "n must be a power of 2"
        assert n <= MAX_N, f"n={n} exceeds hardware MAX_N={MAX_N}"

        br = np.array([self.bit_reverse(i, log2n) for i in range(n)],
                      dtype=np.uint32)

        psi_pows = [1] * (2 * n)
        for i in range(1, 2 * n):
            psi_pows[i] = (psi_pows[i - 1] * psi) % q

        R_mod_q = (1 << 32) % q
        twiddles = np.zeros(n - 1, dtype=np.uint32)
        length = 1
        offset = 0
        while length < n:
            for j in range(length):
                power = (2 * j + 1) * (n // (2 * length))
                twiddles[offset + j] = (psi_pows[power] * R_mod_q) % q
            offset += length
            length *= 2

        return br, twiddles

    def _write64(self, lo_off: int, hi_off: int, val: int):
        self.mmio.write(lo_off, val & 0xFFFFFFFF)
        self.mmio.write(hi_off, (val >> 32) & 0xFFFFFFFF)

    def _start(self):
        self.mmio.write(CTRL_REG, AP_START)

    def _wait_done(self, timeout_s: float = 30.0):
        t0 = time.monotonic()
        while True:
            ctrl = self.mmio.read(CTRL_REG)
            if ctrl & AP_DONE:
                return
            if time.monotonic() - t0 > timeout_s:
                raise TimeoutError(
                    f"NTT kernel did not finish within {timeout_s}s  "
                    f"(CTRL=0x{ctrl:08X})")
            time.sleep(0.0001)

    def _is_idle(self) -> bool:
        return bool(self.mmio.read(CTRL_REG) & AP_IDLE)

    def run_ntt(
        self,
        x: np.ndarray,
        q: int = 8380417,
        psi: int | None = None,
        batch_size: int | None = None,
        n: int | None = None,
        timeout_s: float = 30.0,
    ) -> np.ndarray:
        x = np.asarray(x, dtype=np.uint32)
        if x.ndim == 1:
            x = x.reshape(1, -1)
        if batch_size is None:
            batch_size = x.shape[0]
        if n is None:
            n = x.shape[1]
        assert x.shape == (batch_size, n)

        if psi is None:
            psi = self.compute_psi(q, n)

        q_inv = self.compute_q_inv(q)
        br, twiddles = self._precompute(n, q, psi)

        total_elems = batch_size * n

        buf_x   = allocate(shape=(total_elems,), dtype=np.uint32)
        buf_psi = allocate(shape=(n,),           dtype=np.uint32)
        buf_tw  = allocate(shape=(n - 1,),       dtype=np.uint32)

        buf_x[:]   = x.ravel()
        buf_psi[:] = br
        buf_tw[:]  = twiddles

        buf_x.flush()
        buf_psi.flush()
        buf_tw.flush()

        self._write64(X_ADDR_LO,          X_ADDR_HI,          buf_x.device_address)
        self._write64(PSI_POWERS_ADDR_LO, PSI_POWERS_ADDR_HI, buf_psi.device_address)
        self._write64(TWIDDLES_ADDR_LO,   TWIDDLES_ADDR_HI,   buf_tw.device_address)

        self.mmio.write(Q_REG,          int(np.uint32(q)))
        self.mmio.write(Q_INV_REG,      int(q_inv))
        self.mmio.write(BATCH_SIZE_REG, batch_size)
        self.mmio.write(N_REG,          n)

        t0 = time.perf_counter()
        self._start()
        self._wait_done(timeout_s)
        elapsed_us = (time.perf_counter() - t0) * 1e6
        print(f"[NTT] Kernel finished in {elapsed_us:.1f} us  "
              f"(batch={batch_size}, n={n})")

        buf_x.invalidate()
        result = np.array(buf_x, dtype=np.uint32).reshape(batch_size, n)

        buf_x.freebuffer()
        buf_psi.freebuffer()
        buf_tw.freebuffer()

        return result.squeeze()

    @staticmethod
    def naive_ntt(x: np.ndarray, q: int, psi: int) -> np.ndarray:
        n = len(x)
        y = np.zeros(n, dtype=np.uint64)
        for k in range(n):
            s = 0
            for i in range(n):
                power = (2 * k + 1) * i
                psi_pow = pow(int(psi), int(power), int(q))
                s = (s + int(x[i]) * psi_pow) % q
            y[k] = s
        return y.astype(np.uint32)

    def verify(self, n: int = 256, q: int = 8380417, psi: int | None = None,
               batch_size: int = 1, seed: int = 42) -> bool:
        if psi is None:
            psi = self.compute_psi(q, n)
        print(f"[NTT] Using psi={psi} (primitive {2*n}-th root of unity mod {q})")
        rng = np.random.default_rng(seed)
        x = rng.integers(0, q, size=(batch_size, n), dtype=np.uint32)
        hw = self.run_ntt(x.copy(), q=q, psi=psi)

        ok = True
        for b in range(batch_size):
            sw = self.naive_ntt(x[b], q, psi)
            hw_b = hw[b] if hw.ndim == 2 else hw
            if not np.array_equal(hw_b, sw):
                mismatches = np.sum(hw_b != sw)
                print(f"[NTT] FAIL  batch {b}: {mismatches}/{n} mismatches")
                ok = False
        if ok:
            print(f"[NTT] PASS  {batch_size}x{n} — HW matches SW reference")
        return ok


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument("bitstream")
    parser.add_argument("--ip", default="ntt_kernel_0")
    parser.add_argument("--n", type=int, default=256)
    parser.add_argument("--batch", type=int, default=4)
    parser.add_argument("--q", type=int, default=8380417)
    parser.add_argument("--psi", type=int, default=None)
    args = parser.parse_args()

    acc = NTTAccelerator(args.bitstream, ip_name=args.ip)
    acc.verify(n=args.n, q=args.q, psi=args.psi, batch_size=args.batch)
