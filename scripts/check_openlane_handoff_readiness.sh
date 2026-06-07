#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

bash scripts/run_ntt_stage_8_registered_tb.sh
bash scripts/lint_rtl.sh
bash scripts/run_synth_ntt_stage_8_registered.sh >/tmp/ntt_stage_8_registered_yosys_check.log

tail -n 1 /tmp/ntt_stage_8_registered_yosys_check.log

test -f constraints/ntt_stage_8_registered.sdc
test -f openlane/ntt_stage_8_registered/config.tcl
test -f docs/openlane_handoff.md

echo "PASS: OpenLane handoff readiness checks completed"
