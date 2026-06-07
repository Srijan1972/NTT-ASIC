#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if ! command -v iverilog >/dev/null 2>&1; then
  echo "ERROR: iverilog is not installed. Install it with: sudo apt update && sudo apt install -y iverilog" >&2
  exit 127
fi

mkdir -p build/sim
iverilog -g2012 -Wall -o build/sim/tb_mod_sub.vvp rtl/mod_sub.sv sim/tb_mod_sub.sv
vvp build/sim/tb_mod_sub.vvp
