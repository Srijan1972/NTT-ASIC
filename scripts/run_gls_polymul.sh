#!/usr/bin/env bash

set -e

RUN_DIR="$1"
if [ -z "$RUN_DIR" ]; then echo "usage: $0 <openlane-run-dir>"; exit 1; fi

: "${PDK_ROOT:=/home/khan/.ciel/ciel/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af}"
CELLS="$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/verilog"

NETLIST="$RUN_DIR/results/final/verilog/gl/ntt_engine_256.nl.v"

for f in "$NETLIST" "$CELLS/primitives.v" "$CELLS/sky130_fd_sc_hd.v" \
         sim/sky130_sram_beh.v tb/tb_ntt_polymul.sv golden/gen_intt_vectors.py; do
    [ -f "$f" ] || { echo "missing: $f"; exit 1; }
done

cd "$(dirname "$0")/.."

if grep -q "VPWR" "$NETLIST"; then
    echo "ERROR: $NETLIST contains power pins (VPWR)."
    echo "       Point at the *.nl.v variant, or switch to the power-aware flow"
    echo "       (-DUSE_POWER_PINS + tied VPWR/VGND). Aborting."
    exit 1
fi

echo "=== generating INTT / polymul vectors ==="
python3 golden/gen_intt_vectors.py --out-dir golden/test_vectors

for h in zeta_even zeta_odd intt_in intt_out pm_polys pm_out; do
    [ -f "golden/test_vectors/$h.hex" ] || { echo "missing vector: golden/test_vectors/$h.hex"; exit 1; }
done

echo "=== compiling gate-level sim (polymul) ==="
iverilog -g2012 -o /tmp/gls_polymul \
    -DFUNCTIONAL -DUNIT_DELAY='#1' \
    "$CELLS/primitives.v" \
    "$CELLS/sky130_fd_sc_hd.v" \
    sim/sky130_sram_beh.v \
    "$NETLIST" \
    tb/tb_ntt_polymul.sv

echo "=== running (INTT x3 + full polymul; slower than the NTT TB -- expect several minutes) ==="
vvp /tmp/gls_polymul | tail -8
