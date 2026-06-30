#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

verilator --lint-only -Wall --top-module ntt_core_256_sram \
  rtl/asic_sram_1rw.sv \
  rtl/mod_add.sv \
  rtl/mod_sub.sv \
  rtl/modmul_montgomery.sv \
  rtl/ntt_butterfly.sv \
  rtl/ntt_core_256_sram.sv
