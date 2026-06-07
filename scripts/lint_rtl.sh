#!/usr/bin/env bash
set -euo pipefail

verilator --lint-only -Wall --top-module ntt_core_8 \
  rtl/mod_add.sv \
  rtl/mod_sub.sv \
  rtl/modmul_montgomery.sv \
  rtl/ntt_butterfly.sv \
  rtl/ntt_stage_2.sv \
  rtl/ntt_stage_4.sv \
  rtl/ntt_stage_8.sv \
  rtl/ntt_core_8.sv

verilator --lint-only -Wall --top-module simple_dual_port_ram \
  rtl/simple_dual_port_ram.sv
