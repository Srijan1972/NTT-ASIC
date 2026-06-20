set moduleName inv_all_Pipeline_IN_RD
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
set C_modelName {inv_all_Pipeline_IN_RD}
set C_modelType { void 0 }
set C_modelArgList {
	{ C_15 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_14 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_13 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_12 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_11 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_10 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_9 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_8 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_7 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_6 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_5 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_4 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_3 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_2 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C_1 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ C int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ sC0 int 192 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "C_15", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_14", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_13", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_12", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_11", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_10", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_9", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_8", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_7", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_6", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sC0", "interface" : "fifo", "bitwidth" : 192, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sC0_dout sc_in sc_lv 192 signal 16 } 
	{ sC0_num_data_valid sc_in sc_lv 6 signal 16 } 
	{ sC0_fifo_cap sc_in sc_lv 6 signal 16 } 
	{ sC0_empty_n sc_in sc_logic 1 signal 16 } 
	{ sC0_read sc_out sc_logic 1 signal 16 } 
	{ C_15_address0 sc_out sc_lv 4 signal 0 } 
	{ C_15_ce0 sc_out sc_logic 1 signal 0 } 
	{ C_15_we0 sc_out sc_logic 1 signal 0 } 
	{ C_15_d0 sc_out sc_lv 12 signal 0 } 
	{ C_14_address0 sc_out sc_lv 4 signal 1 } 
	{ C_14_ce0 sc_out sc_logic 1 signal 1 } 
	{ C_14_we0 sc_out sc_logic 1 signal 1 } 
	{ C_14_d0 sc_out sc_lv 12 signal 1 } 
	{ C_13_address0 sc_out sc_lv 4 signal 2 } 
	{ C_13_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_13_we0 sc_out sc_logic 1 signal 2 } 
	{ C_13_d0 sc_out sc_lv 12 signal 2 } 
	{ C_12_address0 sc_out sc_lv 4 signal 3 } 
	{ C_12_ce0 sc_out sc_logic 1 signal 3 } 
	{ C_12_we0 sc_out sc_logic 1 signal 3 } 
	{ C_12_d0 sc_out sc_lv 12 signal 3 } 
	{ C_11_address0 sc_out sc_lv 4 signal 4 } 
	{ C_11_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_11_we0 sc_out sc_logic 1 signal 4 } 
	{ C_11_d0 sc_out sc_lv 12 signal 4 } 
	{ C_10_address0 sc_out sc_lv 4 signal 5 } 
	{ C_10_ce0 sc_out sc_logic 1 signal 5 } 
	{ C_10_we0 sc_out sc_logic 1 signal 5 } 
	{ C_10_d0 sc_out sc_lv 12 signal 5 } 
	{ C_9_address0 sc_out sc_lv 4 signal 6 } 
	{ C_9_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_9_we0 sc_out sc_logic 1 signal 6 } 
	{ C_9_d0 sc_out sc_lv 12 signal 6 } 
	{ C_8_address0 sc_out sc_lv 4 signal 7 } 
	{ C_8_ce0 sc_out sc_logic 1 signal 7 } 
	{ C_8_we0 sc_out sc_logic 1 signal 7 } 
	{ C_8_d0 sc_out sc_lv 12 signal 7 } 
	{ C_7_address0 sc_out sc_lv 4 signal 8 } 
	{ C_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ C_7_we0 sc_out sc_logic 1 signal 8 } 
	{ C_7_d0 sc_out sc_lv 12 signal 8 } 
	{ C_6_address0 sc_out sc_lv 4 signal 9 } 
	{ C_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ C_6_we0 sc_out sc_logic 1 signal 9 } 
	{ C_6_d0 sc_out sc_lv 12 signal 9 } 
	{ C_5_address0 sc_out sc_lv 4 signal 10 } 
	{ C_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ C_5_we0 sc_out sc_logic 1 signal 10 } 
	{ C_5_d0 sc_out sc_lv 12 signal 10 } 
	{ C_4_address0 sc_out sc_lv 4 signal 11 } 
	{ C_4_ce0 sc_out sc_logic 1 signal 11 } 
	{ C_4_we0 sc_out sc_logic 1 signal 11 } 
	{ C_4_d0 sc_out sc_lv 12 signal 11 } 
	{ C_3_address0 sc_out sc_lv 4 signal 12 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ C_3_we0 sc_out sc_logic 1 signal 12 } 
	{ C_3_d0 sc_out sc_lv 12 signal 12 } 
	{ C_2_address0 sc_out sc_lv 4 signal 13 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ C_2_we0 sc_out sc_logic 1 signal 13 } 
	{ C_2_d0 sc_out sc_lv 12 signal 13 } 
	{ C_1_address0 sc_out sc_lv 4 signal 14 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ C_1_we0 sc_out sc_logic 1 signal 14 } 
	{ C_1_d0 sc_out sc_lv 12 signal 14 } 
	{ C_address0 sc_out sc_lv 4 signal 15 } 
	{ C_ce0 sc_out sc_logic 1 signal 15 } 
	{ C_we0 sc_out sc_logic 1 signal 15 } 
	{ C_d0 sc_out sc_lv 12 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sC0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sC0", "role": "dout" }} , 
 	{ "name": "sC0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC0", "role": "num_data_valid" }} , 
 	{ "name": "sC0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC0", "role": "fifo_cap" }} , 
 	{ "name": "sC0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC0", "role": "empty_n" }} , 
 	{ "name": "sC0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC0", "role": "read" }} , 
 	{ "name": "C_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_15", "role": "address0" }} , 
 	{ "name": "C_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_15", "role": "ce0" }} , 
 	{ "name": "C_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_15", "role": "we0" }} , 
 	{ "name": "C_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_15", "role": "d0" }} , 
 	{ "name": "C_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_14", "role": "address0" }} , 
 	{ "name": "C_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_14", "role": "ce0" }} , 
 	{ "name": "C_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_14", "role": "we0" }} , 
 	{ "name": "C_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_14", "role": "d0" }} , 
 	{ "name": "C_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_13", "role": "address0" }} , 
 	{ "name": "C_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_13", "role": "ce0" }} , 
 	{ "name": "C_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_13", "role": "we0" }} , 
 	{ "name": "C_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_13", "role": "d0" }} , 
 	{ "name": "C_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_12", "role": "address0" }} , 
 	{ "name": "C_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_12", "role": "ce0" }} , 
 	{ "name": "C_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_12", "role": "we0" }} , 
 	{ "name": "C_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_12", "role": "d0" }} , 
 	{ "name": "C_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_11", "role": "address0" }} , 
 	{ "name": "C_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_11", "role": "ce0" }} , 
 	{ "name": "C_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_11", "role": "we0" }} , 
 	{ "name": "C_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_11", "role": "d0" }} , 
 	{ "name": "C_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_10", "role": "address0" }} , 
 	{ "name": "C_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_10", "role": "ce0" }} , 
 	{ "name": "C_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_10", "role": "we0" }} , 
 	{ "name": "C_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_10", "role": "d0" }} , 
 	{ "name": "C_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_9", "role": "address0" }} , 
 	{ "name": "C_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_9", "role": "ce0" }} , 
 	{ "name": "C_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_9", "role": "we0" }} , 
 	{ "name": "C_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_9", "role": "d0" }} , 
 	{ "name": "C_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_8", "role": "address0" }} , 
 	{ "name": "C_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_8", "role": "ce0" }} , 
 	{ "name": "C_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_8", "role": "we0" }} , 
 	{ "name": "C_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_8", "role": "d0" }} , 
 	{ "name": "C_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_7", "role": "address0" }} , 
 	{ "name": "C_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "ce0" }} , 
 	{ "name": "C_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_7", "role": "we0" }} , 
 	{ "name": "C_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_7", "role": "d0" }} , 
 	{ "name": "C_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_6", "role": "address0" }} , 
 	{ "name": "C_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "ce0" }} , 
 	{ "name": "C_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_6", "role": "we0" }} , 
 	{ "name": "C_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_6", "role": "d0" }} , 
 	{ "name": "C_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_5", "role": "address0" }} , 
 	{ "name": "C_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "ce0" }} , 
 	{ "name": "C_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_5", "role": "we0" }} , 
 	{ "name": "C_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_5", "role": "d0" }} , 
 	{ "name": "C_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_4", "role": "address0" }} , 
 	{ "name": "C_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "ce0" }} , 
 	{ "name": "C_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_4", "role": "we0" }} , 
 	{ "name": "C_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_4", "role": "d0" }} , 
 	{ "name": "C_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_3", "role": "address0" }} , 
 	{ "name": "C_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce0" }} , 
 	{ "name": "C_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "we0" }} , 
 	{ "name": "C_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_3", "role": "d0" }} , 
 	{ "name": "C_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_2", "role": "address0" }} , 
 	{ "name": "C_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce0" }} , 
 	{ "name": "C_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "we0" }} , 
 	{ "name": "C_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_2", "role": "d0" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "we0" }} , 
 	{ "name": "C_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_1", "role": "d0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "inv_all_Pipeline_IN_RD",
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
			{"Name" : "C_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sC0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sC0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "IN_RD", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inv_all_Pipeline_IN_RD {
		C_15 {Type O LastRead -1 FirstWrite 1}
		C_14 {Type O LastRead -1 FirstWrite 1}
		C_13 {Type O LastRead -1 FirstWrite 1}
		C_12 {Type O LastRead -1 FirstWrite 1}
		C_11 {Type O LastRead -1 FirstWrite 1}
		C_10 {Type O LastRead -1 FirstWrite 1}
		C_9 {Type O LastRead -1 FirstWrite 1}
		C_8 {Type O LastRead -1 FirstWrite 1}
		C_7 {Type O LastRead -1 FirstWrite 1}
		C_6 {Type O LastRead -1 FirstWrite 1}
		C_5 {Type O LastRead -1 FirstWrite 1}
		C_4 {Type O LastRead -1 FirstWrite 1}
		C_3 {Type O LastRead -1 FirstWrite 1}
		C_2 {Type O LastRead -1 FirstWrite 1}
		C_1 {Type O LastRead -1 FirstWrite 1}
		C {Type O LastRead -1 FirstWrite 1}
		sC0 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C_15 { ap_memory {  { C_15_address0 mem_address 1 4 }  { C_15_ce0 mem_ce 1 1 }  { C_15_we0 mem_we 1 1 }  { C_15_d0 mem_din 1 12 } } }
	C_14 { ap_memory {  { C_14_address0 mem_address 1 4 }  { C_14_ce0 mem_ce 1 1 }  { C_14_we0 mem_we 1 1 }  { C_14_d0 mem_din 1 12 } } }
	C_13 { ap_memory {  { C_13_address0 mem_address 1 4 }  { C_13_ce0 mem_ce 1 1 }  { C_13_we0 mem_we 1 1 }  { C_13_d0 mem_din 1 12 } } }
	C_12 { ap_memory {  { C_12_address0 mem_address 1 4 }  { C_12_ce0 mem_ce 1 1 }  { C_12_we0 mem_we 1 1 }  { C_12_d0 mem_din 1 12 } } }
	C_11 { ap_memory {  { C_11_address0 mem_address 1 4 }  { C_11_ce0 mem_ce 1 1 }  { C_11_we0 mem_we 1 1 }  { C_11_d0 mem_din 1 12 } } }
	C_10 { ap_memory {  { C_10_address0 mem_address 1 4 }  { C_10_ce0 mem_ce 1 1 }  { C_10_we0 mem_we 1 1 }  { C_10_d0 mem_din 1 12 } } }
	C_9 { ap_memory {  { C_9_address0 mem_address 1 4 }  { C_9_ce0 mem_ce 1 1 }  { C_9_we0 mem_we 1 1 }  { C_9_d0 mem_din 1 12 } } }
	C_8 { ap_memory {  { C_8_address0 mem_address 1 4 }  { C_8_ce0 mem_ce 1 1 }  { C_8_we0 mem_we 1 1 }  { C_8_d0 mem_din 1 12 } } }
	C_7 { ap_memory {  { C_7_address0 mem_address 1 4 }  { C_7_ce0 mem_ce 1 1 }  { C_7_we0 mem_we 1 1 }  { C_7_d0 mem_din 1 12 } } }
	C_6 { ap_memory {  { C_6_address0 mem_address 1 4 }  { C_6_ce0 mem_ce 1 1 }  { C_6_we0 mem_we 1 1 }  { C_6_d0 mem_din 1 12 } } }
	C_5 { ap_memory {  { C_5_address0 mem_address 1 4 }  { C_5_ce0 mem_ce 1 1 }  { C_5_we0 mem_we 1 1 }  { C_5_d0 mem_din 1 12 } } }
	C_4 { ap_memory {  { C_4_address0 mem_address 1 4 }  { C_4_ce0 mem_ce 1 1 }  { C_4_we0 mem_we 1 1 }  { C_4_d0 mem_din 1 12 } } }
	C_3 { ap_memory {  { C_3_address0 mem_address 1 4 }  { C_3_ce0 mem_ce 1 1 }  { C_3_we0 mem_we 1 1 }  { C_3_d0 mem_din 1 12 } } }
	C_2 { ap_memory {  { C_2_address0 mem_address 1 4 }  { C_2_ce0 mem_ce 1 1 }  { C_2_we0 mem_we 1 1 }  { C_2_d0 mem_din 1 12 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 4 }  { C_1_ce0 mem_ce 1 1 }  { C_1_we0 mem_we 1 1 }  { C_1_d0 mem_din 1 12 } } }
	C { ap_memory {  { C_address0 mem_address 1 4 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 12 } } }
	sC0 { ap_fifo {  { sC0_dout fifo_data_in 0 192 }  { sC0_num_data_valid fifo_status_num_data_valid 0 6 }  { sC0_fifo_cap fifo_update 0 6 }  { sC0_empty_n fifo_status 0 1 }  { sC0_read fifo_port_we 1 1 } } }
}
