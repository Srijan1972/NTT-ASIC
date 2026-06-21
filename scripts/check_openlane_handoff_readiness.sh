#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

bash scripts/run_ntt_core_256_tb.sh
bash scripts/lint_rtl.sh
bash scripts/run_synth_ntt_core_256.sh >/tmp/ntt_core_256_yosys_check.log

tail -n 1 /tmp/ntt_core_256_yosys_check.log

echo "PASS: Full NTT OpenLane handoff readiness checks completed"
