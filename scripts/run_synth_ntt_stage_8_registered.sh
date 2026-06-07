#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p build

yosys -s scripts/synth_ntt_stage_8_registered_yosys.tcl | tee build/synth_ntt_stage_8_registered_yosys.log

echo "PASS: ntt_stage_8_registered Yosys synthesizability check completed"
