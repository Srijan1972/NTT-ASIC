// ============================================================================
//  tb_ntt_butterfly_ct.sv -- streams golden butterfly vectors, II=1 plus a
//  gapped pass. Exact 32-bit signed comparison on both outputs.
// ============================================================================
`timescale 1ns/1ps

module tb_ntt_butterfly_ct;

    localparam int NVEC = 4096;
    localparam int LAT  = 5;

    reg  clk = 0;
    reg  rst_n = 0;
    reg  in_valid = 0;
    reg  signed [31:0] a = 0, b = 0, zeta = 0;
    wire out_valid;
    wire signed [31:0] out_a, out_b;

    ntt_butterfly_ct dut (
        .clk(clk), .rst_n(rst_n), .in_valid(in_valid), .mode(1'b0),
        .a(a), .b(b), .zeta(zeta),
        .out_valid(out_valid), .out_a(out_a), .out_b(out_b)
    );

    always #5 clk = ~clk;

    reg [31:0] va   [0:NVEC-1];
    reg [31:0] vb   [0:NVEC-1];
    reg [31:0] vz   [0:NVEC-1];
    reg [31:0] voa  [0:NVEC-1];
    reg [31:0] vob  [0:NVEC-1];

    integer send_idx, recv_idx, errors, pass_num;
    reg gapped;

    initial begin
        $readmemh("golden/test_vectors/bfly_a.hex",     va);
        $readmemh("golden/test_vectors/bfly_b.hex",     vb);
        $readmemh("golden/test_vectors/bfly_zeta.hex",  vz);
        $readmemh("golden/test_vectors/bfly_out_a.hex", voa);
        $readmemh("golden/test_vectors/bfly_out_b.hex", vob);

        errors = 0;
        rst_n = 0;
        repeat (4) @(posedge clk);
        rst_n = 1;
        @(posedge clk);

        for (pass_num = 0; pass_num < 2; pass_num = pass_num + 1) begin
            gapped = pass_num[0];
            send_idx = 0;
            recv_idx = 0;
            fork
                begin
                    while (send_idx < NVEC) begin
                        @(negedge clk);
                        if (!gapped || ($random % 4 != 0)) begin
                            in_valid <= 1;
                            a    <= va[send_idx];
                            b    <= vb[send_idx];
                            zeta <= vz[send_idx];
                            send_idx = send_idx + 1;
                        end else begin
                            in_valid <= 0;
                        end
                    end
                    @(negedge clk);
                    in_valid <= 0;
                end
                begin
                    while (recv_idx < NVEC) begin
                        @(posedge clk);
                        #1;
                        if (out_valid) begin
                            if (out_a !== $signed(voa[recv_idx]) ||
                                out_b !== $signed(vob[recv_idx])) begin
                                errors = errors + 1;
                                if (errors <= 10)
                                    $display("MISMATCH pass %0d idx %0d: a=%0d b=%0d z=%0d got=(%0d,%0d) want=(%0d,%0d)",
                                             pass_num, recv_idx,
                                             $signed(va[recv_idx]), $signed(vb[recv_idx]), $signed(vz[recv_idx]),
                                             out_a, out_b,
                                             $signed(voa[recv_idx]), $signed(vob[recv_idx]));
                            end
                            recv_idx = recv_idx + 1;
                        end
                    end
                end
            join
            $display("pass %0d (%s) complete: %0d vectors, %0d errors so far",
                     pass_num, gapped ? "gapped" : "back-to-back", NVEC, errors);
            repeat (LAT + 2) @(posedge clk);
        end

        if (errors == 0) $display("PASS: tb_ntt_butterfly_ct (%0d vectors x 2 passes)", NVEC);
        else             $display("FAIL: tb_ntt_butterfly_ct (%0d errors)", errors);
        $finish;
    end

    initial begin
        #10_000_000;
        $display("FAIL: timeout");
        $finish;
    end

endmodule
