set moduleName fwd_all_Pipeline_FW_WR
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
set C_modelName {fwd_all_Pipeline_FW_WR}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_1 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_1 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_2 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_2 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_3 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_3 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_4 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_4 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_5 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_5 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_6 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_6 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_7 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_7 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_8 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_8 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_9 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_9 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_10 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_10 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_11 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_11 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_12 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_12 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_13 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_13 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_14 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_14 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ A_15 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ B_15 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ sA1 int 192 regular {fifo 1 volatile }  }
	{ sB1 int 192 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_5", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_6", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_7", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_8", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_8", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_9", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_9", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_10", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_10", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_11", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_11", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_12", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_12", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_13", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_13", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_14", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_14", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "A_15", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "B_15", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sA1", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sB1", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 112
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sA1_din sc_out sc_lv 192 signal 32 } 
	{ sA1_num_data_valid sc_in sc_lv 6 signal 32 } 
	{ sA1_fifo_cap sc_in sc_lv 6 signal 32 } 
	{ sA1_full_n sc_in sc_logic 1 signal 32 } 
	{ sA1_write sc_out sc_logic 1 signal 32 } 
	{ sB1_din sc_out sc_lv 192 signal 33 } 
	{ sB1_num_data_valid sc_in sc_lv 6 signal 33 } 
	{ sB1_fifo_cap sc_in sc_lv 6 signal 33 } 
	{ sB1_full_n sc_in sc_logic 1 signal 33 } 
	{ sB1_write sc_out sc_logic 1 signal 33 } 
	{ A_address0 sc_out sc_lv 4 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 12 signal 0 } 
	{ B_address0 sc_out sc_lv 4 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_q0 sc_in sc_lv 12 signal 1 } 
	{ A_1_address0 sc_out sc_lv 4 signal 2 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_1_q0 sc_in sc_lv 12 signal 2 } 
	{ B_1_address0 sc_out sc_lv 4 signal 3 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_1_q0 sc_in sc_lv 12 signal 3 } 
	{ A_2_address0 sc_out sc_lv 4 signal 4 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_2_q0 sc_in sc_lv 12 signal 4 } 
	{ B_2_address0 sc_out sc_lv 4 signal 5 } 
	{ B_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ B_2_q0 sc_in sc_lv 12 signal 5 } 
	{ A_3_address0 sc_out sc_lv 4 signal 6 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ A_3_q0 sc_in sc_lv 12 signal 6 } 
	{ B_3_address0 sc_out sc_lv 4 signal 7 } 
	{ B_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ B_3_q0 sc_in sc_lv 12 signal 7 } 
	{ A_4_address0 sc_out sc_lv 4 signal 8 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ A_4_q0 sc_in sc_lv 12 signal 8 } 
	{ B_4_address0 sc_out sc_lv 4 signal 9 } 
	{ B_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ B_4_q0 sc_in sc_lv 12 signal 9 } 
	{ A_5_address0 sc_out sc_lv 4 signal 10 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ A_5_q0 sc_in sc_lv 12 signal 10 } 
	{ B_5_address0 sc_out sc_lv 4 signal 11 } 
	{ B_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ B_5_q0 sc_in sc_lv 12 signal 11 } 
	{ A_6_address0 sc_out sc_lv 4 signal 12 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 12 } 
	{ A_6_q0 sc_in sc_lv 12 signal 12 } 
	{ B_6_address0 sc_out sc_lv 4 signal 13 } 
	{ B_6_ce0 sc_out sc_logic 1 signal 13 } 
	{ B_6_q0 sc_in sc_lv 12 signal 13 } 
	{ A_7_address0 sc_out sc_lv 4 signal 14 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 14 } 
	{ A_7_q0 sc_in sc_lv 12 signal 14 } 
	{ B_7_address0 sc_out sc_lv 4 signal 15 } 
	{ B_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ B_7_q0 sc_in sc_lv 12 signal 15 } 
	{ A_8_address0 sc_out sc_lv 4 signal 16 } 
	{ A_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ A_8_q0 sc_in sc_lv 12 signal 16 } 
	{ B_8_address0 sc_out sc_lv 4 signal 17 } 
	{ B_8_ce0 sc_out sc_logic 1 signal 17 } 
	{ B_8_q0 sc_in sc_lv 12 signal 17 } 
	{ A_9_address0 sc_out sc_lv 4 signal 18 } 
	{ A_9_ce0 sc_out sc_logic 1 signal 18 } 
	{ A_9_q0 sc_in sc_lv 12 signal 18 } 
	{ B_9_address0 sc_out sc_lv 4 signal 19 } 
	{ B_9_ce0 sc_out sc_logic 1 signal 19 } 
	{ B_9_q0 sc_in sc_lv 12 signal 19 } 
	{ A_10_address0 sc_out sc_lv 4 signal 20 } 
	{ A_10_ce0 sc_out sc_logic 1 signal 20 } 
	{ A_10_q0 sc_in sc_lv 12 signal 20 } 
	{ B_10_address0 sc_out sc_lv 4 signal 21 } 
	{ B_10_ce0 sc_out sc_logic 1 signal 21 } 
	{ B_10_q0 sc_in sc_lv 12 signal 21 } 
	{ A_11_address0 sc_out sc_lv 4 signal 22 } 
	{ A_11_ce0 sc_out sc_logic 1 signal 22 } 
	{ A_11_q0 sc_in sc_lv 12 signal 22 } 
	{ B_11_address0 sc_out sc_lv 4 signal 23 } 
	{ B_11_ce0 sc_out sc_logic 1 signal 23 } 
	{ B_11_q0 sc_in sc_lv 12 signal 23 } 
	{ A_12_address0 sc_out sc_lv 4 signal 24 } 
	{ A_12_ce0 sc_out sc_logic 1 signal 24 } 
	{ A_12_q0 sc_in sc_lv 12 signal 24 } 
	{ B_12_address0 sc_out sc_lv 4 signal 25 } 
	{ B_12_ce0 sc_out sc_logic 1 signal 25 } 
	{ B_12_q0 sc_in sc_lv 12 signal 25 } 
	{ A_13_address0 sc_out sc_lv 4 signal 26 } 
	{ A_13_ce0 sc_out sc_logic 1 signal 26 } 
	{ A_13_q0 sc_in sc_lv 12 signal 26 } 
	{ B_13_address0 sc_out sc_lv 4 signal 27 } 
	{ B_13_ce0 sc_out sc_logic 1 signal 27 } 
	{ B_13_q0 sc_in sc_lv 12 signal 27 } 
	{ A_14_address0 sc_out sc_lv 4 signal 28 } 
	{ A_14_ce0 sc_out sc_logic 1 signal 28 } 
	{ A_14_q0 sc_in sc_lv 12 signal 28 } 
	{ B_14_address0 sc_out sc_lv 4 signal 29 } 
	{ B_14_ce0 sc_out sc_logic 1 signal 29 } 
	{ B_14_q0 sc_in sc_lv 12 signal 29 } 
	{ A_15_address0 sc_out sc_lv 4 signal 30 } 
	{ A_15_ce0 sc_out sc_logic 1 signal 30 } 
	{ A_15_q0 sc_in sc_lv 12 signal 30 } 
	{ B_15_address0 sc_out sc_lv 4 signal 31 } 
	{ B_15_ce0 sc_out sc_logic 1 signal 31 } 
	{ B_15_q0 sc_in sc_lv 12 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sA1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sA1", "role": "din" }} , 
 	{ "name": "sA1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sA1", "role": "num_data_valid" }} , 
 	{ "name": "sA1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sA1", "role": "fifo_cap" }} , 
 	{ "name": "sA1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sA1", "role": "full_n" }} , 
 	{ "name": "sA1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sA1", "role": "write" }} , 
 	{ "name": "sB1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sB1", "role": "din" }} , 
 	{ "name": "sB1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sB1", "role": "num_data_valid" }} , 
 	{ "name": "sB1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sB1", "role": "fifo_cap" }} , 
 	{ "name": "sB1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sB1", "role": "full_n" }} , 
 	{ "name": "sB1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sB1", "role": "write" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_2", "role": "address0" }} , 
 	{ "name": "B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce0" }} , 
 	{ "name": "B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_2", "role": "q0" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_3", "role": "address0" }} , 
 	{ "name": "B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce0" }} , 
 	{ "name": "B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_3", "role": "q0" }} , 
 	{ "name": "A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_4", "role": "address0" }} , 
 	{ "name": "A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce0" }} , 
 	{ "name": "A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_4", "role": "q0" }} , 
 	{ "name": "B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_4", "role": "address0" }} , 
 	{ "name": "B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_4", "role": "ce0" }} , 
 	{ "name": "B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_4", "role": "q0" }} , 
 	{ "name": "A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_5", "role": "address0" }} , 
 	{ "name": "A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce0" }} , 
 	{ "name": "A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_5", "role": "q0" }} , 
 	{ "name": "B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_5", "role": "address0" }} , 
 	{ "name": "B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_5", "role": "ce0" }} , 
 	{ "name": "B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_5", "role": "q0" }} , 
 	{ "name": "A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_6", "role": "address0" }} , 
 	{ "name": "A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce0" }} , 
 	{ "name": "A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_6", "role": "q0" }} , 
 	{ "name": "B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_6", "role": "address0" }} , 
 	{ "name": "B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_6", "role": "ce0" }} , 
 	{ "name": "B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_6", "role": "q0" }} , 
 	{ "name": "A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_7", "role": "address0" }} , 
 	{ "name": "A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce0" }} , 
 	{ "name": "A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_7", "role": "q0" }} , 
 	{ "name": "B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_7", "role": "address0" }} , 
 	{ "name": "B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_7", "role": "ce0" }} , 
 	{ "name": "B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_7", "role": "q0" }} , 
 	{ "name": "A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_8", "role": "address0" }} , 
 	{ "name": "A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "ce0" }} , 
 	{ "name": "A_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_8", "role": "q0" }} , 
 	{ "name": "B_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_8", "role": "address0" }} , 
 	{ "name": "B_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_8", "role": "ce0" }} , 
 	{ "name": "B_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_8", "role": "q0" }} , 
 	{ "name": "A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_9", "role": "address0" }} , 
 	{ "name": "A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "ce0" }} , 
 	{ "name": "A_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_9", "role": "q0" }} , 
 	{ "name": "B_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_9", "role": "address0" }} , 
 	{ "name": "B_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_9", "role": "ce0" }} , 
 	{ "name": "B_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_9", "role": "q0" }} , 
 	{ "name": "A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_10", "role": "address0" }} , 
 	{ "name": "A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "ce0" }} , 
 	{ "name": "A_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_10", "role": "q0" }} , 
 	{ "name": "B_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_10", "role": "address0" }} , 
 	{ "name": "B_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_10", "role": "ce0" }} , 
 	{ "name": "B_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_10", "role": "q0" }} , 
 	{ "name": "A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_11", "role": "address0" }} , 
 	{ "name": "A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "ce0" }} , 
 	{ "name": "A_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_11", "role": "q0" }} , 
 	{ "name": "B_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_11", "role": "address0" }} , 
 	{ "name": "B_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_11", "role": "ce0" }} , 
 	{ "name": "B_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_11", "role": "q0" }} , 
 	{ "name": "A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_12", "role": "address0" }} , 
 	{ "name": "A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "ce0" }} , 
 	{ "name": "A_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_12", "role": "q0" }} , 
 	{ "name": "B_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_12", "role": "address0" }} , 
 	{ "name": "B_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_12", "role": "ce0" }} , 
 	{ "name": "B_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_12", "role": "q0" }} , 
 	{ "name": "A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_13", "role": "address0" }} , 
 	{ "name": "A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "ce0" }} , 
 	{ "name": "A_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_13", "role": "q0" }} , 
 	{ "name": "B_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_13", "role": "address0" }} , 
 	{ "name": "B_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_13", "role": "ce0" }} , 
 	{ "name": "B_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_13", "role": "q0" }} , 
 	{ "name": "A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_14", "role": "address0" }} , 
 	{ "name": "A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "ce0" }} , 
 	{ "name": "A_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_14", "role": "q0" }} , 
 	{ "name": "B_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_14", "role": "address0" }} , 
 	{ "name": "B_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_14", "role": "ce0" }} , 
 	{ "name": "B_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_14", "role": "q0" }} , 
 	{ "name": "A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_15", "role": "address0" }} , 
 	{ "name": "A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "ce0" }} , 
 	{ "name": "A_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A_15", "role": "q0" }} , 
 	{ "name": "B_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_15", "role": "address0" }} , 
 	{ "name": "B_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_15", "role": "ce0" }} , 
 	{ "name": "B_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B_15", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fwd_all_Pipeline_FW_WR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sA1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sB1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sB1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FW_WR", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fwd_all_Pipeline_FW_WR {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		A_1 {Type I LastRead 0 FirstWrite -1}
		B_1 {Type I LastRead 0 FirstWrite -1}
		A_2 {Type I LastRead 0 FirstWrite -1}
		B_2 {Type I LastRead 0 FirstWrite -1}
		A_3 {Type I LastRead 0 FirstWrite -1}
		B_3 {Type I LastRead 0 FirstWrite -1}
		A_4 {Type I LastRead 0 FirstWrite -1}
		B_4 {Type I LastRead 0 FirstWrite -1}
		A_5 {Type I LastRead 0 FirstWrite -1}
		B_5 {Type I LastRead 0 FirstWrite -1}
		A_6 {Type I LastRead 0 FirstWrite -1}
		B_6 {Type I LastRead 0 FirstWrite -1}
		A_7 {Type I LastRead 0 FirstWrite -1}
		B_7 {Type I LastRead 0 FirstWrite -1}
		A_8 {Type I LastRead 0 FirstWrite -1}
		B_8 {Type I LastRead 0 FirstWrite -1}
		A_9 {Type I LastRead 0 FirstWrite -1}
		B_9 {Type I LastRead 0 FirstWrite -1}
		A_10 {Type I LastRead 0 FirstWrite -1}
		B_10 {Type I LastRead 0 FirstWrite -1}
		A_11 {Type I LastRead 0 FirstWrite -1}
		B_11 {Type I LastRead 0 FirstWrite -1}
		A_12 {Type I LastRead 0 FirstWrite -1}
		B_12 {Type I LastRead 0 FirstWrite -1}
		A_13 {Type I LastRead 0 FirstWrite -1}
		B_13 {Type I LastRead 0 FirstWrite -1}
		A_14 {Type I LastRead 0 FirstWrite -1}
		B_14 {Type I LastRead 0 FirstWrite -1}
		A_15 {Type I LastRead 0 FirstWrite -1}
		B_15 {Type I LastRead 0 FirstWrite -1}
		sA1 {Type O LastRead -1 FirstWrite 1}
		sB1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 4 }  { A_ce0 mem_ce 1 1 }  { A_q0 in_data 0 12 } } }
	B { ap_memory {  { B_address0 mem_address 1 4 }  { B_ce0 mem_ce 1 1 }  { B_q0 in_data 0 12 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 4 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 in_data 0 12 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 4 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 in_data 0 12 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 4 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 in_data 0 12 } } }
	B_2 { ap_memory {  { B_2_address0 mem_address 1 4 }  { B_2_ce0 mem_ce 1 1 }  { B_2_q0 in_data 0 12 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 4 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 in_data 0 12 } } }
	B_3 { ap_memory {  { B_3_address0 mem_address 1 4 }  { B_3_ce0 mem_ce 1 1 }  { B_3_q0 in_data 0 12 } } }
	A_4 { ap_memory {  { A_4_address0 mem_address 1 4 }  { A_4_ce0 mem_ce 1 1 }  { A_4_q0 in_data 0 12 } } }
	B_4 { ap_memory {  { B_4_address0 mem_address 1 4 }  { B_4_ce0 mem_ce 1 1 }  { B_4_q0 in_data 0 12 } } }
	A_5 { ap_memory {  { A_5_address0 mem_address 1 4 }  { A_5_ce0 mem_ce 1 1 }  { A_5_q0 in_data 0 12 } } }
	B_5 { ap_memory {  { B_5_address0 mem_address 1 4 }  { B_5_ce0 mem_ce 1 1 }  { B_5_q0 in_data 0 12 } } }
	A_6 { ap_memory {  { A_6_address0 mem_address 1 4 }  { A_6_ce0 mem_ce 1 1 }  { A_6_q0 in_data 0 12 } } }
	B_6 { ap_memory {  { B_6_address0 mem_address 1 4 }  { B_6_ce0 mem_ce 1 1 }  { B_6_q0 in_data 0 12 } } }
	A_7 { ap_memory {  { A_7_address0 mem_address 1 4 }  { A_7_ce0 mem_ce 1 1 }  { A_7_q0 in_data 0 12 } } }
	B_7 { ap_memory {  { B_7_address0 mem_address 1 4 }  { B_7_ce0 mem_ce 1 1 }  { B_7_q0 in_data 0 12 } } }
	A_8 { ap_memory {  { A_8_address0 mem_address 1 4 }  { A_8_ce0 mem_ce 1 1 }  { A_8_q0 in_data 0 12 } } }
	B_8 { ap_memory {  { B_8_address0 mem_address 1 4 }  { B_8_ce0 mem_ce 1 1 }  { B_8_q0 in_data 0 12 } } }
	A_9 { ap_memory {  { A_9_address0 mem_address 1 4 }  { A_9_ce0 mem_ce 1 1 }  { A_9_q0 in_data 0 12 } } }
	B_9 { ap_memory {  { B_9_address0 mem_address 1 4 }  { B_9_ce0 mem_ce 1 1 }  { B_9_q0 in_data 0 12 } } }
	A_10 { ap_memory {  { A_10_address0 mem_address 1 4 }  { A_10_ce0 mem_ce 1 1 }  { A_10_q0 in_data 0 12 } } }
	B_10 { ap_memory {  { B_10_address0 mem_address 1 4 }  { B_10_ce0 mem_ce 1 1 }  { B_10_q0 in_data 0 12 } } }
	A_11 { ap_memory {  { A_11_address0 mem_address 1 4 }  { A_11_ce0 mem_ce 1 1 }  { A_11_q0 in_data 0 12 } } }
	B_11 { ap_memory {  { B_11_address0 mem_address 1 4 }  { B_11_ce0 mem_ce 1 1 }  { B_11_q0 in_data 0 12 } } }
	A_12 { ap_memory {  { A_12_address0 mem_address 1 4 }  { A_12_ce0 mem_ce 1 1 }  { A_12_q0 in_data 0 12 } } }
	B_12 { ap_memory {  { B_12_address0 mem_address 1 4 }  { B_12_ce0 mem_ce 1 1 }  { B_12_q0 in_data 0 12 } } }
	A_13 { ap_memory {  { A_13_address0 mem_address 1 4 }  { A_13_ce0 mem_ce 1 1 }  { A_13_q0 in_data 0 12 } } }
	B_13 { ap_memory {  { B_13_address0 mem_address 1 4 }  { B_13_ce0 mem_ce 1 1 }  { B_13_q0 in_data 0 12 } } }
	A_14 { ap_memory {  { A_14_address0 mem_address 1 4 }  { A_14_ce0 mem_ce 1 1 }  { A_14_q0 in_data 0 12 } } }
	B_14 { ap_memory {  { B_14_address0 mem_address 1 4 }  { B_14_ce0 mem_ce 1 1 }  { B_14_q0 in_data 0 12 } } }
	A_15 { ap_memory {  { A_15_address0 mem_address 1 4 }  { A_15_ce0 mem_ce 1 1 }  { A_15_q0 in_data 0 12 } } }
	B_15 { ap_memory {  { B_15_address0 mem_address 1 4 }  { B_15_ce0 mem_ce 1 1 }  { B_15_q0 in_data 0 12 } } }
	sA1 { ap_fifo {  { sA1_din fifo_data_in 1 192 }  { sA1_num_data_valid fifo_status_num_data_valid 0 6 }  { sA1_fifo_cap fifo_update 0 6 }  { sA1_full_n fifo_status 0 1 }  { sA1_write fifo_port_we 1 1 } } }
	sB1 { ap_fifo {  { sB1_din fifo_data_in 1 192 }  { sB1_num_data_valid fifo_status_num_data_valid 0 6 }  { sB1_fifo_cap fifo_update 0 6 }  { sB1_full_n fifo_status 0 1 }  { sB1_write fifo_port_we 1 1 } } }
}
