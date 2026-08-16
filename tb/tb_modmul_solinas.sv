// ============================================================================
//  tb_modmul_solinas.sv -- streams golden vectors through modmul_solinas.
//
//  Vectors from golden/gen_modmul_vectors.py (two's-complement hex):
//    modmul_a.hex, modmul_b.hex, modmul_out.hex
//
//  Drives one new operand pair every cycle (II=1) with no gaps, plus a
//  second pass with randomized valid gaps to catch pipeline-valid bugs.
//  Comparison is exact 32-bit signed equality against the reference, not
//  mod-q equivalence, so any deviation from REDUCE32 semantics fails.
// ============================================================================
`timescale 1ns/1ps

module tb_modmul_solinas;

    localparam int NVEC = 4096;
    localparam int LAT  = 4;

    reg  clk = 0;
    reg  rst_n = 0;
    reg  in_valid = 0;
    reg  signed [31:0] a = 0, b = 0;
    wire out_valid;
    wire signed [31:0] p;

    modmul_solinas dut (
        .clk(clk), .rst_n(rst_n), .in_valid(in_valid),
        .a(a), .b(b), .out_valid(out_valid), .p(p)
    );

    always #5 clk = ~clk;   // 100 MHz

    reg [31:0] vec_a   [0:NVEC-1];
    reg [31:0] vec_b   [0:NVEC-1];
    reg [31:0] vec_out [0:NVEC-1];

    integer send_idx, recv_idx, errors, pass_num;
    reg gapped;

    initial begin
        $readmemh("golden/test_vectors/modmul_a.hex",   vec_a);
        $readmemh("golden/test_vectors/modmul_b.hex",   vec_b);
        $readmemh("golden/test_vectors/modmul_out.hex", vec_out);

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
                // driver
                begin
                    while (send_idx < NVEC) begin
                        @(negedge clk);
                        if (!gapped || ($random % 4 != 0)) begin
                            in_valid <= 1;
                            a <= vec_a[send_idx];
                            b <= vec_b[send_idx];
                            send_idx = send_idx + 1;
                        end else begin
                            in_valid <= 0;
                        end
                    end
                    @(negedge clk);
                    in_valid <= 0;
                end
                // checker
                begin
                    while (recv_idx < NVEC) begin
                        @(posedge clk);
                        #1;
                        if (out_valid) begin
                            if (p !== $signed(vec_out[recv_idx])) begin
                                errors = errors + 1;
                                if (errors <= 10)
                                    $display("MISMATCH pass %0d idx %0d: a=%0d b=%0d got=%0d want=%0d",
                                             pass_num, recv_idx,
                                             $signed(vec_a[recv_idx]),
                                             $signed(vec_b[recv_idx]),
                                             p, $signed(vec_out[recv_idx]));
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

        if (errors == 0) $display("PASS: tb_modmul_solinas (%0d vectors x 2 passes)", NVEC);
        else             $display("FAIL: tb_modmul_solinas (%0d errors)", errors);
        $finish;
    end

    initial begin
        #10_000_000;
        $display("FAIL: timeout");
        $finish;
    end

endmodule
