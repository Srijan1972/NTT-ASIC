#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

iverilog -g2012 -o sim/tb_ntt_stage_8.vvp \
  rtl/mod_add.sv \
  rtl/mod_sub.sv \
  rtl/modmul_montgomery.sv \
  rtl/ntt_butterfly.sv \
  rtl/ntt_stage_2.sv \
  rtl/ntt_stage_4.sv \
  rtl/ntt_stage_8.sv \
  sim/tb_ntt_stage_8.sv

vvp sim/tb_ntt_stage_8.vvp
