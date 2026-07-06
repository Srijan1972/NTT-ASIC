#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [ "$#" -gt 0 ]; then
  rpt="$1"
else
  rpt=$(find openlane -path '*/reports/signoff/*lvs*.rpt' -type f -printf '%T@ %p\n' 2>/dev/null | sort -nr | awk 'NR==1 {print $2}')
fi

if [ -z "${rpt:-}" ] || [ ! -f "$rpt" ]; then
  echo "No LVS report found under openlane/*/runs/*/reports/signoff/."
  echo "Pass a report path explicitly if your latest OpenLane run is elsewhere:"
  echo "  bash scripts/inspect_lvs_report.sh /path/to/*.lvs.rpt"
  exit 1
fi

echo "LVS report: $rpt"
echo

echo "Key LVS lines:"
grep -i -E 'netlists match|netlists do not match|unmatched|mismatch|discrep|property|device|net|subcircuit|port|pin|error|failed|succeed|correct' "$rpt" | tail -n 120 || true

echo
echo "Last 80 lines:"
tail -n 80 "$rpt"
