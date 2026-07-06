#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
run_dir="${1:-}"

if [ -z "$run_dir" ]; then
  run_dir=$(find openlane -path '*/runs/RUN_*' -type d -printf '%T@ %p\n' 2>/dev/null | sort -nr | awk 'NR==1 {print $2}')
fi

if [ -z "${run_dir:-}" ] || [ ! -d "$run_dir" ]; then
  echo "No OpenLane run directory found. Pass one explicitly:"
  echo "  bash scripts/inspect_physical_reports.sh /path/to/openlane/<design>/runs/RUN_xxx"
  exit 1
fi

echo "Run directory: $run_dir"
echo

echo "Antenna-related lines:"
find "$run_dir" -type f \( -iname '*antenna*' -o -iname '*.rpt' -o -iname '*.log' \) -print0 2>/dev/null \
  | xargs -0 grep -i -H -E 'antenna|violat' 2>/dev/null \
  | tail -n 120 || true

echo
echo "Slew/fanout/timing-related lines:"
find "$run_dir" -type f \( -iname '*.rpt' -o -iname '*.log' \) -print0 2>/dev/null \
  | xargs -0 grep -i -H -E 'max slew|slew|fanout|max fanout|wns|tns|violat' 2>/dev/null \
  | tail -n 160 || true

echo
echo "LVS-related lines:"
find "$run_dir" -type f -iname '*lvs*.rpt' -print0 2>/dev/null \
  | xargs -0 grep -i -H -E 'unmatched|mismatch|netlists|total errors|property|device|pin|net' 2>/dev/null \
  | tail -n 120 || true
