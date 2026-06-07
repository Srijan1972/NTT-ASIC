#!/usr/bin/env bash
set -euo pipefail

iverilog -g2012 \
  -o sim/tb_modmul_montgomery.vvp \
  sim/tb_modmul_montgomery.sv \
  rtl/modmul_montgomery.sv

vvp sim/tb_modmul_montgomery.vvp
