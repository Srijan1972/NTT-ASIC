#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

bash scripts/run_ntt_core_8_tb.sh
bash scripts/lint_rtl.sh
bash scripts/run_synth_ntt_core_8.sh >/tmp/ntt_core_8_yosys_check.log

tail -n 1 /tmp/ntt_core_8_yosys_check.log

test -f constraints/ntt_core_8.sdc
test -f openlane/ntt_core_8/config.tcl
test -f docs/openlane_handoff.md

echo "PASS: OpenLane handoff readiness checks completed"
