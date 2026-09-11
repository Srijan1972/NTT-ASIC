// SPDX-License-Identifier: Apache-2.0
`default_nettype none

// 40-bit unclocked repeater macro. Instantiated six times in ntt.v to break
// the 3-5 mm bridge<->engine wrapper nets into ~1.3 mm segments.
// Bits 0..21: a on #S, y on #N (bridge -> engine direction).
// Bits 22..39: a on #N, y on #S (engine -> bridge direction).
module ntt_repeater (
`ifdef USE_POWER_PINS
    inout  wire        VPWR,
    inout  wire        VGND,
`endif
    input  wire [39:0] a,
    output wire [39:0] y
);
`ifdef SYNTHESIS
    // Hardened view: explicit clkbuf_16 per bit (this is what OpenLane synthesised).
    genvar i;
    generate
        for (i = 0; i < 40; i = i + 1) begin : g_buf
            sky130_fd_sc_hd__clkbuf_16 u_buf (
`ifdef USE_POWER_PINS
                .VPWR(VPWR), .VGND(VGND), .VPB(VPWR), .VNB(VGND),
`endif
                .A(a[i]), .X(y[i])
            );
        end
    endgenerate
`else
    // Simulation view: functionally a wire. Gate-level sim uses verilog/gl/ntt_repeater.v.
    assign y = a;
`endif
endmodule

`default_nettype wire
