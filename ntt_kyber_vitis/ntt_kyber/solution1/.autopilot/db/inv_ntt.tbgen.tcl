set moduleName inv_ntt
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {inv_ntt}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf_0 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_1 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_2 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_3 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_4 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_5 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_6 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_7 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_8 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_9 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_10 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_11 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_12 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_13 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_14 int 12 regular {array 16 { 2 2 } 1 1 }  }
	{ buf_15 int 12 regular {array 16 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "buf_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_5", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_6", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_7", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_8", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_9", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_10", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_11", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_12", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_13", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_14", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_15", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 166
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_0_address0 sc_out sc_lv 4 signal 0 } 
	{ buf_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf_0_we0 sc_out sc_logic 1 signal 0 } 
	{ buf_0_d0 sc_out sc_lv 12 signal 0 } 
	{ buf_0_q0 sc_in sc_lv 12 signal 0 } 
	{ buf_0_address1 sc_out sc_lv 4 signal 0 } 
	{ buf_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ buf_0_we1 sc_out sc_logic 1 signal 0 } 
	{ buf_0_d1 sc_out sc_lv 12 signal 0 } 
	{ buf_0_q1 sc_in sc_lv 12 signal 0 } 
	{ buf_1_address0 sc_out sc_lv 4 signal 1 } 
	{ buf_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_1_we0 sc_out sc_logic 1 signal 1 } 
	{ buf_1_d0 sc_out sc_lv 12 signal 1 } 
	{ buf_1_q0 sc_in sc_lv 12 signal 1 } 
	{ buf_1_address1 sc_out sc_lv 4 signal 1 } 
	{ buf_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_1_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_1_d1 sc_out sc_lv 12 signal 1 } 
	{ buf_1_q1 sc_in sc_lv 12 signal 1 } 
	{ buf_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buf_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buf_2_d0 sc_out sc_lv 12 signal 2 } 
	{ buf_2_q0 sc_in sc_lv 12 signal 2 } 
	{ buf_2_address1 sc_out sc_lv 4 signal 2 } 
	{ buf_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf_2_we1 sc_out sc_logic 1 signal 2 } 
	{ buf_2_d1 sc_out sc_lv 12 signal 2 } 
	{ buf_2_q1 sc_in sc_lv 12 signal 2 } 
	{ buf_3_address0 sc_out sc_lv 4 signal 3 } 
	{ buf_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_3_we0 sc_out sc_logic 1 signal 3 } 
	{ buf_3_d0 sc_out sc_lv 12 signal 3 } 
	{ buf_3_q0 sc_in sc_lv 12 signal 3 } 
	{ buf_3_address1 sc_out sc_lv 4 signal 3 } 
	{ buf_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_3_we1 sc_out sc_logic 1 signal 3 } 
	{ buf_3_d1 sc_out sc_lv 12 signal 3 } 
	{ buf_3_q1 sc_in sc_lv 12 signal 3 } 
	{ buf_4_address0 sc_out sc_lv 4 signal 4 } 
	{ buf_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_4_we0 sc_out sc_logic 1 signal 4 } 
	{ buf_4_d0 sc_out sc_lv 12 signal 4 } 
	{ buf_4_q0 sc_in sc_lv 12 signal 4 } 
	{ buf_4_address1 sc_out sc_lv 4 signal 4 } 
	{ buf_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ buf_4_we1 sc_out sc_logic 1 signal 4 } 
	{ buf_4_d1 sc_out sc_lv 12 signal 4 } 
	{ buf_4_q1 sc_in sc_lv 12 signal 4 } 
	{ buf_5_address0 sc_out sc_lv 4 signal 5 } 
	{ buf_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_5_we0 sc_out sc_logic 1 signal 5 } 
	{ buf_5_d0 sc_out sc_lv 12 signal 5 } 
	{ buf_5_q0 sc_in sc_lv 12 signal 5 } 
	{ buf_5_address1 sc_out sc_lv 4 signal 5 } 
	{ buf_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ buf_5_we1 sc_out sc_logic 1 signal 5 } 
	{ buf_5_d1 sc_out sc_lv 12 signal 5 } 
	{ buf_5_q1 sc_in sc_lv 12 signal 5 } 
	{ buf_6_address0 sc_out sc_lv 4 signal 6 } 
	{ buf_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_6_we0 sc_out sc_logic 1 signal 6 } 
	{ buf_6_d0 sc_out sc_lv 12 signal 6 } 
	{ buf_6_q0 sc_in sc_lv 12 signal 6 } 
	{ buf_6_address1 sc_out sc_lv 4 signal 6 } 
	{ buf_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ buf_6_we1 sc_out sc_logic 1 signal 6 } 
	{ buf_6_d1 sc_out sc_lv 12 signal 6 } 
	{ buf_6_q1 sc_in sc_lv 12 signal 6 } 
	{ buf_7_address0 sc_out sc_lv 4 signal 7 } 
	{ buf_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_7_we0 sc_out sc_logic 1 signal 7 } 
	{ buf_7_d0 sc_out sc_lv 12 signal 7 } 
	{ buf_7_q0 sc_in sc_lv 12 signal 7 } 
	{ buf_7_address1 sc_out sc_lv 4 signal 7 } 
	{ buf_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ buf_7_we1 sc_out sc_logic 1 signal 7 } 
	{ buf_7_d1 sc_out sc_lv 12 signal 7 } 
	{ buf_7_q1 sc_in sc_lv 12 signal 7 } 
	{ buf_8_address0 sc_out sc_lv 4 signal 8 } 
	{ buf_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf_8_we0 sc_out sc_logic 1 signal 8 } 
	{ buf_8_d0 sc_out sc_lv 12 signal 8 } 
	{ buf_8_q0 sc_in sc_lv 12 signal 8 } 
	{ buf_8_address1 sc_out sc_lv 4 signal 8 } 
	{ buf_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ buf_8_we1 sc_out sc_logic 1 signal 8 } 
	{ buf_8_d1 sc_out sc_lv 12 signal 8 } 
	{ buf_8_q1 sc_in sc_lv 12 signal 8 } 
	{ buf_9_address0 sc_out sc_lv 4 signal 9 } 
	{ buf_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf_9_we0 sc_out sc_logic 1 signal 9 } 
	{ buf_9_d0 sc_out sc_lv 12 signal 9 } 
	{ buf_9_q0 sc_in sc_lv 12 signal 9 } 
	{ buf_9_address1 sc_out sc_lv 4 signal 9 } 
	{ buf_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ buf_9_we1 sc_out sc_logic 1 signal 9 } 
	{ buf_9_d1 sc_out sc_lv 12 signal 9 } 
	{ buf_9_q1 sc_in sc_lv 12 signal 9 } 
	{ buf_10_address0 sc_out sc_lv 4 signal 10 } 
	{ buf_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ buf_10_we0 sc_out sc_logic 1 signal 10 } 
	{ buf_10_d0 sc_out sc_lv 12 signal 10 } 
	{ buf_10_q0 sc_in sc_lv 12 signal 10 } 
	{ buf_10_address1 sc_out sc_lv 4 signal 10 } 
	{ buf_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ buf_10_we1 sc_out sc_logic 1 signal 10 } 
	{ buf_10_d1 sc_out sc_lv 12 signal 10 } 
	{ buf_10_q1 sc_in sc_lv 12 signal 10 } 
	{ buf_11_address0 sc_out sc_lv 4 signal 11 } 
	{ buf_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ buf_11_we0 sc_out sc_logic 1 signal 11 } 
	{ buf_11_d0 sc_out sc_lv 12 signal 11 } 
	{ buf_11_q0 sc_in sc_lv 12 signal 11 } 
	{ buf_11_address1 sc_out sc_lv 4 signal 11 } 
	{ buf_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ buf_11_we1 sc_out sc_logic 1 signal 11 } 
	{ buf_11_d1 sc_out sc_lv 12 signal 11 } 
	{ buf_11_q1 sc_in sc_lv 12 signal 11 } 
	{ buf_12_address0 sc_out sc_lv 4 signal 12 } 
	{ buf_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ buf_12_we0 sc_out sc_logic 1 signal 12 } 
	{ buf_12_d0 sc_out sc_lv 12 signal 12 } 
	{ buf_12_q0 sc_in sc_lv 12 signal 12 } 
	{ buf_12_address1 sc_out sc_lv 4 signal 12 } 
	{ buf_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ buf_12_we1 sc_out sc_logic 1 signal 12 } 
	{ buf_12_d1 sc_out sc_lv 12 signal 12 } 
	{ buf_12_q1 sc_in sc_lv 12 signal 12 } 
	{ buf_13_address0 sc_out sc_lv 4 signal 13 } 
	{ buf_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ buf_13_we0 sc_out sc_logic 1 signal 13 } 
	{ buf_13_d0 sc_out sc_lv 12 signal 13 } 
	{ buf_13_q0 sc_in sc_lv 12 signal 13 } 
	{ buf_13_address1 sc_out sc_lv 4 signal 13 } 
	{ buf_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ buf_13_we1 sc_out sc_logic 1 signal 13 } 
	{ buf_13_d1 sc_out sc_lv 12 signal 13 } 
	{ buf_13_q1 sc_in sc_lv 12 signal 13 } 
	{ buf_14_address0 sc_out sc_lv 4 signal 14 } 
	{ buf_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ buf_14_we0 sc_out sc_logic 1 signal 14 } 
	{ buf_14_d0 sc_out sc_lv 12 signal 14 } 
	{ buf_14_q0 sc_in sc_lv 12 signal 14 } 
	{ buf_14_address1 sc_out sc_lv 4 signal 14 } 
	{ buf_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ buf_14_we1 sc_out sc_logic 1 signal 14 } 
	{ buf_14_d1 sc_out sc_lv 12 signal 14 } 
	{ buf_14_q1 sc_in sc_lv 12 signal 14 } 
	{ buf_15_address0 sc_out sc_lv 4 signal 15 } 
	{ buf_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ buf_15_we0 sc_out sc_logic 1 signal 15 } 
	{ buf_15_d0 sc_out sc_lv 12 signal 15 } 
	{ buf_15_q0 sc_in sc_lv 12 signal 15 } 
	{ buf_15_address1 sc_out sc_lv 4 signal 15 } 
	{ buf_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ buf_15_we1 sc_out sc_logic 1 signal 15 } 
	{ buf_15_d1 sc_out sc_lv 12 signal 15 } 
	{ buf_15_q1 sc_in sc_lv 12 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_0", "role": "address0" }} , 
 	{ "name": "buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_0", "role": "ce0" }} , 
 	{ "name": "buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_0", "role": "we0" }} , 
 	{ "name": "buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_0", "role": "d0" }} , 
 	{ "name": "buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_0", "role": "q0" }} , 
 	{ "name": "buf_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_0", "role": "address1" }} , 
 	{ "name": "buf_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_0", "role": "ce1" }} , 
 	{ "name": "buf_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_0", "role": "we1" }} , 
 	{ "name": "buf_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_0", "role": "d1" }} , 
 	{ "name": "buf_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_0", "role": "q1" }} , 
 	{ "name": "buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_1", "role": "address0" }} , 
 	{ "name": "buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_1", "role": "ce0" }} , 
 	{ "name": "buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_1", "role": "we0" }} , 
 	{ "name": "buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_1", "role": "d0" }} , 
 	{ "name": "buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_1", "role": "q0" }} , 
 	{ "name": "buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_1", "role": "address1" }} , 
 	{ "name": "buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_1", "role": "ce1" }} , 
 	{ "name": "buf_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_1", "role": "we1" }} , 
 	{ "name": "buf_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_1", "role": "d1" }} , 
 	{ "name": "buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_1", "role": "q1" }} , 
 	{ "name": "buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_2", "role": "address0" }} , 
 	{ "name": "buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2", "role": "ce0" }} , 
 	{ "name": "buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2", "role": "we0" }} , 
 	{ "name": "buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_2", "role": "d0" }} , 
 	{ "name": "buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_2", "role": "q0" }} , 
 	{ "name": "buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_2", "role": "address1" }} , 
 	{ "name": "buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2", "role": "ce1" }} , 
 	{ "name": "buf_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_2", "role": "we1" }} , 
 	{ "name": "buf_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_2", "role": "d1" }} , 
 	{ "name": "buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_2", "role": "q1" }} , 
 	{ "name": "buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_3", "role": "address0" }} , 
 	{ "name": "buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_3", "role": "ce0" }} , 
 	{ "name": "buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_3", "role": "we0" }} , 
 	{ "name": "buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_3", "role": "d0" }} , 
 	{ "name": "buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_3", "role": "q0" }} , 
 	{ "name": "buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_3", "role": "address1" }} , 
 	{ "name": "buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_3", "role": "ce1" }} , 
 	{ "name": "buf_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_3", "role": "we1" }} , 
 	{ "name": "buf_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_3", "role": "d1" }} , 
 	{ "name": "buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_3", "role": "q1" }} , 
 	{ "name": "buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_4", "role": "address0" }} , 
 	{ "name": "buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_4", "role": "ce0" }} , 
 	{ "name": "buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_4", "role": "we0" }} , 
 	{ "name": "buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_4", "role": "d0" }} , 
 	{ "name": "buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_4", "role": "q0" }} , 
 	{ "name": "buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_4", "role": "address1" }} , 
 	{ "name": "buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_4", "role": "ce1" }} , 
 	{ "name": "buf_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_4", "role": "we1" }} , 
 	{ "name": "buf_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_4", "role": "d1" }} , 
 	{ "name": "buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_4", "role": "q1" }} , 
 	{ "name": "buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_5", "role": "address0" }} , 
 	{ "name": "buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_5", "role": "ce0" }} , 
 	{ "name": "buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_5", "role": "we0" }} , 
 	{ "name": "buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_5", "role": "d0" }} , 
 	{ "name": "buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_5", "role": "q0" }} , 
 	{ "name": "buf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_5", "role": "address1" }} , 
 	{ "name": "buf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_5", "role": "ce1" }} , 
 	{ "name": "buf_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_5", "role": "we1" }} , 
 	{ "name": "buf_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_5", "role": "d1" }} , 
 	{ "name": "buf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_5", "role": "q1" }} , 
 	{ "name": "buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_6", "role": "address0" }} , 
 	{ "name": "buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_6", "role": "ce0" }} , 
 	{ "name": "buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_6", "role": "we0" }} , 
 	{ "name": "buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_6", "role": "d0" }} , 
 	{ "name": "buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_6", "role": "q0" }} , 
 	{ "name": "buf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_6", "role": "address1" }} , 
 	{ "name": "buf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_6", "role": "ce1" }} , 
 	{ "name": "buf_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_6", "role": "we1" }} , 
 	{ "name": "buf_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_6", "role": "d1" }} , 
 	{ "name": "buf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_6", "role": "q1" }} , 
 	{ "name": "buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_7", "role": "address0" }} , 
 	{ "name": "buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_7", "role": "ce0" }} , 
 	{ "name": "buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_7", "role": "we0" }} , 
 	{ "name": "buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_7", "role": "d0" }} , 
 	{ "name": "buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_7", "role": "q0" }} , 
 	{ "name": "buf_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_7", "role": "address1" }} , 
 	{ "name": "buf_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_7", "role": "ce1" }} , 
 	{ "name": "buf_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_7", "role": "we1" }} , 
 	{ "name": "buf_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_7", "role": "d1" }} , 
 	{ "name": "buf_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_7", "role": "q1" }} , 
 	{ "name": "buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_8", "role": "address0" }} , 
 	{ "name": "buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_8", "role": "ce0" }} , 
 	{ "name": "buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_8", "role": "we0" }} , 
 	{ "name": "buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_8", "role": "d0" }} , 
 	{ "name": "buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_8", "role": "q0" }} , 
 	{ "name": "buf_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_8", "role": "address1" }} , 
 	{ "name": "buf_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_8", "role": "ce1" }} , 
 	{ "name": "buf_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_8", "role": "we1" }} , 
 	{ "name": "buf_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_8", "role": "d1" }} , 
 	{ "name": "buf_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_8", "role": "q1" }} , 
 	{ "name": "buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_9", "role": "address0" }} , 
 	{ "name": "buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_9", "role": "ce0" }} , 
 	{ "name": "buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_9", "role": "we0" }} , 
 	{ "name": "buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_9", "role": "d0" }} , 
 	{ "name": "buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_9", "role": "q0" }} , 
 	{ "name": "buf_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_9", "role": "address1" }} , 
 	{ "name": "buf_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_9", "role": "ce1" }} , 
 	{ "name": "buf_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_9", "role": "we1" }} , 
 	{ "name": "buf_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_9", "role": "d1" }} , 
 	{ "name": "buf_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_9", "role": "q1" }} , 
 	{ "name": "buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_10", "role": "address0" }} , 
 	{ "name": "buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_10", "role": "ce0" }} , 
 	{ "name": "buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_10", "role": "we0" }} , 
 	{ "name": "buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_10", "role": "d0" }} , 
 	{ "name": "buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_10", "role": "q0" }} , 
 	{ "name": "buf_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_10", "role": "address1" }} , 
 	{ "name": "buf_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_10", "role": "ce1" }} , 
 	{ "name": "buf_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_10", "role": "we1" }} , 
 	{ "name": "buf_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_10", "role": "d1" }} , 
 	{ "name": "buf_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_10", "role": "q1" }} , 
 	{ "name": "buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_11", "role": "address0" }} , 
 	{ "name": "buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_11", "role": "ce0" }} , 
 	{ "name": "buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_11", "role": "we0" }} , 
 	{ "name": "buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_11", "role": "d0" }} , 
 	{ "name": "buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_11", "role": "q0" }} , 
 	{ "name": "buf_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_11", "role": "address1" }} , 
 	{ "name": "buf_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_11", "role": "ce1" }} , 
 	{ "name": "buf_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_11", "role": "we1" }} , 
 	{ "name": "buf_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_11", "role": "d1" }} , 
 	{ "name": "buf_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_11", "role": "q1" }} , 
 	{ "name": "buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_12", "role": "address0" }} , 
 	{ "name": "buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_12", "role": "ce0" }} , 
 	{ "name": "buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_12", "role": "we0" }} , 
 	{ "name": "buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_12", "role": "d0" }} , 
 	{ "name": "buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_12", "role": "q0" }} , 
 	{ "name": "buf_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_12", "role": "address1" }} , 
 	{ "name": "buf_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_12", "role": "ce1" }} , 
 	{ "name": "buf_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_12", "role": "we1" }} , 
 	{ "name": "buf_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_12", "role": "d1" }} , 
 	{ "name": "buf_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_12", "role": "q1" }} , 
 	{ "name": "buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_13", "role": "address0" }} , 
 	{ "name": "buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_13", "role": "ce0" }} , 
 	{ "name": "buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_13", "role": "we0" }} , 
 	{ "name": "buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_13", "role": "d0" }} , 
 	{ "name": "buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_13", "role": "q0" }} , 
 	{ "name": "buf_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_13", "role": "address1" }} , 
 	{ "name": "buf_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_13", "role": "ce1" }} , 
 	{ "name": "buf_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_13", "role": "we1" }} , 
 	{ "name": "buf_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_13", "role": "d1" }} , 
 	{ "name": "buf_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_13", "role": "q1" }} , 
 	{ "name": "buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_14", "role": "address0" }} , 
 	{ "name": "buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_14", "role": "ce0" }} , 
 	{ "name": "buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_14", "role": "we0" }} , 
 	{ "name": "buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_14", "role": "d0" }} , 
 	{ "name": "buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_14", "role": "q0" }} , 
 	{ "name": "buf_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_14", "role": "address1" }} , 
 	{ "name": "buf_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_14", "role": "ce1" }} , 
 	{ "name": "buf_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_14", "role": "we1" }} , 
 	{ "name": "buf_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_14", "role": "d1" }} , 
 	{ "name": "buf_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_14", "role": "q1" }} , 
 	{ "name": "buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_15", "role": "address0" }} , 
 	{ "name": "buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_15", "role": "ce0" }} , 
 	{ "name": "buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_15", "role": "we0" }} , 
 	{ "name": "buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_15", "role": "d0" }} , 
 	{ "name": "buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_15", "role": "q0" }} , 
 	{ "name": "buf_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_15", "role": "address1" }} , 
 	{ "name": "buf_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_15", "role": "ce1" }} , 
 	{ "name": "buf_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_15", "role": "we1" }} , 
 	{ "name": "buf_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_15", "role": "d1" }} , 
 	{ "name": "buf_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_15", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "35", "53", "71", "89", "107", "125", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162"],
		"CDFG" : "inv_ntt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "447", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_2", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_2", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_2", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_2", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_2", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_3", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_3", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_3", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_3", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_3", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_4", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_4", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_4", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_4", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_4", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_5", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_5", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_5", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_5", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_5", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_6", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_6", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_6", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_6", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_6", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_7", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_7", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_7", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_7", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_7", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_8", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_8", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_8", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_8", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_8", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_8", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_8", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_9", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_9", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_9", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_9", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_9", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_9", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_9", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_10", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_10", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_10", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_10", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_10", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_10", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_10", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_11", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_11", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_11", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_11", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_11", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_11", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_11", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_12", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_12", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_12", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_12", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_12", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_12", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_12", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_13", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_13", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_13", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_13", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_13", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_13", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_13", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_14", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_14", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_14", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_14", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_14", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_14", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_15", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_15", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_15", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_15", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_15", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_15", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_15", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_0_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_0_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_2_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_2_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_3_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_3_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_0_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_0_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_1_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_1_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_2_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_2_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_3_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_3_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_0_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_0_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_1_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_1_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_2_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_2_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_3_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_3_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_0_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_0_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_1_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_1_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_3_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_3_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "SCALE", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state14"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state23"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728", "Parent" : "0", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "inv_stage_t_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_0_0_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_0_0_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_1_0_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_1_0_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_2_0_U", "Parent" : "17"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_2_0_U", "Parent" : "17"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_3_0_U", "Parent" : "17"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_3_0_U", "Parent" : "17"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1200", "Parent" : "17"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1201", "Parent" : "17"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1202", "Parent" : "17"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1203", "Parent" : "17"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1204", "Parent" : "17"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1205", "Parent" : "17"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1206", "Parent" : "17"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1207", "Parent" : "17"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_2_s_fu_728.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "inv_stage_t_4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_0_1_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_0_1_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_1_1_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_1_1_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_2_1_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_2_1_U", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_3_1_U", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_3_1_U", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1261", "Parent" : "35"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1262", "Parent" : "35"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1263", "Parent" : "35"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1264", "Parent" : "35"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1265", "Parent" : "35"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1266", "Parent" : "35"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1267", "Parent" : "35"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1268", "Parent" : "35"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_4_s_fu_812.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
		"CDFG" : "inv_stage_t_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_0_2_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_0_2_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_1_2_U", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_1_2_U", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_2_2_U", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_2_2_U", "Parent" : "53"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_3_2_U", "Parent" : "53"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_3_2_U", "Parent" : "53"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1319", "Parent" : "53"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1320", "Parent" : "53"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1321", "Parent" : "53"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1322", "Parent" : "53"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1323", "Parent" : "53"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1324", "Parent" : "53"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1325", "Parent" : "53"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1326", "Parent" : "53"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_8_s_fu_880.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948", "Parent" : "0", "Child" : ["72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "inv_stage_t_16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_0_3_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_0_3_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_1_3_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_1_3_U", "Parent" : "71"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_2_3_U", "Parent" : "71"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_2_3_U", "Parent" : "71"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_3_3_U", "Parent" : "71"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_3_3_U", "Parent" : "71"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1369", "Parent" : "71"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1370", "Parent" : "71"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1371", "Parent" : "71"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1372", "Parent" : "71"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1373", "Parent" : "71"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1374", "Parent" : "71"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1375", "Parent" : "71"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1376", "Parent" : "71"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_16_s_fu_948.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106"],
		"CDFG" : "inv_stage_t_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_0_4_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_0_4_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_1_4_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_1_4_U", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_2_4_U", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_2_4_U", "Parent" : "89"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_3_4_U", "Parent" : "89"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_3_4_U", "Parent" : "89"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1427", "Parent" : "89"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1428", "Parent" : "89"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1429", "Parent" : "89"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1430", "Parent" : "89"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1431", "Parent" : "89"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1432", "Parent" : "89"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1433", "Parent" : "89"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1434", "Parent" : "89"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_32_s_fu_1016.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084", "Parent" : "0", "Child" : ["108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "inv_stage_t_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_0_5_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_0_5_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_1_5_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_1_5_U", "Parent" : "107"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_2_5_U", "Parent" : "107"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_2_5_U", "Parent" : "107"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_3_5_U", "Parent" : "107"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_3_5_U", "Parent" : "107"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1485", "Parent" : "107"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1486", "Parent" : "107"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1487", "Parent" : "107"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1488", "Parent" : "107"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1489", "Parent" : "107"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1490", "Parent" : "107"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1491", "Parent" : "107"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1492", "Parent" : "107"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_64_s_fu_1084.flow_control_loop_pipe_sequential_init_U", "Parent" : "107"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152", "Parent" : "0", "Child" : ["126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142"],
		"CDFG" : "inv_stage_t_128_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5INV_W_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5INV_W_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6INV_MW_3_6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "INV_BF", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_0_6_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_0_6_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_1_6_U", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_1_6_U", "Parent" : "125"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_2_6_U", "Parent" : "125"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_2_6_U", "Parent" : "125"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_3_6_U", "Parent" : "125"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_3_6_U", "Parent" : "125"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1543", "Parent" : "125"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1544", "Parent" : "125"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1545", "Parent" : "125"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1546", "Parent" : "125"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1547", "Parent" : "125"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1548", "Parent" : "125"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1549", "Parent" : "125"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1550", "Parent" : "125"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_stage_t_128_s_fu_1152.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_12_1_1_U1584", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12ns_13ns_24_3_1_U1585", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_24ns_14ns_37_3_1_U1586", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_12ns_12ns_24ns_25_3_1_U1587", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1588", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1589", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1590", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1591", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1592", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1593", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1594", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_16ns_48_3_1_U1595", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1596", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1597", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1598", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1599", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1600", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1601", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1602", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_13ns_32_3_1_U1603", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inv_ntt {
		buf_0 {Type IO LastRead 1 FirstWrite -1}
		buf_1 {Type IO LastRead 1 FirstWrite -1}
		buf_2 {Type IO LastRead 1 FirstWrite -1}
		buf_3 {Type IO LastRead 1 FirstWrite -1}
		buf_4 {Type IO LastRead 1 FirstWrite -1}
		buf_5 {Type IO LastRead 1 FirstWrite -1}
		buf_6 {Type IO LastRead 1 FirstWrite -1}
		buf_7 {Type IO LastRead 1 FirstWrite -1}
		buf_8 {Type IO LastRead 1 FirstWrite -1}
		buf_9 {Type IO LastRead 1 FirstWrite -1}
		buf_10 {Type IO LastRead 1 FirstWrite -1}
		buf_11 {Type IO LastRead 1 FirstWrite -1}
		buf_12 {Type IO LastRead 1 FirstWrite -1}
		buf_13 {Type IO LastRead 1 FirstWrite -1}
		buf_14 {Type IO LastRead 1 FirstWrite -1}
		buf_15 {Type IO LastRead 1 FirstWrite -1}
		p_ZL5INV_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_6 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_2_s {
		src_0 {Type I LastRead 0 FirstWrite -1}
		src_1 {Type I LastRead 0 FirstWrite -1}
		src_2 {Type I LastRead 0 FirstWrite -1}
		src_3 {Type I LastRead 0 FirstWrite -1}
		src_4 {Type I LastRead 0 FirstWrite -1}
		src_5 {Type I LastRead 0 FirstWrite -1}
		src_6 {Type I LastRead 0 FirstWrite -1}
		src_7 {Type I LastRead 0 FirstWrite -1}
		src_8 {Type I LastRead 0 FirstWrite -1}
		src_9 {Type I LastRead 0 FirstWrite -1}
		src_10 {Type I LastRead 0 FirstWrite -1}
		src_11 {Type I LastRead 0 FirstWrite -1}
		src_12 {Type I LastRead 0 FirstWrite -1}
		src_13 {Type I LastRead 0 FirstWrite -1}
		src_14 {Type I LastRead 0 FirstWrite -1}
		src_15 {Type I LastRead 0 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 1}
		dst_1 {Type O LastRead -1 FirstWrite 1}
		dst_2 {Type O LastRead -1 FirstWrite 5}
		dst_3 {Type O LastRead -1 FirstWrite 5}
		dst_4 {Type O LastRead -1 FirstWrite 1}
		dst_5 {Type O LastRead -1 FirstWrite 1}
		dst_6 {Type O LastRead -1 FirstWrite 5}
		dst_7 {Type O LastRead -1 FirstWrite 5}
		dst_8 {Type O LastRead -1 FirstWrite 1}
		dst_9 {Type O LastRead -1 FirstWrite 1}
		dst_10 {Type O LastRead -1 FirstWrite 5}
		dst_11 {Type O LastRead -1 FirstWrite 5}
		dst_12 {Type O LastRead -1 FirstWrite 1}
		dst_13 {Type O LastRead -1 FirstWrite 1}
		dst_14 {Type O LastRead -1 FirstWrite 5}
		dst_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5INV_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_0 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_4_s {
		src_0 {Type I LastRead 0 FirstWrite -1}
		src_1 {Type I LastRead 0 FirstWrite -1}
		src_2 {Type I LastRead 0 FirstWrite -1}
		src_3 {Type I LastRead 0 FirstWrite -1}
		src_4 {Type I LastRead 0 FirstWrite -1}
		src_5 {Type I LastRead 0 FirstWrite -1}
		src_6 {Type I LastRead 0 FirstWrite -1}
		src_7 {Type I LastRead 0 FirstWrite -1}
		src_8 {Type I LastRead 0 FirstWrite -1}
		src_9 {Type I LastRead 0 FirstWrite -1}
		src_10 {Type I LastRead 0 FirstWrite -1}
		src_11 {Type I LastRead 0 FirstWrite -1}
		src_12 {Type I LastRead 0 FirstWrite -1}
		src_13 {Type I LastRead 0 FirstWrite -1}
		src_14 {Type I LastRead 0 FirstWrite -1}
		src_15 {Type I LastRead 0 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 1}
		dst_1 {Type O LastRead -1 FirstWrite 1}
		dst_2 {Type O LastRead -1 FirstWrite 1}
		dst_3 {Type O LastRead -1 FirstWrite 1}
		dst_4 {Type O LastRead -1 FirstWrite 5}
		dst_5 {Type O LastRead -1 FirstWrite 5}
		dst_6 {Type O LastRead -1 FirstWrite 5}
		dst_7 {Type O LastRead -1 FirstWrite 5}
		dst_8 {Type O LastRead -1 FirstWrite 1}
		dst_9 {Type O LastRead -1 FirstWrite 1}
		dst_10 {Type O LastRead -1 FirstWrite 1}
		dst_11 {Type O LastRead -1 FirstWrite 1}
		dst_12 {Type O LastRead -1 FirstWrite 5}
		dst_13 {Type O LastRead -1 FirstWrite 5}
		dst_14 {Type O LastRead -1 FirstWrite 5}
		dst_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5INV_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_1 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_8_s {
		src_0 {Type I LastRead 0 FirstWrite -1}
		src_1 {Type I LastRead 0 FirstWrite -1}
		src_2 {Type I LastRead 0 FirstWrite -1}
		src_3 {Type I LastRead 0 FirstWrite -1}
		src_4 {Type I LastRead 0 FirstWrite -1}
		src_5 {Type I LastRead 0 FirstWrite -1}
		src_6 {Type I LastRead 0 FirstWrite -1}
		src_7 {Type I LastRead 0 FirstWrite -1}
		src_8 {Type I LastRead 0 FirstWrite -1}
		src_9 {Type I LastRead 0 FirstWrite -1}
		src_10 {Type I LastRead 0 FirstWrite -1}
		src_11 {Type I LastRead 0 FirstWrite -1}
		src_12 {Type I LastRead 0 FirstWrite -1}
		src_13 {Type I LastRead 0 FirstWrite -1}
		src_14 {Type I LastRead 0 FirstWrite -1}
		src_15 {Type I LastRead 0 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 1}
		dst_1 {Type O LastRead -1 FirstWrite 1}
		dst_2 {Type O LastRead -1 FirstWrite 1}
		dst_3 {Type O LastRead -1 FirstWrite 1}
		dst_4 {Type O LastRead -1 FirstWrite 1}
		dst_5 {Type O LastRead -1 FirstWrite 1}
		dst_6 {Type O LastRead -1 FirstWrite 1}
		dst_7 {Type O LastRead -1 FirstWrite 1}
		dst_8 {Type O LastRead -1 FirstWrite 5}
		dst_9 {Type O LastRead -1 FirstWrite 5}
		dst_10 {Type O LastRead -1 FirstWrite 5}
		dst_11 {Type O LastRead -1 FirstWrite 5}
		dst_12 {Type O LastRead -1 FirstWrite 5}
		dst_13 {Type O LastRead -1 FirstWrite 5}
		dst_14 {Type O LastRead -1 FirstWrite 5}
		dst_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5INV_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_2 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_16_s {
		src_0 {Type I LastRead 1 FirstWrite -1}
		src_1 {Type I LastRead 1 FirstWrite -1}
		src_2 {Type I LastRead 1 FirstWrite -1}
		src_3 {Type I LastRead 1 FirstWrite -1}
		src_4 {Type I LastRead 1 FirstWrite -1}
		src_5 {Type I LastRead 1 FirstWrite -1}
		src_6 {Type I LastRead 1 FirstWrite -1}
		src_7 {Type I LastRead 1 FirstWrite -1}
		src_8 {Type I LastRead 1 FirstWrite -1}
		src_9 {Type I LastRead 1 FirstWrite -1}
		src_10 {Type I LastRead 1 FirstWrite -1}
		src_11 {Type I LastRead 1 FirstWrite -1}
		src_12 {Type I LastRead 1 FirstWrite -1}
		src_13 {Type I LastRead 1 FirstWrite -1}
		src_14 {Type I LastRead 1 FirstWrite -1}
		src_15 {Type I LastRead 1 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 4}
		dst_1 {Type O LastRead -1 FirstWrite 4}
		dst_2 {Type O LastRead -1 FirstWrite 4}
		dst_3 {Type O LastRead -1 FirstWrite 4}
		dst_4 {Type O LastRead -1 FirstWrite 5}
		dst_5 {Type O LastRead -1 FirstWrite 5}
		dst_6 {Type O LastRead -1 FirstWrite 5}
		dst_7 {Type O LastRead -1 FirstWrite 5}
		dst_8 {Type O LastRead -1 FirstWrite 4}
		dst_9 {Type O LastRead -1 FirstWrite 4}
		dst_10 {Type O LastRead -1 FirstWrite 4}
		dst_11 {Type O LastRead -1 FirstWrite 4}
		dst_12 {Type O LastRead -1 FirstWrite 5}
		dst_13 {Type O LastRead -1 FirstWrite 5}
		dst_14 {Type O LastRead -1 FirstWrite 5}
		dst_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5INV_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_3 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_32_s {
		src_0 {Type I LastRead 1 FirstWrite -1}
		src_1 {Type I LastRead 1 FirstWrite -1}
		src_2 {Type I LastRead 1 FirstWrite -1}
		src_3 {Type I LastRead 1 FirstWrite -1}
		src_4 {Type I LastRead 1 FirstWrite -1}
		src_5 {Type I LastRead 1 FirstWrite -1}
		src_6 {Type I LastRead 1 FirstWrite -1}
		src_7 {Type I LastRead 1 FirstWrite -1}
		src_8 {Type I LastRead 1 FirstWrite -1}
		src_9 {Type I LastRead 1 FirstWrite -1}
		src_10 {Type I LastRead 1 FirstWrite -1}
		src_11 {Type I LastRead 1 FirstWrite -1}
		src_12 {Type I LastRead 1 FirstWrite -1}
		src_13 {Type I LastRead 1 FirstWrite -1}
		src_14 {Type I LastRead 1 FirstWrite -1}
		src_15 {Type I LastRead 1 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 5}
		dst_1 {Type O LastRead -1 FirstWrite 5}
		dst_2 {Type O LastRead -1 FirstWrite 5}
		dst_3 {Type O LastRead -1 FirstWrite 5}
		dst_4 {Type O LastRead -1 FirstWrite 5}
		dst_5 {Type O LastRead -1 FirstWrite 5}
		dst_6 {Type O LastRead -1 FirstWrite 5}
		dst_7 {Type O LastRead -1 FirstWrite 5}
		dst_8 {Type O LastRead -1 FirstWrite 5}
		dst_9 {Type O LastRead -1 FirstWrite 5}
		dst_10 {Type O LastRead -1 FirstWrite 5}
		dst_11 {Type O LastRead -1 FirstWrite 5}
		dst_12 {Type O LastRead -1 FirstWrite 5}
		dst_13 {Type O LastRead -1 FirstWrite 5}
		dst_14 {Type O LastRead -1 FirstWrite 5}
		dst_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5INV_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_4 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_64_s {
		src_0 {Type I LastRead 1 FirstWrite -1}
		src_1 {Type I LastRead 1 FirstWrite -1}
		src_2 {Type I LastRead 1 FirstWrite -1}
		src_3 {Type I LastRead 1 FirstWrite -1}
		src_4 {Type I LastRead 1 FirstWrite -1}
		src_5 {Type I LastRead 1 FirstWrite -1}
		src_6 {Type I LastRead 1 FirstWrite -1}
		src_7 {Type I LastRead 1 FirstWrite -1}
		src_8 {Type I LastRead 1 FirstWrite -1}
		src_9 {Type I LastRead 1 FirstWrite -1}
		src_10 {Type I LastRead 1 FirstWrite -1}
		src_11 {Type I LastRead 1 FirstWrite -1}
		src_12 {Type I LastRead 1 FirstWrite -1}
		src_13 {Type I LastRead 1 FirstWrite -1}
		src_14 {Type I LastRead 1 FirstWrite -1}
		src_15 {Type I LastRead 1 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 5}
		dst_1 {Type O LastRead -1 FirstWrite 5}
		dst_2 {Type O LastRead -1 FirstWrite 5}
		dst_3 {Type O LastRead -1 FirstWrite 5}
		dst_4 {Type O LastRead -1 FirstWrite 5}
		dst_5 {Type O LastRead -1 FirstWrite 5}
		dst_6 {Type O LastRead -1 FirstWrite 5}
		dst_7 {Type O LastRead -1 FirstWrite 5}
		dst_8 {Type O LastRead -1 FirstWrite 5}
		dst_9 {Type O LastRead -1 FirstWrite 5}
		dst_10 {Type O LastRead -1 FirstWrite 5}
		dst_11 {Type O LastRead -1 FirstWrite 5}
		dst_12 {Type O LastRead -1 FirstWrite 5}
		dst_13 {Type O LastRead -1 FirstWrite 5}
		dst_14 {Type O LastRead -1 FirstWrite 5}
		dst_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5INV_W_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_5 {Type I LastRead -1 FirstWrite -1}}
	inv_stage_t_128_s {
		src_0 {Type I LastRead 1 FirstWrite -1}
		src_1 {Type I LastRead 1 FirstWrite -1}
		src_2 {Type I LastRead 1 FirstWrite -1}
		src_3 {Type I LastRead 1 FirstWrite -1}
		src_4 {Type I LastRead 1 FirstWrite -1}
		src_5 {Type I LastRead 1 FirstWrite -1}
		src_6 {Type I LastRead 1 FirstWrite -1}
		src_7 {Type I LastRead 1 FirstWrite -1}
		src_8 {Type I LastRead 1 FirstWrite -1}
		src_9 {Type I LastRead 1 FirstWrite -1}
		src_10 {Type I LastRead 1 FirstWrite -1}
		src_11 {Type I LastRead 1 FirstWrite -1}
		src_12 {Type I LastRead 1 FirstWrite -1}
		src_13 {Type I LastRead 1 FirstWrite -1}
		src_14 {Type I LastRead 1 FirstWrite -1}
		src_15 {Type I LastRead 1 FirstWrite -1}
		dst_0 {Type O LastRead -1 FirstWrite 1}
		dst_1 {Type O LastRead -1 FirstWrite 1}
		dst_2 {Type O LastRead -1 FirstWrite 1}
		dst_3 {Type O LastRead -1 FirstWrite 1}
		dst_4 {Type O LastRead -1 FirstWrite 1}
		dst_5 {Type O LastRead -1 FirstWrite 1}
		dst_6 {Type O LastRead -1 FirstWrite 1}
		dst_7 {Type O LastRead -1 FirstWrite 1}
		dst_8 {Type O LastRead -1 FirstWrite 1}
		dst_9 {Type O LastRead -1 FirstWrite 1}
		dst_10 {Type O LastRead -1 FirstWrite 1}
		dst_11 {Type O LastRead -1 FirstWrite 1}
		dst_12 {Type O LastRead -1 FirstWrite 1}
		dst_13 {Type O LastRead -1 FirstWrite 1}
		dst_14 {Type O LastRead -1 FirstWrite 1}
		dst_15 {Type O LastRead -1 FirstWrite 1}
		p_ZL5INV_W_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5INV_W_3_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6INV_MW_3_6 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "447", "Max" : "447"}
	, {"Name" : "Interval", "Min" : "447", "Max" : "447"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buf_0 { ap_memory {  { buf_0_address0 mem_address 1 4 }  { buf_0_ce0 mem_ce 1 1 }  { buf_0_we0 mem_we 1 1 }  { buf_0_d0 mem_din 1 12 }  { buf_0_q0 mem_dout 0 12 }  { buf_0_address1 MemPortADDR2 1 4 }  { buf_0_ce1 MemPortCE2 1 1 }  { buf_0_we1 MemPortWE2 1 1 }  { buf_0_d1 MemPortDIN2 1 12 }  { buf_0_q1 MemPortDOUT2 0 12 } } }
	buf_1 { ap_memory {  { buf_1_address0 mem_address 1 4 }  { buf_1_ce0 mem_ce 1 1 }  { buf_1_we0 mem_we 1 1 }  { buf_1_d0 mem_din 1 12 }  { buf_1_q0 mem_dout 0 12 }  { buf_1_address1 MemPortADDR2 1 4 }  { buf_1_ce1 MemPortCE2 1 1 }  { buf_1_we1 MemPortWE2 1 1 }  { buf_1_d1 MemPortDIN2 1 12 }  { buf_1_q1 MemPortDOUT2 0 12 } } }
	buf_2 { ap_memory {  { buf_2_address0 mem_address 1 4 }  { buf_2_ce0 mem_ce 1 1 }  { buf_2_we0 mem_we 1 1 }  { buf_2_d0 mem_din 1 12 }  { buf_2_q0 mem_dout 0 12 }  { buf_2_address1 MemPortADDR2 1 4 }  { buf_2_ce1 MemPortCE2 1 1 }  { buf_2_we1 MemPortWE2 1 1 }  { buf_2_d1 MemPortDIN2 1 12 }  { buf_2_q1 MemPortDOUT2 0 12 } } }
	buf_3 { ap_memory {  { buf_3_address0 mem_address 1 4 }  { buf_3_ce0 mem_ce 1 1 }  { buf_3_we0 mem_we 1 1 }  { buf_3_d0 mem_din 1 12 }  { buf_3_q0 mem_dout 0 12 }  { buf_3_address1 MemPortADDR2 1 4 }  { buf_3_ce1 MemPortCE2 1 1 }  { buf_3_we1 MemPortWE2 1 1 }  { buf_3_d1 MemPortDIN2 1 12 }  { buf_3_q1 MemPortDOUT2 0 12 } } }
	buf_4 { ap_memory {  { buf_4_address0 mem_address 1 4 }  { buf_4_ce0 mem_ce 1 1 }  { buf_4_we0 mem_we 1 1 }  { buf_4_d0 mem_din 1 12 }  { buf_4_q0 mem_dout 0 12 }  { buf_4_address1 MemPortADDR2 1 4 }  { buf_4_ce1 MemPortCE2 1 1 }  { buf_4_we1 MemPortWE2 1 1 }  { buf_4_d1 MemPortDIN2 1 12 }  { buf_4_q1 MemPortDOUT2 0 12 } } }
	buf_5 { ap_memory {  { buf_5_address0 mem_address 1 4 }  { buf_5_ce0 mem_ce 1 1 }  { buf_5_we0 mem_we 1 1 }  { buf_5_d0 mem_din 1 12 }  { buf_5_q0 mem_dout 0 12 }  { buf_5_address1 MemPortADDR2 1 4 }  { buf_5_ce1 MemPortCE2 1 1 }  { buf_5_we1 MemPortWE2 1 1 }  { buf_5_d1 MemPortDIN2 1 12 }  { buf_5_q1 MemPortDOUT2 0 12 } } }
	buf_6 { ap_memory {  { buf_6_address0 mem_address 1 4 }  { buf_6_ce0 mem_ce 1 1 }  { buf_6_we0 mem_we 1 1 }  { buf_6_d0 mem_din 1 12 }  { buf_6_q0 mem_dout 0 12 }  { buf_6_address1 MemPortADDR2 1 4 }  { buf_6_ce1 MemPortCE2 1 1 }  { buf_6_we1 MemPortWE2 1 1 }  { buf_6_d1 MemPortDIN2 1 12 }  { buf_6_q1 MemPortDOUT2 0 12 } } }
	buf_7 { ap_memory {  { buf_7_address0 mem_address 1 4 }  { buf_7_ce0 mem_ce 1 1 }  { buf_7_we0 mem_we 1 1 }  { buf_7_d0 mem_din 1 12 }  { buf_7_q0 mem_dout 0 12 }  { buf_7_address1 MemPortADDR2 1 4 }  { buf_7_ce1 MemPortCE2 1 1 }  { buf_7_we1 MemPortWE2 1 1 }  { buf_7_d1 MemPortDIN2 1 12 }  { buf_7_q1 MemPortDOUT2 0 12 } } }
	buf_8 { ap_memory {  { buf_8_address0 mem_address 1 4 }  { buf_8_ce0 mem_ce 1 1 }  { buf_8_we0 mem_we 1 1 }  { buf_8_d0 mem_din 1 12 }  { buf_8_q0 mem_dout 0 12 }  { buf_8_address1 MemPortADDR2 1 4 }  { buf_8_ce1 MemPortCE2 1 1 }  { buf_8_we1 MemPortWE2 1 1 }  { buf_8_d1 MemPortDIN2 1 12 }  { buf_8_q1 MemPortDOUT2 0 12 } } }
	buf_9 { ap_memory {  { buf_9_address0 mem_address 1 4 }  { buf_9_ce0 mem_ce 1 1 }  { buf_9_we0 mem_we 1 1 }  { buf_9_d0 mem_din 1 12 }  { buf_9_q0 mem_dout 0 12 }  { buf_9_address1 MemPortADDR2 1 4 }  { buf_9_ce1 MemPortCE2 1 1 }  { buf_9_we1 MemPortWE2 1 1 }  { buf_9_d1 MemPortDIN2 1 12 }  { buf_9_q1 MemPortDOUT2 0 12 } } }
	buf_10 { ap_memory {  { buf_10_address0 mem_address 1 4 }  { buf_10_ce0 mem_ce 1 1 }  { buf_10_we0 mem_we 1 1 }  { buf_10_d0 mem_din 1 12 }  { buf_10_q0 mem_dout 0 12 }  { buf_10_address1 MemPortADDR2 1 4 }  { buf_10_ce1 MemPortCE2 1 1 }  { buf_10_we1 MemPortWE2 1 1 }  { buf_10_d1 MemPortDIN2 1 12 }  { buf_10_q1 MemPortDOUT2 0 12 } } }
	buf_11 { ap_memory {  { buf_11_address0 mem_address 1 4 }  { buf_11_ce0 mem_ce 1 1 }  { buf_11_we0 mem_we 1 1 }  { buf_11_d0 mem_din 1 12 }  { buf_11_q0 mem_dout 0 12 }  { buf_11_address1 MemPortADDR2 1 4 }  { buf_11_ce1 MemPortCE2 1 1 }  { buf_11_we1 MemPortWE2 1 1 }  { buf_11_d1 MemPortDIN2 1 12 }  { buf_11_q1 MemPortDOUT2 0 12 } } }
	buf_12 { ap_memory {  { buf_12_address0 mem_address 1 4 }  { buf_12_ce0 mem_ce 1 1 }  { buf_12_we0 mem_we 1 1 }  { buf_12_d0 mem_din 1 12 }  { buf_12_q0 mem_dout 0 12 }  { buf_12_address1 MemPortADDR2 1 4 }  { buf_12_ce1 MemPortCE2 1 1 }  { buf_12_we1 MemPortWE2 1 1 }  { buf_12_d1 MemPortDIN2 1 12 }  { buf_12_q1 MemPortDOUT2 0 12 } } }
	buf_13 { ap_memory {  { buf_13_address0 mem_address 1 4 }  { buf_13_ce0 mem_ce 1 1 }  { buf_13_we0 mem_we 1 1 }  { buf_13_d0 mem_din 1 12 }  { buf_13_q0 mem_dout 0 12 }  { buf_13_address1 MemPortADDR2 1 4 }  { buf_13_ce1 MemPortCE2 1 1 }  { buf_13_we1 MemPortWE2 1 1 }  { buf_13_d1 MemPortDIN2 1 12 }  { buf_13_q1 MemPortDOUT2 0 12 } } }
	buf_14 { ap_memory {  { buf_14_address0 mem_address 1 4 }  { buf_14_ce0 mem_ce 1 1 }  { buf_14_we0 mem_we 1 1 }  { buf_14_d0 mem_din 1 12 }  { buf_14_q0 mem_dout 0 12 }  { buf_14_address1 MemPortADDR2 1 4 }  { buf_14_ce1 MemPortCE2 1 1 }  { buf_14_we1 MemPortWE2 1 1 }  { buf_14_d1 MemPortDIN2 1 12 }  { buf_14_q1 MemPortDOUT2 0 12 } } }
	buf_15 { ap_memory {  { buf_15_address0 mem_address 1 4 }  { buf_15_ce0 mem_ce 1 1 }  { buf_15_we0 mem_we 1 1 }  { buf_15_d0 mem_din 1 12 }  { buf_15_q0 mem_dout 0 12 }  { buf_15_address1 MemPortADDR2 1 4 }  { buf_15_ce1 MemPortCE2 1 1 }  { buf_15_we1 MemPortWE2 1 1 }  { buf_15_d1 MemPortDIN2 1 12 }  { buf_15_q1 MemPortDOUT2 0 12 } } }
}
