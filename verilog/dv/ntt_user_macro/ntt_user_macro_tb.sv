`timescale 1ns/1ps

module ntt_user_macro_tb;
    reg clk = 1'b0;
    reg rst = 1'b1;
    reg stb = 1'b0;
    reg cyc = 1'b0;
    reg we = 1'b0;
    reg [3:0] sel = 4'h0;
    reg [31:0] dat_i = 32'd0;
    reg [31:0] adr = 32'd0;
    wire ack;
    wire [31:0] dat_o;
    wire busy;
    wire done;
    wire [2:0] irq;
    reg [31:0] read_value;
    integer cycles;

    always #5 clk = !clk;

    ntt_user_macro dut (
        .wb_clk_i(clk),
        .wb_rst_i(rst),
        .wbs_stb_i(stb),
        .wbs_cyc_i(cyc),
        .wbs_we_i(we),
        .wbs_sel_i(sel),
        .wbs_dat_i(dat_i),
        .wbs_adr_i(adr),
        .wbs_ack_o(ack),
        .wbs_dat_o(dat_o),
        .busy_o(busy),
        .done_o(done),
        .irq(irq)
    );

    task automatic wb_write(input [31:0] address, input [31:0] data);
        begin
            @(negedge clk);
            adr = address;
            dat_i = data;
            sel = 4'hf;
            we = 1'b1;
            stb = 1'b1;
            cyc = 1'b1;
            cycles = 0;
            while (!ack && cycles < 20) begin
                @(negedge clk);
                cycles = cycles + 1;
            end
            if (!ack) $fatal(1, "Wishbone write timeout at %08x", address);
            stb = 1'b0;
            cyc = 1'b0;
            we = 1'b0;
            @(negedge clk);
        end
    endtask

    task automatic wb_read(input [31:0] address, output [31:0] data);
        begin
            @(negedge clk);
            adr = address;
            sel = 4'hf;
            we = 1'b0;
            stb = 1'b1;
            cyc = 1'b1;
            cycles = 0;
            while (!ack && cycles < 20) begin
                @(negedge clk);
                cycles = cycles + 1;
            end
            if (!ack) $fatal(1, "Wishbone read timeout at %08x", address);
            data = dat_o;
            stb = 1'b0;
            cyc = 1'b0;
            @(negedge clk);
        end
    endtask

    initial begin
        repeat (5) @(negedge clk);
        rst = 1'b0;
        repeat (2) @(negedge clk);

        wb_write(32'h3000_1000, 32'hdead_beef);
        wb_read(32'h3000_1000, read_value);
        if (read_value !== 32'hdead_beef)
            $fatal(1, "Coefficient readback mismatch: %08x", read_value);

        wb_write(32'h3000_0004, 32'h0000_0014);
        wb_write(32'h3000_0000, 32'h0000_0003);
        cycles = 0;
        while (!done && cycles < 200) begin
            @(negedge clk);
            cycles = cycles + 1;
        end
        if (!done) $fatal(1, "COPY operation did not complete");

        wb_read(32'h3000_1400, read_value);
        if (read_value !== 32'hdead_beef)
            $fatal(1, "COPY result mismatch: %08x", read_value);

        wb_write(32'h3000_2000, 32'h0000_0123);
        wb_read(32'h3000_0008, read_value);
        if (read_value[1:0] !== 2'b10)
            $fatal(1, "Unexpected final status: %08x", read_value);

        $display("PASS: Wishbone bridge, SRAM readback, and COPY operation");
        $finish;
    end
endmodule
