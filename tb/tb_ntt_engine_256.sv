// ============================================================================
//  tb_ntt_engine_256.sv -- full-transform test of ntt_engine_256.
//  For each vector set: load 256 coefficients through the external port,
//  pulse start, wait for done, read all 256 results back, compare exact
//  32-bit signed values against the reference lazy outputs.
// ============================================================================
`timescale 1ns/1ps

module tb_ntt_engine_256;

    localparam int N     = 256;
    localparam int NSETS = 6;

    reg clk = 0, rst_n = 0, start = 0;
    reg        ext_we = 0, ext_re = 0;
    reg [7:0]  ext_waddr = 0, ext_raddr = 0;
    reg [31:0] ext_wdata = 0;
    wire        busy, done, ext_rvalid;
    wire [31:0] ext_rdata;

    // zeta boot-load
    reg        zload_we = 0;
    reg [8:0]  zload_addr = 0;
    reg [31:0] zload_data = 0;
    reg [31:0] zimg_e [0:255];
    reg [31:0] zimg_o [0:255];

    // 512-write boot-load of the paired zeta store (silicon-faithful:
    // same port the management core drives; rows 128..255 are the
    // NEGATED bank; images proven by golden/dilithium_zeta_sram.py)
    task load_zetas;
        integer zk, zrow;
        begin
            $readmemh("golden/test_vectors/zeta_even.hex", zimg_e);
            $readmemh("golden/test_vectors/zeta_odd.hex",  zimg_o);
            for (zk = 0; zk < 512; zk = zk + 1) begin
                @(negedge clk);
                zrow = ((zk >> 8) << 7) | ((zk & 255) >> 1);
                zload_we   <= 1;
                zload_addr <= zk[8:0];
                zload_data <= zk[0] ? zimg_o[zrow] : zimg_e[zrow];
            end
            @(negedge clk);
            zload_we <= 0;
        end
    endtask

    ntt_engine_256 dut (
        .clk(clk), .rst_n(rst_n),
        .start(start), .op(3'd0), .slot_a(2'd0), .slot_b(2'd0),
        .slot_c(2'd0), .mac_init(1'b0), .busy(busy), .done(done),
        .ext_we(ext_we), .ext_wslot(2'd0), .ext_waddr(ext_waddr),
        .ext_wdata(ext_wdata),
        .ext_re(ext_re), .ext_rslot(2'd0), .ext_raddr(ext_raddr),
                .ext_rdata(ext_rdata), .ext_rvalid(ext_rvalid),
        .zload_we(zload_we), .zload_addr(zload_addr), .zload_data(zload_data)
    );

    always #5 clk = ~clk;

    reg [31:0] vin  [0:NSETS*N-1];
    reg [31:0] vout [0:NSETS*N-1];

    integer s, i, errors, run_cycles;

    initial begin
        $readmemh("golden/test_vectors/ntt_in.hex",  vin);
        $readmemh("golden/test_vectors/ntt_out.hex", vout);

        errors = 0;
        rst_n = 0;
        repeat (4) @(posedge clk);
        rst_n = 1;
        $monitor("[%0t] rst_n=%b start=%b busy=%b done=%b", $time, rst_n, start, busy, done);
        load_zetas;
        @(posedge clk);

        for (s = 0; s < NSETS; s = s + 1) begin
            // ---- load ----
            for (i = 0; i < N; i = i + 1) begin
                @(negedge clk);
                ext_we    <= 1;
                ext_waddr <= i[7:0];
                ext_wdata <= vin[s*N + i];
            end
            @(negedge clk);
            ext_we <= 0;

            // ---- run ----
            @(negedge clk); start <= 1;
            @(negedge clk); start <= 0;
            run_cycles = 0;
            while (!busy) @(posedge clk);   // wait for engine to acknowledge start (gate-level safe)
            while (!done) begin
                @(posedge clk);
                run_cycles = run_cycles + 1;
                if (run_cycles > 10000) begin
                    $display("FAIL: engine hang on set %0d", s);
                    $finish;
                end
            end

            // ---- read back ----
            for (i = 0; i < N; i = i + 1) begin
                @(negedge clk);
                ext_re    <= 1;
                ext_raddr <= i[7:0];
                @(posedge clk);
                #1;
                // rvalid/data land one cycle after issue; sample next edge
                @(posedge clk);
                #1;
                ext_re <= 0;
                if (!ext_rvalid) begin
                    $display("FAIL: no rvalid, set %0d addr %0d", s, i);
                    errors = errors + 1;
                end else if ($signed(ext_rdata) !== $signed(vout[s*N + i])) begin
                    errors = errors + 1;
                    if (errors <= 10)
                        $display("MISMATCH set %0d addr %0d: got %0d want %0d",
                                 s, i, $signed(ext_rdata),
                                 $signed(vout[s*N + i]));
                end
            end
            $display("set %0d complete: %0d run cycles, %0d errors so far",
                     s, run_cycles, errors);
        end

        if (errors == 0)
            $display("PASS: tb_ntt_engine_256 (%0d sets x %0d points)", NSETS, N);
        else
            $display("FAIL: tb_ntt_engine_256 (%0d errors)", errors);
        $finish;
    end

    initial begin
        #50_000_000;
        $display("FAIL: timeout");
        $finish;
    end

endmodule
