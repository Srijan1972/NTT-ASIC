#!/usr/bin/env bash
# =============================================================================
# run_gls.sh -- gate-level simulation of the routed OpenLane netlist.
# Run ON THE FLOW MACHINE (needs the PDK cell models + a completed run).
#
# Usage:
#   ./run_gls.sh <path-to-run-dir>
# e.g.
#   ./run_gls.sh /home/khan/OpenLane/designs/ntt_engine_256/runs/RUN_2026.07.04_10.47.24
#
# Also requires this repo checked out (for tb/, golden vectors, sim model);
# run from the repo root: bash scripts/run_gls.sh <run-dir>
#
# What it does: simulates the post-route gate-level netlist (standard cells
# resolved to sky130_fd_sc_hd functional models, SRAM macro to the
# behavioral model) against the same tb_ntt_engine_256 stimulus that the
# RTL passed. This closes the "netlist was never simulated" gap.
#
# Known GLS caveat: uninitialized flops start as X. The engine's control
# (FSM, valid pipes) is reset, and data-path X's are gated by valid, so the
# TB should pass; if you see X-poisoning on the first vector set only,
# add a dummy first transform (results discarded) to flush state.
# =============================================================================
set -e
RUN_DIR="$1"
if [ -z "$RUN_DIR" ]; then echo "usage: $0 <openlane-run-dir>"; exit 1; fi

: "${PDK_ROOT:=$HOME/.ciel}"
CELLS="$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/verilog"
NETLIST="$RUN_DIR/results/final/verilog/gl/ntt_engine_256.nl.v"

for f in "$NETLIST" "$CELLS/primitives.v" "$CELLS/sky130_fd_sc_hd.v"; do
    [ -f "$f" ] || { echo "missing: $f"; exit 1; }
done

cd "$(dirname "$0")/.."
python3 golden/gen_engine_vectors.py --out-dir golden/test_vectors

echo "=== compiling gate-level sim ==="
iverilog -g2012 -o /tmp/gls_engine \
    -DFUNCTIONAL -DUNIT_DELAY='#1' \
    "$CELLS/primitives.v" \
    "$CELLS/sky130_fd_sc_hd.v" \
    sim/sky130_sram_beh.v \
    "$NETLIST" \
    tb/tb_ntt_engine_256.sv

echo "=== running (slower than RTL sim -- expect minutes) ==="
vvp /tmp/gls_engine | tail -5
