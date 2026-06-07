#!/usr/bin/env bash
set -euo pipefail

iverilog -g2012 \
  -o sim/tb_simple_dual_port_ram.vvp \
  sim/tb_simple_dual_port_ram.sv \
  rtl/simple_dual_port_ram.sv

vvp sim/tb_simple_dual_port_ram.vvp
