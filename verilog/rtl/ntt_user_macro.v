// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module ntt_user_macro (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        wb_clk_i,
    input  wire        wb_rst_i,
    input  wire        wbs_stb_i,
    input  wire        wbs_cyc_i,
    input  wire        wbs_we_i,
    input  wire [3:0]  wbs_sel_i,
    input  wire [31:0] wbs_dat_i,
    input  wire [31:0] wbs_adr_i,
    output reg         wbs_ack_o,
    output reg  [31:0] wbs_dat_o,
    output wire        busy_o,
    output wire        done_o,
    output wire [2:0]  irq
);
    localparam [15:0] REG_CONTROL = 16'h0000;
    localparam [15:0] REG_SLOTS   = 16'h0004;
    localparam [15:0] REG_STATUS  = 16'h0008;
    localparam [15:0] REG_IRQ     = 16'h000c;

    wire bus_valid = wbs_cyc_i && wbs_stb_i;
    wire selected  = (wbs_adr_i[31:16] == 16'h3000);
    wire [15:0] offset = wbs_adr_i[15:0];
    wire coefficient_window = (offset >= 16'h1000) && (offset < 16'h2000);
    wire zeta_window = (offset >= 16'h2000) && (offset < 16'h2800);

    reg [2:0] op_reg;
    reg [1:0] slot_a_reg;
    reg [1:0] slot_b_reg;
    reg [1:0] slot_c_reg;
    reg       mac_init_reg;
    reg       irq_enable;
    reg       done_pending;
    reg       done_q;
    reg       request_seen;
    reg       memory_read_pending;

    reg        start;
    reg         mem_we;
    reg         mem_re;
    reg         mem_target;
    reg  [1:0]  mem_slot;
    reg  [8:0]  mem_addr;
    reg  [31:0] mem_wdata;
    wire [31:0] mem_rdata;
    wire        mem_rvalid;
    wire        engine_busy;
    wire        engine_done;

    assign busy_o = engine_busy;
    assign done_o = done_pending;
    assign irq = {2'b00, done_pending && irq_enable};

    always @(posedge wb_clk_i) begin
        if (wb_rst_i) begin
            wbs_ack_o <= 1'b0;
            wbs_dat_o <= 32'd0;
            op_reg <= 3'd0;
            slot_a_reg <= 2'd0;
            slot_b_reg <= 2'd1;
            slot_c_reg <= 2'd2;
            mac_init_reg <= 1'b0;
            irq_enable <= 1'b0;
            done_pending <= 1'b0;
            done_q <= 1'b0;
            request_seen <= 1'b0;
            memory_read_pending <= 1'b0;
            start <= 1'b0;
            mem_we <= 1'b0;
            mem_re <= 1'b0;
            mem_target <= 1'b0;
            mem_slot <= 2'd0;
            mem_addr <= 9'd0;
            mem_wdata <= 32'd0;
        end else begin
            wbs_ack_o <= 1'b0;
            start <= 1'b0;
            mem_we <= 1'b0;
            mem_re <= 1'b0;
            done_q <= engine_done;

            if (engine_done && !done_q)
                done_pending <= 1'b1;

            if (!bus_valid)
                request_seen <= 1'b0;

            if (memory_read_pending && mem_rvalid) begin
                wbs_dat_o <= mem_rdata;
                wbs_ack_o <= 1'b1;
                memory_read_pending <= 1'b0;
            end else if (bus_valid && !request_seen) begin
                request_seen <= 1'b1;

                if (!selected) begin
                    wbs_dat_o <= 32'hbad0_0000;
                    wbs_ack_o <= 1'b1;
                end else if (coefficient_window) begin
                    if (engine_busy) begin
                        wbs_dat_o <= 32'hbad0_b057;
                        wbs_ack_o <= 1'b1;
                    end else if (wbs_we_i) begin
                        if (wbs_sel_i == 4'hf) begin
                            mem_we <= 1'b1;
                            mem_target <= 1'b0;
                            mem_slot <= offset[11:10];
                            mem_addr <= {1'b0, offset[9:2]};
                            mem_wdata <= wbs_dat_i;
                            wbs_dat_o <= 32'd0;
                        end else begin
                            wbs_dat_o <= 32'hbad0_05e1;
                        end
                        wbs_ack_o <= 1'b1;
                    end else begin
                        mem_re <= 1'b1;
                        mem_target <= 1'b0;
                        mem_slot <= offset[11:10];
                        mem_addr <= {1'b0, offset[9:2]};
                        memory_read_pending <= 1'b1;
                    end
                end else if (zeta_window) begin
                    if (wbs_we_i && !engine_busy && (wbs_sel_i == 4'hf)) begin
                        mem_we <= 1'b1;
                        mem_target <= 1'b1;
                        mem_slot <= 2'd0;
                        mem_addr <= offset[10:2];
                        mem_wdata <= wbs_dat_i;
                        wbs_dat_o <= 32'd0;
                    end else if (engine_busy) begin
                        wbs_dat_o <= 32'hbad0_b057;
                    end else begin
                        wbs_dat_o <= 32'hbad0_2e7a;
                    end
                    wbs_ack_o <= 1'b1;
                end else begin
                    case (offset)
                        REG_CONTROL: begin
                            if (wbs_we_i) begin
                                if (wbs_sel_i[0]) begin
                                    op_reg <= wbs_dat_i[3:1];
                                    mac_init_reg <= wbs_dat_i[4];
                                    if (wbs_dat_i[0] && !engine_busy) begin
                                        start <= 1'b1;
                                        done_pending <= 1'b0;
                                    end
                                end
                            end
                            wbs_dat_o <= {27'd0, mac_init_reg, op_reg, 1'b0};
                            wbs_ack_o <= 1'b1;
                        end
                        REG_SLOTS: begin
                            if (wbs_we_i) begin
                                if (wbs_sel_i[0]) begin
                                    slot_a_reg <= wbs_dat_i[1:0];
                                    slot_b_reg <= wbs_dat_i[3:2];
                                    slot_c_reg <= wbs_dat_i[5:4];
                                end
                            end
                            wbs_dat_o <= {26'd0, slot_c_reg, slot_b_reg, slot_a_reg};
                            wbs_ack_o <= 1'b1;
                        end
                        REG_STATUS: begin
                            wbs_dat_o <= {30'd0, done_pending, engine_busy};
                            wbs_ack_o <= 1'b1;
                        end
                        REG_IRQ: begin
                            if (wbs_we_i && wbs_sel_i[0]) begin
                                irq_enable <= wbs_dat_i[0];
                                if (wbs_dat_i[1]) done_pending <= 1'b0;
                            end
                            wbs_dat_o <= {30'd0, done_pending, irq_enable};
                            wbs_ack_o <= 1'b1;
                        end
                        default: begin
                            wbs_dat_o <= 32'hbad0_add2;
                            wbs_ack_o <= 1'b1;
                        end
                    endcase
                end
            end
        end
    end

    ntt_engine_256 u_engine (
`ifdef USE_POWER_PINS
        .vccd1(vccd1),
        .vssd1(vssd1),
`endif
        .clk(wb_clk_i),
        .rst_n(!wb_rst_i),
        .start(start),
        .op(op_reg),
        .slot_a(slot_a_reg),
        .slot_b(slot_b_reg),
        .slot_c(slot_c_reg),
        .mac_init(mac_init_reg),
        .busy(engine_busy),
        .done(engine_done),
        .mem_we(mem_we),
        .mem_re(mem_re),
        .mem_target(mem_target),
        .mem_slot(mem_slot),
        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_rdata(mem_rdata),
        .mem_rvalid(mem_rvalid)
    );
endmodule

`default_nettype wire
