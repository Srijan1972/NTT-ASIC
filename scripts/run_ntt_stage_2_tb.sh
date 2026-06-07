#!/usr/bin/env bash
set -euo pipefail

iverilog -g2012 \
  -o sim/tb_ntt_stage_2.vvp \
  sim/tb_ntt_stage_2.sv \
  rtl/ntt_stage_2.sv \
  rtl/ntt_butterfly.sv \
  rtl/modmul_montgomery.sv \
  rtl/mod_add.sv \
  rtl/mod_sub.sv

vvp sim/tb_ntt_stage_2.vvp
