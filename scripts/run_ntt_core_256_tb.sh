#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

python3 sim/ntt_golden.py --n 256 --out-dir sim/test_vectors >/dev/null

iverilog -g2012 -o sim/tb_ntt_core_256.vvp \
  rtl/mod_add.sv \
  rtl/mod_sub.sv \
  rtl/modmul_montgomery.sv \
  rtl/ntt_butterfly.sv \
  rtl/ntt_core_256.sv \
  sim/tb_ntt_core_256.sv

vvp sim/tb_ntt_core_256.vvp
