#!/usr/bin/env bash
set -euo pipefail

iverilog -g2012 \
  -o sim/tb_ntt_butterfly.vvp \
  sim/tb_ntt_butterfly.sv \
  rtl/ntt_butterfly.sv \
  rtl/modmul_montgomery.sv \
  rtl/mod_add.sv \
  rtl/mod_sub.sv

vvp sim/tb_ntt_butterfly.vvp
