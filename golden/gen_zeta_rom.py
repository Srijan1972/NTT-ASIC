#!/usr/bin/env python3
"""Generate rtl/zeta_rom.sv from the golden zeta table.

Dual-read registered ROM (two independent read ports), 256 entries of
signed 32-bit. Index 0 is unused by the forward NTT but kept for direct
indexing. Also sanity-checks the RTL's closed-form zeta index formula
    k = (128 >> log2len) + (j0 >> (log2len + 1))
against the reference schedule ordering before emitting anything.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from dilithium_ntt import N, ZETAS
from dilithium_engine_sched import make_schedule


def check_k_formula() -> None:
    for iss in make_schedule():
        log2len = iss.len_.bit_length() - 1
        k0 = (128 >> log2len) + (iss.j0 >> (log2len + 1))
        if iss.len_ >= 2:
            k1 = k0
        else:
            k1 = (128 >> log2len) + (iss.j1 >> (log2len + 1))
        assert (k0, k1) == (iss.k0, iss.k1), \
            f"k formula mismatch at len={iss.len_} j0={iss.j0}: " \
            f"formula ({k0},{k1}) vs schedule ({iss.k0},{iss.k1})"
    print("PASS: closed-form zeta index matches reference schedule "
          f"for all {len(make_schedule())} issues")


HEADER = """\
// ============================================================================
//  zeta_rom.sv -- Dilithium forward-NTT twiddle ROM. GENERATED FILE:
//  golden/gen_zeta_rom.py (values = center(MONT * psi^brv8(k)), anchored to
//  the published reference table). Do not edit by hand.
//
//  Dual registered read ports (the len==1 stage needs two zetas per cycle).
//  Read latency 1 cycle, matching the coefficient bank read latency so
//  zeta and operands arrive at the butterfly together.
// ============================================================================
`default_nettype none

module zeta_rom (
    input  wire        clk,
    input  wire [7:0]  addr0,
    input  wire [7:0]  addr1,
    output reg  signed [31:0] dout0,
    output reg  signed [31:0] dout1
);
    reg signed [31:0] rom [0:255];
    initial begin
"""

FOOTER = """\
    end

    always @(posedge clk) begin
        dout0 <= rom[addr0];
        dout1 <= rom[addr1];
    end
endmodule

`default_nettype wire
"""


def main() -> None:
    check_k_formula()
    lines = [HEADER]
    for k in range(N):
        v = ZETAS[k] & 0xFFFFFFFF
        lines.append(f"        rom[{k:3d}] = 32'sh{v:08X};\n")
    lines.append(FOOTER)
    out = Path(__file__).parent.parent / "rtl" / "zeta_rom.sv"
    out.write_text("".join(lines))
    print(f"Wrote {out} ({N} entries)")


if __name__ == "__main__":
    main()
