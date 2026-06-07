#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p build

yosys -s scripts/synth_ntt_stage_8_yosys.tcl | tee build/synth_ntt_stage_8_yosys.log

echo "PASS: ntt_stage_8 Yosys synthesizability check completed"
