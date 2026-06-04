set moduleName ntt_kernel_Pipeline_WRITE_BACK_LOOP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {ntt_kernel_Pipeline_WRITE_BACK_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 32 regular {axi_master 1}  }
	{ n int 32 regular  }
	{ sext_ln170 int 62 regular  }
	{ ping int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_1 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_2 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_3 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_4 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_5 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_6 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ ping_7 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_1 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_2 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_3 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_4 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_5 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_6 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ pong_7 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ use_ping_as_input int 1 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln170", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "ping", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pong_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "use_ping_as_input", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 103
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ n sc_in sc_lv 32 signal 1 } 
	{ sext_ln170 sc_in sc_lv 62 signal 2 } 
	{ ping_address0 sc_out sc_lv 9 signal 3 } 
	{ ping_ce0 sc_out sc_logic 1 signal 3 } 
	{ ping_q0 sc_in sc_lv 32 signal 3 } 
	{ ping_1_address0 sc_out sc_lv 9 signal 4 } 
	{ ping_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ ping_1_q0 sc_in sc_lv 32 signal 4 } 
	{ ping_2_address0 sc_out sc_lv 9 signal 5 } 
	{ ping_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ ping_2_q0 sc_in sc_lv 32 signal 5 } 
	{ ping_3_address0 sc_out sc_lv 9 signal 6 } 
	{ ping_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ ping_3_q0 sc_in sc_lv 32 signal 6 } 
	{ ping_4_address0 sc_out sc_lv 9 signal 7 } 
	{ ping_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ ping_4_q0 sc_in sc_lv 32 signal 7 } 
	{ ping_5_address0 sc_out sc_lv 9 signal 8 } 
	{ ping_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ ping_5_q0 sc_in sc_lv 32 signal 8 } 
	{ ping_6_address0 sc_out sc_lv 9 signal 9 } 
	{ ping_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ ping_6_q0 sc_in sc_lv 32 signal 9 } 
	{ ping_7_address0 sc_out sc_lv 9 signal 10 } 
	{ ping_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ ping_7_q0 sc_in sc_lv 32 signal 10 } 
	{ pong_address0 sc_out sc_lv 9 signal 11 } 
	{ pong_ce0 sc_out sc_logic 1 signal 11 } 
	{ pong_q0 sc_in sc_lv 32 signal 11 } 
	{ pong_1_address0 sc_out sc_lv 9 signal 12 } 
	{ pong_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ pong_1_q0 sc_in sc_lv 32 signal 12 } 
	{ pong_2_address0 sc_out sc_lv 9 signal 13 } 
	{ pong_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ pong_2_q0 sc_in sc_lv 32 signal 13 } 
	{ pong_3_address0 sc_out sc_lv 9 signal 14 } 
	{ pong_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ pong_3_q0 sc_in sc_lv 32 signal 14 } 
	{ pong_4_address0 sc_out sc_lv 9 signal 15 } 
	{ pong_4_ce0 sc_out sc_logic 1 signal 15 } 
	{ pong_4_q0 sc_in sc_lv 32 signal 15 } 
	{ pong_5_address0 sc_out sc_lv 9 signal 16 } 
	{ pong_5_ce0 sc_out sc_logic 1 signal 16 } 
	{ pong_5_q0 sc_in sc_lv 32 signal 16 } 
	{ pong_6_address0 sc_out sc_lv 9 signal 17 } 
	{ pong_6_ce0 sc_out sc_logic 1 signal 17 } 
	{ pong_6_q0 sc_in sc_lv 32 signal 17 } 
	{ pong_7_address0 sc_out sc_lv 9 signal 18 } 
	{ pong_7_ce0 sc_out sc_logic 1 signal 18 } 
	{ pong_7_q0 sc_in sc_lv 32 signal 18 } 
	{ use_ping_as_input sc_in sc_lv 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "sext_ln170", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln170", "role": "default" }} , 
 	{ "name": "ping_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping", "role": "address0" }} , 
 	{ "name": "ping_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "ce0" }} , 
 	{ "name": "ping_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "q0" }} , 
 	{ "name": "ping_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_1", "role": "address0" }} , 
 	{ "name": "ping_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_1", "role": "ce0" }} , 
 	{ "name": "ping_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_1", "role": "q0" }} , 
 	{ "name": "ping_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_2", "role": "address0" }} , 
 	{ "name": "ping_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_2", "role": "ce0" }} , 
 	{ "name": "ping_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_2", "role": "q0" }} , 
 	{ "name": "ping_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_3", "role": "address0" }} , 
 	{ "name": "ping_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_3", "role": "ce0" }} , 
 	{ "name": "ping_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_3", "role": "q0" }} , 
 	{ "name": "ping_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_4", "role": "address0" }} , 
 	{ "name": "ping_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_4", "role": "ce0" }} , 
 	{ "name": "ping_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_4", "role": "q0" }} , 
 	{ "name": "ping_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_5", "role": "address0" }} , 
 	{ "name": "ping_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_5", "role": "ce0" }} , 
 	{ "name": "ping_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_5", "role": "q0" }} , 
 	{ "name": "ping_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_6", "role": "address0" }} , 
 	{ "name": "ping_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_6", "role": "ce0" }} , 
 	{ "name": "ping_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_6", "role": "q0" }} , 
 	{ "name": "ping_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_7", "role": "address0" }} , 
 	{ "name": "ping_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_7", "role": "ce0" }} , 
 	{ "name": "ping_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_7", "role": "q0" }} , 
 	{ "name": "pong_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong", "role": "address0" }} , 
 	{ "name": "pong_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "ce0" }} , 
 	{ "name": "pong_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "q0" }} , 
 	{ "name": "pong_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_1", "role": "address0" }} , 
 	{ "name": "pong_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_1", "role": "ce0" }} , 
 	{ "name": "pong_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_1", "role": "q0" }} , 
 	{ "name": "pong_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_2", "role": "address0" }} , 
 	{ "name": "pong_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_2", "role": "ce0" }} , 
 	{ "name": "pong_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_2", "role": "q0" }} , 
 	{ "name": "pong_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_3", "role": "address0" }} , 
 	{ "name": "pong_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_3", "role": "ce0" }} , 
 	{ "name": "pong_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_3", "role": "q0" }} , 
 	{ "name": "pong_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_4", "role": "address0" }} , 
 	{ "name": "pong_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_4", "role": "ce0" }} , 
 	{ "name": "pong_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_4", "role": "q0" }} , 
 	{ "name": "pong_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_5", "role": "address0" }} , 
 	{ "name": "pong_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_5", "role": "ce0" }} , 
 	{ "name": "pong_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_5", "role": "q0" }} , 
 	{ "name": "pong_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_6", "role": "address0" }} , 
 	{ "name": "pong_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_6", "role": "ce0" }} , 
 	{ "name": "pong_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_6", "role": "q0" }} , 
 	{ "name": "pong_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_7", "role": "address0" }} , 
 	{ "name": "pong_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_7", "role": "ce0" }} , 
 	{ "name": "pong_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_7", "role": "q0" }} , 
 	{ "name": "use_ping_as_input", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "use_ping_as_input", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "ntt_kernel_Pipeline_WRITE_BACK_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln170", "Type" : "None", "Direction" : "I"},
			{"Name" : "ping", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pong_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "use_ping_as_input", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "WRITE_BACK_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U87", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U88", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt_kernel_Pipeline_WRITE_BACK_LOOP {
		gmem0 {Type O LastRead -1 FirstWrite 2}
		n {Type I LastRead 0 FirstWrite -1}
		sext_ln170 {Type I LastRead 0 FirstWrite -1}
		ping {Type I LastRead 0 FirstWrite -1}
		ping_1 {Type I LastRead 0 FirstWrite -1}
		ping_2 {Type I LastRead 0 FirstWrite -1}
		ping_3 {Type I LastRead 0 FirstWrite -1}
		ping_4 {Type I LastRead 0 FirstWrite -1}
		ping_5 {Type I LastRead 0 FirstWrite -1}
		ping_6 {Type I LastRead 0 FirstWrite -1}
		ping_7 {Type I LastRead 0 FirstWrite -1}
		pong {Type I LastRead 0 FirstWrite -1}
		pong_1 {Type I LastRead 0 FirstWrite -1}
		pong_2 {Type I LastRead 0 FirstWrite -1}
		pong_3 {Type I LastRead 0 FirstWrite -1}
		pong_4 {Type I LastRead 0 FirstWrite -1}
		pong_5 {Type I LastRead 0 FirstWrite -1}
		pong_6 {Type I LastRead 0 FirstWrite -1}
		pong_7 {Type I LastRead 0 FirstWrite -1}
		use_ping_as_input {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "259", "Max" : "4099"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	n { ap_none {  { n in_data 0 32 } } }
	sext_ln170 { ap_none {  { sext_ln170 in_data 0 62 } } }
	ping { ap_memory {  { ping_address0 mem_address 1 9 }  { ping_ce0 mem_ce 1 1 }  { ping_q0 in_data 0 32 } } }
	ping_1 { ap_memory {  { ping_1_address0 mem_address 1 9 }  { ping_1_ce0 mem_ce 1 1 }  { ping_1_q0 in_data 0 32 } } }
	ping_2 { ap_memory {  { ping_2_address0 mem_address 1 9 }  { ping_2_ce0 mem_ce 1 1 }  { ping_2_q0 in_data 0 32 } } }
	ping_3 { ap_memory {  { ping_3_address0 mem_address 1 9 }  { ping_3_ce0 mem_ce 1 1 }  { ping_3_q0 in_data 0 32 } } }
	ping_4 { ap_memory {  { ping_4_address0 mem_address 1 9 }  { ping_4_ce0 mem_ce 1 1 }  { ping_4_q0 in_data 0 32 } } }
	ping_5 { ap_memory {  { ping_5_address0 mem_address 1 9 }  { ping_5_ce0 mem_ce 1 1 }  { ping_5_q0 in_data 0 32 } } }
	ping_6 { ap_memory {  { ping_6_address0 mem_address 1 9 }  { ping_6_ce0 mem_ce 1 1 }  { ping_6_q0 in_data 0 32 } } }
	ping_7 { ap_memory {  { ping_7_address0 mem_address 1 9 }  { ping_7_ce0 mem_ce 1 1 }  { ping_7_q0 in_data 0 32 } } }
	pong { ap_memory {  { pong_address0 mem_address 1 9 }  { pong_ce0 mem_ce 1 1 }  { pong_q0 in_data 0 32 } } }
	pong_1 { ap_memory {  { pong_1_address0 mem_address 1 9 }  { pong_1_ce0 mem_ce 1 1 }  { pong_1_q0 in_data 0 32 } } }
	pong_2 { ap_memory {  { pong_2_address0 mem_address 1 9 }  { pong_2_ce0 mem_ce 1 1 }  { pong_2_q0 in_data 0 32 } } }
	pong_3 { ap_memory {  { pong_3_address0 mem_address 1 9 }  { pong_3_ce0 mem_ce 1 1 }  { pong_3_q0 in_data 0 32 } } }
	pong_4 { ap_memory {  { pong_4_address0 mem_address 1 9 }  { pong_4_ce0 mem_ce 1 1 }  { pong_4_q0 in_data 0 32 } } }
	pong_5 { ap_memory {  { pong_5_address0 mem_address 1 9 }  { pong_5_ce0 mem_ce 1 1 }  { pong_5_q0 in_data 0 32 } } }
	pong_6 { ap_memory {  { pong_6_address0 mem_address 1 9 }  { pong_6_ce0 mem_ce 1 1 }  { pong_6_q0 in_data 0 32 } } }
	pong_7 { ap_memory {  { pong_7_address0 mem_address 1 9 }  { pong_7_ce0 mem_ce 1 1 }  { pong_7_q0 in_data 0 32 } } }
	use_ping_as_input { ap_none {  { use_ping_as_input in_data 0 1 } } }
}
