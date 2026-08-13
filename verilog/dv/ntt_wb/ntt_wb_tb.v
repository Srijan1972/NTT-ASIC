`timescale 1ns/1ps

module ntt_wb_tb;
    reg         clk = 1'b0;
    reg         rst = 1'b1;
    reg         stb = 1'b0;
    reg         cyc = 1'b0;
    reg         we  = 1'b0;
    reg  [3:0]  sel = 4'hf;
    reg  [31:0] dat_i = 32'b0;
    reg  [31:0] adr = 32'b0;
    wire        ack;
    wire [31:0] dat_o;
    wire        busy;
    wire        done;
    wire        ext_rvalid;

    always #5 clk = ~clk;

    ntt dut (
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
        .ext_rvalid_o(ext_rvalid)
    );

    task wb_write;
        input [7:0] offset;
        input [31:0] value;
        begin
            @(negedge clk);
            adr = {24'b0, offset};
            dat_i = value;
            we = 1'b1;
            cyc = 1'b1;
            stb = 1'b1;
            while (!ack) @(negedge clk);
            cyc = 1'b0;
            stb = 1'b0;
            we = 1'b0;
        end
    endtask

    task wb_read;
        input [7:0] offset;
        output [31:0] value;
        begin
            @(negedge clk);
            adr = {24'b0, offset};
            we = 1'b0;
            cyc = 1'b1;
            stb = 1'b1;
            while (!ack) @(negedge clk);
            value = dat_o;
            cyc = 1'b0;
            stb = 1'b0;
        end
    endtask

    reg [31:0] rd;
    integer timeout;
    localparam [7:0] TEST_ADDR = 8'h2a;

    initial begin
        repeat (4) @(posedge clk);
        rst = 1'b0;

        // Program a coefficient data word, then pulse the write command for
        // slot 2/address 0x2a.
        wb_write(8'h0c, 32'hdead_beef);
        wb_write(8'h04, {21'b0, TEST_ADDR, 2'd2, 1'b1});

        // Request the same coefficient and check its dedicated read-data
        // register.  ext_rvalid proves that the SRAM read completed.
        wb_write(8'h08, {21'b0, TEST_ADDR, 2'd2, 1'b1});
        timeout = 0;
        while (!ext_rvalid && timeout < 10) begin
            @(posedge clk);
            timeout = timeout + 1;
        end
        if (!ext_rvalid) $fatal(1, "external read did not become valid");
        wb_read(8'h1c, rd);
        if (rd !== 32'hdead_beef)
            $fatal(1, "external read mismatch: %08x", rd);

        // Start a COPY operation (slot 2 -> slot 1) and ensure both busy and
        // completion status traverse the Wishbone bridge.
        wb_write(8'h00, {21'b0, 1'b0, 2'd1, 2'd0, 2'd2, 3'd1, 1'b1});
        timeout = 0;
        while (!busy && timeout < 10) begin
            @(posedge clk);
            timeout = timeout + 1;
        end
        if (!busy) $fatal(1, "engine did not start");

        timeout = 0;
        while (!done && timeout < 200) begin
            @(posedge clk);
            timeout = timeout + 1;
        end
        if (!done) $fatal(1, "engine did not complete");

        wb_read(8'h18, rd);
        if (rd[2:0] !== 3'b010)
            $fatal(1, "unexpected status word: %08x", rd);

        $display("PASS: Wishbone register bridge and coefficient access");
        $finish;
    end
endmodule
