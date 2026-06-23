#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p build

yosys -s scripts/synth_ntt_core_256_sram_yosys.tcl | tee build/synth_ntt_core_256_sram_yosys.log

echo "PASS: ntt_core_256_sram Yosys synthesizability check completed"
