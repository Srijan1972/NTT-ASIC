#!/usr/bin/env python3
# PYNQ driver for the spatial Kyber multiply kernel (top: kyber_mult).
# Computes c = a*b mod (x^256 + 1), q=3329, fully on-chip.
#
# Kernel signature:
#   void kyber_mult(uint32_t *a, uint32_t *b, uint32_t *c, int batch_size)
# Ports: gmem0=a, gmem1=b, gmem2=c ; scalar batch_size ; s_axilite control.
#
# Reuses the board fixes proven on this Kria:
#   - os.environ['XILINX_XRT']='/usr' BEFORE importing pynq (else "No Devices Found")
#   - AXI timer at 0xA0000000: reset 0x00<-0,0x04<-0,0x00<-0x20,0x00<-0x80 ; read 0x08
#   - start: ctrl 0x00<-1 ; poll done bit 0x2
#   - EXACT IP-name guard (no fuzzy fallback -> never silently runs the wrong design)
#
# Run:
#   sudo xmutil unloadapp
#   sudo /usr/local/share/pynq-venv/bin/python3 kyber_driver.py kyber.bit
#   sudo /usr/local/share/pynq-venv/bin/python3 kyber_driver.py kyber.bit --batch 8 --bench
import os
os.environ['XILINX_XRT'] = '/usr'
import sys, time, argparse
import numpy as np
from pynq import Overlay, allocate, MMIO

N = 256
Q = 3329

def schoolbook(a, b):
    # negacyclic c = a*b mod (x^256 + 1), q=3329
    c = np.zeros(N, dtype=np.int64)
    for i in range(N):
        ai = int(a[i])
        for j in range(N):
            k = i + j
            v = (ai * int(b[j])) % Q
            if k < N: c[k] = (c[k] + v) % Q
            else:     c[k-N] = (c[k-N] - v) % Q
    return (c % Q).astype(np.uint32)

class Kyber:
    def __init__(self, bit, ip_name="kyber_mult_0", timer_base=0xA0000000):
        print(f"[KY] Loading overlay: {bit}")
        self.ov = Overlay(bit)
        # exact IP match only - never fuzzy-fall-back to a different NTT design
        ip = None
        if ip_name in self.ov.ip_dict:
            ip = getattr(self.ov, ip_name)
        elif "kyber_mult_0" in self.ov.ip_dict:
            ip = getattr(self.ov, "kyber_mult_0")
        if ip is None:
            raise RuntimeError(
                f"kyber_mult IP not found. IPs present: {list(self.ov.ip_dict.keys())}. "
                f"Make sure this bitstream is the Kyber design.")
        self.ip = ip
        self.rm = ip.register_map
        self.mmio = ip.mmio
        print(f"[KY] IP phys 0x{self.mmio.base_addr:08X}")
        print(f"[KY] register_map fields: {list(self.rm._register_classes.keys())}")
        # clock
        self.ns = 10.0
        try:
            f = self.ov.clock_dict[0]['frequency']
            if isinstance(f,(int,float)) and f>0: self.ns = 1000.0/f
        except Exception: pass
        print(f"[KY] PL clock: {self.ns:.4f} ns/tick ({1000.0/self.ns:.2f} MHz)")
        # AXI timer
        self.tmr = None
        try: self.tmr = getattr(self.ov, 'axi_timer_0').mmio
        except Exception:
            try: self.tmr = MMIO(timer_base, 0x10000)
            except Exception: self.tmr = None
        print("[KY] AXI timer ready" if self.tmr is not None else "[KY] WARN: no timer")

    def _set(self, name, val): setattr(self.rm, name, int(val))
    def _set64(self, name, addr):
        self._set(name+"_1", addr & 0xFFFFFFFF)
        self._set(name+"_2", (addr >> 32) & 0xFFFFFFFF)
    def _timer_reset(self):
        if self.tmr is None: return
        self.tmr.write(0x00,0x0); self.tmr.write(0x04,0x0)
        self.tmr.write(0x00,0x20); self.tmr.write(0x00,0x80)
    def _timer_read(self): return self.tmr.read(0x08) if self.tmr is not None else 0
    def _start_wait(self):
        self.mmio.write(0x00, 0x1)
        while not (self.mmio.read(0x00) & 0x2): pass

    def run(self, batch):
        a = allocate((batch*N,), np.uint32)
        b = allocate((batch*N,), np.uint32)
        c = allocate((batch*N,), np.uint32)
        rng = np.random.default_rng(42)
        a_in = rng.integers(0, Q, batch*N, dtype=np.uint32)
        b_in = rng.integers(0, Q, batch*N, dtype=np.uint32)
        a[:] = a_in; b[:] = b_in
        a.flush(); b.flush()
        self._set64("a", a.physical_address)
        self._set64("b", b.physical_address)
        self._set64("c", c.physical_address)
        self._set("batch_size", batch)
        self._timer_reset(); self._start_wait(); cyc = self._timer_read()
        c.invalidate(); out = np.array(c)
        a.freebuffer(); b.freebuffer(); c.freebuffer()
        return a_in, b_in, out, cyc

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("bitstream")
    ap.add_argument("--batch", type=int, default=1)
    ap.add_argument("--iters", type=int, default=100)
    ap.add_argument("--bench", action="store_true")
    args = ap.parse_args()
    k = Kyber(args.bitstream)
    a_in, b_in, out, cyc = k.run(args.batch)
    ref = schoolbook(a_in[0:N], b_in[0:N])   # verify block 0
    errs = int(np.count_nonzero(out[0:N] != ref))
    print(f"[KY] verify batch={args.batch}: {'PASS' if errs==0 else 'FAIL'} ({errs} errs), "
          f"AXI cycles={cyc} = {cyc*k.ns/1000:.2f} us, per-mult={cyc//args.batch} cyc")
    if args.bench:
        best = None
        for _ in range(args.iters):
            _,_,_,c2 = k.run(args.batch)
            best = c2 if best is None else min(best, c2)
        print(f"[KY] N=256 batch={args.batch} iters={args.iters}")
        print(f"    HARDWARE CYCLES (AXI Timer): min={best} = {best*k.ns/1000:.2f} us | "
              f"per multiply: {best//args.batch} cyc = {(best//args.batch)*k.ns/1000:.2f} us")

if __name__ == "__main__": main()
