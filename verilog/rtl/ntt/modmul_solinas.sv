
`default_nettype none

module modmul_solinas (
    input  wire               clk,
    input  wire               rst_n,
    input  wire               in_valid,
    input  wire signed [31:0] a,      
    input  wire signed [31:0] b,      
    output wire               out_valid,
    output wire signed [31:0] p      
);
    localparam LAT = 6;
    localparam signed [31:0] QINV = 32'sd58728449;

    reg signed [31:0] a_r, b_r;
    always @(posedge clk) begin
        a_r <= a;
        b_r <= b;
    end

    wire signed [16:0] b_lo = {1'b0, b_r[15:0]}; 
    wire signed [15:0] b_hi = b_r[31:16];        
    reg signed [48:0] p0_s0;                     
    reg signed [47:0] p1_s0;                     
    always @(posedge clk) begin
        p0_s0 <= a_r * b_lo;
        p1_s0 <= a_r * b_hi;
    end

    reg signed [63:0] t_s1;
    always @(posedge clk) begin
        t_s1 <= {{15{p0_s0[48]}}, p0_s0} + ({{16{p1_s0[47]}}, p1_s0} <<< 16);
    end

    wire [31:0] tl = t_s1[31:0];
    reg  [31:0] m_s2;
    reg signed [63:0] t_s2;
    always @(posedge clk) begin
        m_s2 <= tl + (tl << 13) + (tl << 23) + (tl << 24) + (tl << 25);
        t_s2 <= t_s1;
    end

    wire signed [63:0] m_sx = {{32{m_s2[31]}}, m_s2};
    reg signed [63:0] mq_s3;
    reg signed [63:0] t_s3;
    always @(posedge clk) begin
        mq_s3 <= (m_sx <<< 23) - (m_sx <<< 13) + m_sx;
        t_s3  <= t_s2;
    end

    wire signed [63:0] diff = t_s3 - mq_s3;   
    reg signed [31:0] p_s4;
    always @(posedge clk) begin
        p_s4 <= diff[63:32];                  
    end

    reg [LAT-1:0] vpipe;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) vpipe <= {LAT{1'b0}};
        else        vpipe <= {vpipe[LAT-2:0], in_valid};
    end

    assign p         = p_s4;
    assign out_valid = vpipe[LAT-1];
`ifdef ANT_DIODES
    (* keep *) sky130_fd_sc_hd__diode_2 ant_a_16     (.DIODE(a[16]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_a_30     (.DIODE(a[30]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_b_lo_15  (.DIODE(b_lo[15]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_p0s0_47  (.DIODE(p0_s0[47]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_ts1_40   (.DIODE(t_s1[40]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_ts3_45   (.DIODE(t_s3[45]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_ts3_52   (.DIODE(t_s3[52]));
    (* keep *) sky130_fd_sc_hd__diode_2 ant_ts3_55   (.DIODE(t_s3[55]));
`endif

endmodule

`default_nettype wire
