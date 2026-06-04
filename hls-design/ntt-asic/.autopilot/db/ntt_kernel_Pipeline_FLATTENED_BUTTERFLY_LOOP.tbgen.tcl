set moduleName ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP
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
set C_modelName {ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ half_n int 31 regular  }
	{ add_ln127 int 12 regular  }
	{ empty_41 int 12 regular  }
	{ empty_42 int 12 regular  }
	{ local_twiddles int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ local_twiddles_1 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ local_twiddles_2 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ local_twiddles_3 int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ ping int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_1 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_2 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_3 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_4 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_5 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_6 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ ping_7 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_1 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_2 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_3 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_4 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_5 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_6 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ pong_7 int 32 regular {array 512 { 1 2 } 1 1 }  }
	{ use_ping_as_input int 1 regular  }
	{ q_inv int 32 regular  }
	{ conv5_i int 32 regular  }
	{ q int 32 regular  }
	{ half_n_1 int 31 regular  }
	{ empty int 11 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "half_n", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln127", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "empty_42", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_twiddles", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_twiddles_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_twiddles_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_twiddles_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ping_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "use_ping_as_input", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "q_inv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv5_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "q", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "half_n_1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 168
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ half_n sc_in sc_lv 31 signal 0 } 
	{ add_ln127 sc_in sc_lv 12 signal 1 } 
	{ empty_41 sc_in sc_lv 12 signal 2 } 
	{ empty_42 sc_in sc_lv 12 signal 3 } 
	{ local_twiddles_address0 sc_out sc_lv 10 signal 4 } 
	{ local_twiddles_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_twiddles_q0 sc_in sc_lv 32 signal 4 } 
	{ local_twiddles_address1 sc_out sc_lv 10 signal 4 } 
	{ local_twiddles_ce1 sc_out sc_logic 1 signal 4 } 
	{ local_twiddles_q1 sc_in sc_lv 32 signal 4 } 
	{ local_twiddles_1_address0 sc_out sc_lv 10 signal 5 } 
	{ local_twiddles_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_twiddles_1_q0 sc_in sc_lv 32 signal 5 } 
	{ local_twiddles_1_address1 sc_out sc_lv 10 signal 5 } 
	{ local_twiddles_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ local_twiddles_1_q1 sc_in sc_lv 32 signal 5 } 
	{ local_twiddles_2_address0 sc_out sc_lv 10 signal 6 } 
	{ local_twiddles_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_twiddles_2_q0 sc_in sc_lv 32 signal 6 } 
	{ local_twiddles_2_address1 sc_out sc_lv 10 signal 6 } 
	{ local_twiddles_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ local_twiddles_2_q1 sc_in sc_lv 32 signal 6 } 
	{ local_twiddles_3_address0 sc_out sc_lv 10 signal 7 } 
	{ local_twiddles_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_twiddles_3_q0 sc_in sc_lv 32 signal 7 } 
	{ local_twiddles_3_address1 sc_out sc_lv 10 signal 7 } 
	{ local_twiddles_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ local_twiddles_3_q1 sc_in sc_lv 32 signal 7 } 
	{ ping_address0 sc_out sc_lv 9 signal 8 } 
	{ ping_ce0 sc_out sc_logic 1 signal 8 } 
	{ ping_q0 sc_in sc_lv 32 signal 8 } 
	{ ping_address1 sc_out sc_lv 9 signal 8 } 
	{ ping_ce1 sc_out sc_logic 1 signal 8 } 
	{ ping_we1 sc_out sc_logic 1 signal 8 } 
	{ ping_d1 sc_out sc_lv 32 signal 8 } 
	{ ping_q1 sc_in sc_lv 32 signal 8 } 
	{ ping_1_address0 sc_out sc_lv 9 signal 9 } 
	{ ping_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ ping_1_q0 sc_in sc_lv 32 signal 9 } 
	{ ping_1_address1 sc_out sc_lv 9 signal 9 } 
	{ ping_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ ping_1_we1 sc_out sc_logic 1 signal 9 } 
	{ ping_1_d1 sc_out sc_lv 32 signal 9 } 
	{ ping_1_q1 sc_in sc_lv 32 signal 9 } 
	{ ping_2_address0 sc_out sc_lv 9 signal 10 } 
	{ ping_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ ping_2_q0 sc_in sc_lv 32 signal 10 } 
	{ ping_2_address1 sc_out sc_lv 9 signal 10 } 
	{ ping_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ ping_2_we1 sc_out sc_logic 1 signal 10 } 
	{ ping_2_d1 sc_out sc_lv 32 signal 10 } 
	{ ping_2_q1 sc_in sc_lv 32 signal 10 } 
	{ ping_3_address0 sc_out sc_lv 9 signal 11 } 
	{ ping_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ ping_3_q0 sc_in sc_lv 32 signal 11 } 
	{ ping_3_address1 sc_out sc_lv 9 signal 11 } 
	{ ping_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ ping_3_we1 sc_out sc_logic 1 signal 11 } 
	{ ping_3_d1 sc_out sc_lv 32 signal 11 } 
	{ ping_3_q1 sc_in sc_lv 32 signal 11 } 
	{ ping_4_address0 sc_out sc_lv 9 signal 12 } 
	{ ping_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ ping_4_q0 sc_in sc_lv 32 signal 12 } 
	{ ping_4_address1 sc_out sc_lv 9 signal 12 } 
	{ ping_4_ce1 sc_out sc_logic 1 signal 12 } 
	{ ping_4_we1 sc_out sc_logic 1 signal 12 } 
	{ ping_4_d1 sc_out sc_lv 32 signal 12 } 
	{ ping_4_q1 sc_in sc_lv 32 signal 12 } 
	{ ping_5_address0 sc_out sc_lv 9 signal 13 } 
	{ ping_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ ping_5_q0 sc_in sc_lv 32 signal 13 } 
	{ ping_5_address1 sc_out sc_lv 9 signal 13 } 
	{ ping_5_ce1 sc_out sc_logic 1 signal 13 } 
	{ ping_5_we1 sc_out sc_logic 1 signal 13 } 
	{ ping_5_d1 sc_out sc_lv 32 signal 13 } 
	{ ping_5_q1 sc_in sc_lv 32 signal 13 } 
	{ ping_6_address0 sc_out sc_lv 9 signal 14 } 
	{ ping_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ ping_6_q0 sc_in sc_lv 32 signal 14 } 
	{ ping_6_address1 sc_out sc_lv 9 signal 14 } 
	{ ping_6_ce1 sc_out sc_logic 1 signal 14 } 
	{ ping_6_we1 sc_out sc_logic 1 signal 14 } 
	{ ping_6_d1 sc_out sc_lv 32 signal 14 } 
	{ ping_6_q1 sc_in sc_lv 32 signal 14 } 
	{ ping_7_address0 sc_out sc_lv 9 signal 15 } 
	{ ping_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ ping_7_q0 sc_in sc_lv 32 signal 15 } 
	{ ping_7_address1 sc_out sc_lv 9 signal 15 } 
	{ ping_7_ce1 sc_out sc_logic 1 signal 15 } 
	{ ping_7_we1 sc_out sc_logic 1 signal 15 } 
	{ ping_7_d1 sc_out sc_lv 32 signal 15 } 
	{ ping_7_q1 sc_in sc_lv 32 signal 15 } 
	{ pong_address0 sc_out sc_lv 9 signal 16 } 
	{ pong_ce0 sc_out sc_logic 1 signal 16 } 
	{ pong_q0 sc_in sc_lv 32 signal 16 } 
	{ pong_address1 sc_out sc_lv 9 signal 16 } 
	{ pong_ce1 sc_out sc_logic 1 signal 16 } 
	{ pong_we1 sc_out sc_logic 1 signal 16 } 
	{ pong_d1 sc_out sc_lv 32 signal 16 } 
	{ pong_q1 sc_in sc_lv 32 signal 16 } 
	{ pong_1_address0 sc_out sc_lv 9 signal 17 } 
	{ pong_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ pong_1_q0 sc_in sc_lv 32 signal 17 } 
	{ pong_1_address1 sc_out sc_lv 9 signal 17 } 
	{ pong_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ pong_1_we1 sc_out sc_logic 1 signal 17 } 
	{ pong_1_d1 sc_out sc_lv 32 signal 17 } 
	{ pong_1_q1 sc_in sc_lv 32 signal 17 } 
	{ pong_2_address0 sc_out sc_lv 9 signal 18 } 
	{ pong_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ pong_2_q0 sc_in sc_lv 32 signal 18 } 
	{ pong_2_address1 sc_out sc_lv 9 signal 18 } 
	{ pong_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ pong_2_we1 sc_out sc_logic 1 signal 18 } 
	{ pong_2_d1 sc_out sc_lv 32 signal 18 } 
	{ pong_2_q1 sc_in sc_lv 32 signal 18 } 
	{ pong_3_address0 sc_out sc_lv 9 signal 19 } 
	{ pong_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ pong_3_q0 sc_in sc_lv 32 signal 19 } 
	{ pong_3_address1 sc_out sc_lv 9 signal 19 } 
	{ pong_3_ce1 sc_out sc_logic 1 signal 19 } 
	{ pong_3_we1 sc_out sc_logic 1 signal 19 } 
	{ pong_3_d1 sc_out sc_lv 32 signal 19 } 
	{ pong_3_q1 sc_in sc_lv 32 signal 19 } 
	{ pong_4_address0 sc_out sc_lv 9 signal 20 } 
	{ pong_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ pong_4_q0 sc_in sc_lv 32 signal 20 } 
	{ pong_4_address1 sc_out sc_lv 9 signal 20 } 
	{ pong_4_ce1 sc_out sc_logic 1 signal 20 } 
	{ pong_4_we1 sc_out sc_logic 1 signal 20 } 
	{ pong_4_d1 sc_out sc_lv 32 signal 20 } 
	{ pong_4_q1 sc_in sc_lv 32 signal 20 } 
	{ pong_5_address0 sc_out sc_lv 9 signal 21 } 
	{ pong_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ pong_5_q0 sc_in sc_lv 32 signal 21 } 
	{ pong_5_address1 sc_out sc_lv 9 signal 21 } 
	{ pong_5_ce1 sc_out sc_logic 1 signal 21 } 
	{ pong_5_we1 sc_out sc_logic 1 signal 21 } 
	{ pong_5_d1 sc_out sc_lv 32 signal 21 } 
	{ pong_5_q1 sc_in sc_lv 32 signal 21 } 
	{ pong_6_address0 sc_out sc_lv 9 signal 22 } 
	{ pong_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ pong_6_q0 sc_in sc_lv 32 signal 22 } 
	{ pong_6_address1 sc_out sc_lv 9 signal 22 } 
	{ pong_6_ce1 sc_out sc_logic 1 signal 22 } 
	{ pong_6_we1 sc_out sc_logic 1 signal 22 } 
	{ pong_6_d1 sc_out sc_lv 32 signal 22 } 
	{ pong_6_q1 sc_in sc_lv 32 signal 22 } 
	{ pong_7_address0 sc_out sc_lv 9 signal 23 } 
	{ pong_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ pong_7_q0 sc_in sc_lv 32 signal 23 } 
	{ pong_7_address1 sc_out sc_lv 9 signal 23 } 
	{ pong_7_ce1 sc_out sc_logic 1 signal 23 } 
	{ pong_7_we1 sc_out sc_logic 1 signal 23 } 
	{ pong_7_d1 sc_out sc_lv 32 signal 23 } 
	{ pong_7_q1 sc_in sc_lv 32 signal 23 } 
	{ use_ping_as_input sc_in sc_lv 1 signal 24 } 
	{ q_inv sc_in sc_lv 32 signal 25 } 
	{ conv5_i sc_in sc_lv 32 signal 26 } 
	{ q sc_in sc_lv 32 signal 27 } 
	{ half_n_1 sc_in sc_lv 31 signal 28 } 
	{ empty sc_in sc_lv 11 signal 29 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "half_n", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "half_n", "role": "default" }} , 
 	{ "name": "add_ln127", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "add_ln127", "role": "default" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "empty_42", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "empty_42", "role": "default" }} , 
 	{ "name": "local_twiddles_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles", "role": "address0" }} , 
 	{ "name": "local_twiddles_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles", "role": "ce0" }} , 
 	{ "name": "local_twiddles_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles", "role": "q0" }} , 
 	{ "name": "local_twiddles_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles", "role": "address1" }} , 
 	{ "name": "local_twiddles_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles", "role": "ce1" }} , 
 	{ "name": "local_twiddles_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles", "role": "q1" }} , 
 	{ "name": "local_twiddles_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles_1", "role": "address0" }} , 
 	{ "name": "local_twiddles_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles_1", "role": "ce0" }} , 
 	{ "name": "local_twiddles_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles_1", "role": "q0" }} , 
 	{ "name": "local_twiddles_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles_1", "role": "address1" }} , 
 	{ "name": "local_twiddles_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles_1", "role": "ce1" }} , 
 	{ "name": "local_twiddles_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles_1", "role": "q1" }} , 
 	{ "name": "local_twiddles_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles_2", "role": "address0" }} , 
 	{ "name": "local_twiddles_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles_2", "role": "ce0" }} , 
 	{ "name": "local_twiddles_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles_2", "role": "q0" }} , 
 	{ "name": "local_twiddles_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles_2", "role": "address1" }} , 
 	{ "name": "local_twiddles_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles_2", "role": "ce1" }} , 
 	{ "name": "local_twiddles_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles_2", "role": "q1" }} , 
 	{ "name": "local_twiddles_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles_3", "role": "address0" }} , 
 	{ "name": "local_twiddles_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles_3", "role": "ce0" }} , 
 	{ "name": "local_twiddles_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles_3", "role": "q0" }} , 
 	{ "name": "local_twiddles_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_twiddles_3", "role": "address1" }} , 
 	{ "name": "local_twiddles_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles_3", "role": "ce1" }} , 
 	{ "name": "local_twiddles_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles_3", "role": "q1" }} , 
 	{ "name": "ping_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping", "role": "address0" }} , 
 	{ "name": "ping_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "ce0" }} , 
 	{ "name": "ping_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "q0" }} , 
 	{ "name": "ping_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping", "role": "address1" }} , 
 	{ "name": "ping_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "ce1" }} , 
 	{ "name": "ping_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "we1" }} , 
 	{ "name": "ping_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "d1" }} , 
 	{ "name": "ping_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "q1" }} , 
 	{ "name": "ping_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_1", "role": "address0" }} , 
 	{ "name": "ping_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_1", "role": "ce0" }} , 
 	{ "name": "ping_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_1", "role": "q0" }} , 
 	{ "name": "ping_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_1", "role": "address1" }} , 
 	{ "name": "ping_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_1", "role": "ce1" }} , 
 	{ "name": "ping_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_1", "role": "we1" }} , 
 	{ "name": "ping_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_1", "role": "d1" }} , 
 	{ "name": "ping_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_1", "role": "q1" }} , 
 	{ "name": "ping_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_2", "role": "address0" }} , 
 	{ "name": "ping_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_2", "role": "ce0" }} , 
 	{ "name": "ping_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_2", "role": "q0" }} , 
 	{ "name": "ping_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_2", "role": "address1" }} , 
 	{ "name": "ping_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_2", "role": "ce1" }} , 
 	{ "name": "ping_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_2", "role": "we1" }} , 
 	{ "name": "ping_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_2", "role": "d1" }} , 
 	{ "name": "ping_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_2", "role": "q1" }} , 
 	{ "name": "ping_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_3", "role": "address0" }} , 
 	{ "name": "ping_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_3", "role": "ce0" }} , 
 	{ "name": "ping_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_3", "role": "q0" }} , 
 	{ "name": "ping_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_3", "role": "address1" }} , 
 	{ "name": "ping_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_3", "role": "ce1" }} , 
 	{ "name": "ping_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_3", "role": "we1" }} , 
 	{ "name": "ping_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_3", "role": "d1" }} , 
 	{ "name": "ping_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_3", "role": "q1" }} , 
 	{ "name": "ping_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_4", "role": "address0" }} , 
 	{ "name": "ping_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_4", "role": "ce0" }} , 
 	{ "name": "ping_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_4", "role": "q0" }} , 
 	{ "name": "ping_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_4", "role": "address1" }} , 
 	{ "name": "ping_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_4", "role": "ce1" }} , 
 	{ "name": "ping_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_4", "role": "we1" }} , 
 	{ "name": "ping_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_4", "role": "d1" }} , 
 	{ "name": "ping_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_4", "role": "q1" }} , 
 	{ "name": "ping_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_5", "role": "address0" }} , 
 	{ "name": "ping_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_5", "role": "ce0" }} , 
 	{ "name": "ping_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_5", "role": "q0" }} , 
 	{ "name": "ping_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_5", "role": "address1" }} , 
 	{ "name": "ping_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_5", "role": "ce1" }} , 
 	{ "name": "ping_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_5", "role": "we1" }} , 
 	{ "name": "ping_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_5", "role": "d1" }} , 
 	{ "name": "ping_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_5", "role": "q1" }} , 
 	{ "name": "ping_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_6", "role": "address0" }} , 
 	{ "name": "ping_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_6", "role": "ce0" }} , 
 	{ "name": "ping_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_6", "role": "q0" }} , 
 	{ "name": "ping_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_6", "role": "address1" }} , 
 	{ "name": "ping_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_6", "role": "ce1" }} , 
 	{ "name": "ping_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_6", "role": "we1" }} , 
 	{ "name": "ping_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_6", "role": "d1" }} , 
 	{ "name": "ping_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_6", "role": "q1" }} , 
 	{ "name": "ping_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_7", "role": "address0" }} , 
 	{ "name": "ping_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_7", "role": "ce0" }} , 
 	{ "name": "ping_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_7", "role": "q0" }} , 
 	{ "name": "ping_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ping_7", "role": "address1" }} , 
 	{ "name": "ping_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_7", "role": "ce1" }} , 
 	{ "name": "ping_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping_7", "role": "we1" }} , 
 	{ "name": "ping_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_7", "role": "d1" }} , 
 	{ "name": "ping_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping_7", "role": "q1" }} , 
 	{ "name": "pong_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong", "role": "address0" }} , 
 	{ "name": "pong_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "ce0" }} , 
 	{ "name": "pong_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "q0" }} , 
 	{ "name": "pong_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong", "role": "address1" }} , 
 	{ "name": "pong_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "ce1" }} , 
 	{ "name": "pong_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "we1" }} , 
 	{ "name": "pong_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "d1" }} , 
 	{ "name": "pong_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "q1" }} , 
 	{ "name": "pong_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_1", "role": "address0" }} , 
 	{ "name": "pong_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_1", "role": "ce0" }} , 
 	{ "name": "pong_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_1", "role": "q0" }} , 
 	{ "name": "pong_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_1", "role": "address1" }} , 
 	{ "name": "pong_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_1", "role": "ce1" }} , 
 	{ "name": "pong_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_1", "role": "we1" }} , 
 	{ "name": "pong_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_1", "role": "d1" }} , 
 	{ "name": "pong_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_1", "role": "q1" }} , 
 	{ "name": "pong_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_2", "role": "address0" }} , 
 	{ "name": "pong_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_2", "role": "ce0" }} , 
 	{ "name": "pong_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_2", "role": "q0" }} , 
 	{ "name": "pong_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_2", "role": "address1" }} , 
 	{ "name": "pong_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_2", "role": "ce1" }} , 
 	{ "name": "pong_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_2", "role": "we1" }} , 
 	{ "name": "pong_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_2", "role": "d1" }} , 
 	{ "name": "pong_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_2", "role": "q1" }} , 
 	{ "name": "pong_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_3", "role": "address0" }} , 
 	{ "name": "pong_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_3", "role": "ce0" }} , 
 	{ "name": "pong_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_3", "role": "q0" }} , 
 	{ "name": "pong_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_3", "role": "address1" }} , 
 	{ "name": "pong_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_3", "role": "ce1" }} , 
 	{ "name": "pong_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_3", "role": "we1" }} , 
 	{ "name": "pong_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_3", "role": "d1" }} , 
 	{ "name": "pong_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_3", "role": "q1" }} , 
 	{ "name": "pong_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_4", "role": "address0" }} , 
 	{ "name": "pong_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_4", "role": "ce0" }} , 
 	{ "name": "pong_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_4", "role": "q0" }} , 
 	{ "name": "pong_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_4", "role": "address1" }} , 
 	{ "name": "pong_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_4", "role": "ce1" }} , 
 	{ "name": "pong_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_4", "role": "we1" }} , 
 	{ "name": "pong_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_4", "role": "d1" }} , 
 	{ "name": "pong_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_4", "role": "q1" }} , 
 	{ "name": "pong_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_5", "role": "address0" }} , 
 	{ "name": "pong_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_5", "role": "ce0" }} , 
 	{ "name": "pong_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_5", "role": "q0" }} , 
 	{ "name": "pong_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_5", "role": "address1" }} , 
 	{ "name": "pong_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_5", "role": "ce1" }} , 
 	{ "name": "pong_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_5", "role": "we1" }} , 
 	{ "name": "pong_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_5", "role": "d1" }} , 
 	{ "name": "pong_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_5", "role": "q1" }} , 
 	{ "name": "pong_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_6", "role": "address0" }} , 
 	{ "name": "pong_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_6", "role": "ce0" }} , 
 	{ "name": "pong_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_6", "role": "q0" }} , 
 	{ "name": "pong_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_6", "role": "address1" }} , 
 	{ "name": "pong_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_6", "role": "ce1" }} , 
 	{ "name": "pong_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_6", "role": "we1" }} , 
 	{ "name": "pong_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_6", "role": "d1" }} , 
 	{ "name": "pong_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_6", "role": "q1" }} , 
 	{ "name": "pong_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_7", "role": "address0" }} , 
 	{ "name": "pong_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_7", "role": "ce0" }} , 
 	{ "name": "pong_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_7", "role": "q0" }} , 
 	{ "name": "pong_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pong_7", "role": "address1" }} , 
 	{ "name": "pong_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_7", "role": "ce1" }} , 
 	{ "name": "pong_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong_7", "role": "we1" }} , 
 	{ "name": "pong_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_7", "role": "d1" }} , 
 	{ "name": "pong_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong_7", "role": "q1" }} , 
 	{ "name": "use_ping_as_input", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "use_ping_as_input", "role": "default" }} , 
 	{ "name": "q_inv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q_inv", "role": "default" }} , 
 	{ "name": "conv5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv5_i", "role": "default" }} , 
 	{ "name": "q", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "default" }} , 
 	{ "name": "half_n_1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "half_n_1", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "627", "EstimateLatencyMax" : "9747",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "half_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln127", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_twiddles", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_twiddles_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_twiddles_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_twiddles_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ping_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "use_ping_as_input", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_inv", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv5_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "None", "Direction" : "I"},
			{"Name" : "half_n_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FLATTENED_BUTTERFLY_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state19", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state19_blk", "QuitState" : "ap_ST_fsm_state19", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state19_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_4_1_U27", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_4_1_U28", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U29", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U30", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U31", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U32", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U33", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U34", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U35", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U36", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U37", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U38", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U39", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U40", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_2_1_U41", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_2_1_U42", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U43", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U44", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_2_1_U45", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_32_1_1_U46", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_32_1_1_U47", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_2_1_U48", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U49", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U50", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP {
		half_n {Type I LastRead 0 FirstWrite -1}
		add_ln127 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		local_twiddles {Type I LastRead 2 FirstWrite -1}
		local_twiddles_1 {Type I LastRead 2 FirstWrite -1}
		local_twiddles_2 {Type I LastRead 2 FirstWrite -1}
		local_twiddles_3 {Type I LastRead 2 FirstWrite -1}
		ping {Type IO LastRead 4 FirstWrite 11}
		ping_1 {Type IO LastRead 3 FirstWrite 11}
		ping_2 {Type IO LastRead 3 FirstWrite 11}
		ping_3 {Type IO LastRead 3 FirstWrite 11}
		ping_4 {Type IO LastRead 4 FirstWrite 11}
		ping_5 {Type IO LastRead 3 FirstWrite 11}
		ping_6 {Type IO LastRead 3 FirstWrite 11}
		ping_7 {Type IO LastRead 3 FirstWrite 11}
		pong {Type IO LastRead 4 FirstWrite 11}
		pong_1 {Type IO LastRead 3 FirstWrite 11}
		pong_2 {Type IO LastRead 3 FirstWrite 11}
		pong_3 {Type IO LastRead 3 FirstWrite 11}
		pong_4 {Type IO LastRead 4 FirstWrite 11}
		pong_5 {Type IO LastRead 3 FirstWrite 11}
		pong_6 {Type IO LastRead 3 FirstWrite 11}
		pong_7 {Type IO LastRead 3 FirstWrite 11}
		use_ping_as_input {Type I LastRead 0 FirstWrite -1}
		q_inv {Type I LastRead 0 FirstWrite -1}
		conv5_i {Type I LastRead 0 FirstWrite -1}
		q {Type I LastRead 0 FirstWrite -1}
		half_n_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "627", "Max" : "9747"}
	, {"Name" : "Interval", "Min" : "627", "Max" : "9747"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	half_n { ap_none {  { half_n in_data 0 31 } } }
	add_ln127 { ap_none {  { add_ln127 in_data 0 12 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 12 } } }
	empty_42 { ap_none {  { empty_42 in_data 0 12 } } }
	local_twiddles { ap_memory {  { local_twiddles_address0 mem_address 1 10 }  { local_twiddles_ce0 mem_ce 1 1 }  { local_twiddles_q0 in_data 0 32 }  { local_twiddles_address1 MemPortADDR2 1 10 }  { local_twiddles_ce1 MemPortCE2 1 1 }  { local_twiddles_q1 in_data 0 32 } } }
	local_twiddles_1 { ap_memory {  { local_twiddles_1_address0 mem_address 1 10 }  { local_twiddles_1_ce0 mem_ce 1 1 }  { local_twiddles_1_q0 in_data 0 32 }  { local_twiddles_1_address1 MemPortADDR2 1 10 }  { local_twiddles_1_ce1 MemPortCE2 1 1 }  { local_twiddles_1_q1 in_data 0 32 } } }
	local_twiddles_2 { ap_memory {  { local_twiddles_2_address0 mem_address 1 10 }  { local_twiddles_2_ce0 mem_ce 1 1 }  { local_twiddles_2_q0 in_data 0 32 }  { local_twiddles_2_address1 MemPortADDR2 1 10 }  { local_twiddles_2_ce1 MemPortCE2 1 1 }  { local_twiddles_2_q1 in_data 0 32 } } }
	local_twiddles_3 { ap_memory {  { local_twiddles_3_address0 mem_address 1 10 }  { local_twiddles_3_ce0 mem_ce 1 1 }  { local_twiddles_3_q0 in_data 0 32 }  { local_twiddles_3_address1 MemPortADDR2 1 10 }  { local_twiddles_3_ce1 MemPortCE2 1 1 }  { local_twiddles_3_q1 in_data 0 32 } } }
	ping { ap_memory {  { ping_address0 mem_address 1 9 }  { ping_ce0 mem_ce 1 1 }  { ping_q0 mem_dout 0 32 }  { ping_address1 MemPortADDR2 1 9 }  { ping_ce1 MemPortCE2 1 1 }  { ping_we1 MemPortWE2 1 1 }  { ping_d1 MemPortDIN2 1 32 }  { ping_q1 in_data 0 32 } } }
	ping_1 { ap_memory {  { ping_1_address0 mem_address 1 9 }  { ping_1_ce0 mem_ce 1 1 }  { ping_1_q0 mem_dout 0 32 }  { ping_1_address1 MemPortADDR2 1 9 }  { ping_1_ce1 MemPortCE2 1 1 }  { ping_1_we1 MemPortWE2 1 1 }  { ping_1_d1 MemPortDIN2 1 32 }  { ping_1_q1 in_data 0 32 } } }
	ping_2 { ap_memory {  { ping_2_address0 mem_address 1 9 }  { ping_2_ce0 mem_ce 1 1 }  { ping_2_q0 mem_dout 0 32 }  { ping_2_address1 MemPortADDR2 1 9 }  { ping_2_ce1 MemPortCE2 1 1 }  { ping_2_we1 MemPortWE2 1 1 }  { ping_2_d1 MemPortDIN2 1 32 }  { ping_2_q1 in_data 0 32 } } }
	ping_3 { ap_memory {  { ping_3_address0 mem_address 1 9 }  { ping_3_ce0 mem_ce 1 1 }  { ping_3_q0 mem_dout 0 32 }  { ping_3_address1 MemPortADDR2 1 9 }  { ping_3_ce1 MemPortCE2 1 1 }  { ping_3_we1 MemPortWE2 1 1 }  { ping_3_d1 MemPortDIN2 1 32 }  { ping_3_q1 in_data 0 32 } } }
	ping_4 { ap_memory {  { ping_4_address0 mem_address 1 9 }  { ping_4_ce0 mem_ce 1 1 }  { ping_4_q0 mem_dout 0 32 }  { ping_4_address1 MemPortADDR2 1 9 }  { ping_4_ce1 MemPortCE2 1 1 }  { ping_4_we1 MemPortWE2 1 1 }  { ping_4_d1 MemPortDIN2 1 32 }  { ping_4_q1 in_data 0 32 } } }
	ping_5 { ap_memory {  { ping_5_address0 mem_address 1 9 }  { ping_5_ce0 mem_ce 1 1 }  { ping_5_q0 mem_dout 0 32 }  { ping_5_address1 MemPortADDR2 1 9 }  { ping_5_ce1 MemPortCE2 1 1 }  { ping_5_we1 MemPortWE2 1 1 }  { ping_5_d1 MemPortDIN2 1 32 }  { ping_5_q1 in_data 0 32 } } }
	ping_6 { ap_memory {  { ping_6_address0 mem_address 1 9 }  { ping_6_ce0 mem_ce 1 1 }  { ping_6_q0 mem_dout 0 32 }  { ping_6_address1 MemPortADDR2 1 9 }  { ping_6_ce1 MemPortCE2 1 1 }  { ping_6_we1 MemPortWE2 1 1 }  { ping_6_d1 MemPortDIN2 1 32 }  { ping_6_q1 in_data 0 32 } } }
	ping_7 { ap_memory {  { ping_7_address0 mem_address 1 9 }  { ping_7_ce0 mem_ce 1 1 }  { ping_7_q0 mem_dout 0 32 }  { ping_7_address1 MemPortADDR2 1 9 }  { ping_7_ce1 MemPortCE2 1 1 }  { ping_7_we1 MemPortWE2 1 1 }  { ping_7_d1 MemPortDIN2 1 32 }  { ping_7_q1 in_data 0 32 } } }
	pong { ap_memory {  { pong_address0 mem_address 1 9 }  { pong_ce0 mem_ce 1 1 }  { pong_q0 mem_dout 0 32 }  { pong_address1 MemPortADDR2 1 9 }  { pong_ce1 MemPortCE2 1 1 }  { pong_we1 MemPortWE2 1 1 }  { pong_d1 MemPortDIN2 1 32 }  { pong_q1 in_data 0 32 } } }
	pong_1 { ap_memory {  { pong_1_address0 mem_address 1 9 }  { pong_1_ce0 mem_ce 1 1 }  { pong_1_q0 mem_dout 0 32 }  { pong_1_address1 MemPortADDR2 1 9 }  { pong_1_ce1 MemPortCE2 1 1 }  { pong_1_we1 MemPortWE2 1 1 }  { pong_1_d1 MemPortDIN2 1 32 }  { pong_1_q1 in_data 0 32 } } }
	pong_2 { ap_memory {  { pong_2_address0 mem_address 1 9 }  { pong_2_ce0 mem_ce 1 1 }  { pong_2_q0 mem_dout 0 32 }  { pong_2_address1 MemPortADDR2 1 9 }  { pong_2_ce1 MemPortCE2 1 1 }  { pong_2_we1 MemPortWE2 1 1 }  { pong_2_d1 MemPortDIN2 1 32 }  { pong_2_q1 in_data 0 32 } } }
	pong_3 { ap_memory {  { pong_3_address0 mem_address 1 9 }  { pong_3_ce0 mem_ce 1 1 }  { pong_3_q0 mem_dout 0 32 }  { pong_3_address1 MemPortADDR2 1 9 }  { pong_3_ce1 MemPortCE2 1 1 }  { pong_3_we1 MemPortWE2 1 1 }  { pong_3_d1 MemPortDIN2 1 32 }  { pong_3_q1 in_data 0 32 } } }
	pong_4 { ap_memory {  { pong_4_address0 mem_address 1 9 }  { pong_4_ce0 mem_ce 1 1 }  { pong_4_q0 mem_dout 0 32 }  { pong_4_address1 MemPortADDR2 1 9 }  { pong_4_ce1 MemPortCE2 1 1 }  { pong_4_we1 MemPortWE2 1 1 }  { pong_4_d1 MemPortDIN2 1 32 }  { pong_4_q1 in_data 0 32 } } }
	pong_5 { ap_memory {  { pong_5_address0 mem_address 1 9 }  { pong_5_ce0 mem_ce 1 1 }  { pong_5_q0 mem_dout 0 32 }  { pong_5_address1 MemPortADDR2 1 9 }  { pong_5_ce1 MemPortCE2 1 1 }  { pong_5_we1 MemPortWE2 1 1 }  { pong_5_d1 MemPortDIN2 1 32 }  { pong_5_q1 in_data 0 32 } } }
	pong_6 { ap_memory {  { pong_6_address0 mem_address 1 9 }  { pong_6_ce0 mem_ce 1 1 }  { pong_6_q0 mem_dout 0 32 }  { pong_6_address1 MemPortADDR2 1 9 }  { pong_6_ce1 MemPortCE2 1 1 }  { pong_6_we1 MemPortWE2 1 1 }  { pong_6_d1 MemPortDIN2 1 32 }  { pong_6_q1 in_data 0 32 } } }
	pong_7 { ap_memory {  { pong_7_address0 mem_address 1 9 }  { pong_7_ce0 mem_ce 1 1 }  { pong_7_q0 mem_dout 0 32 }  { pong_7_address1 MemPortADDR2 1 9 }  { pong_7_ce1 MemPortCE2 1 1 }  { pong_7_we1 MemPortWE2 1 1 }  { pong_7_d1 MemPortDIN2 1 32 }  { pong_7_q1 in_data 0 32 } } }
	use_ping_as_input { ap_none {  { use_ping_as_input in_data 0 1 } } }
	q_inv { ap_none {  { q_inv in_data 0 32 } } }
	conv5_i { ap_none {  { conv5_i in_data 0 32 } } }
	q { ap_none {  { q in_data 0 32 } } }
	half_n_1 { ap_none {  { half_n_1 in_data 0 31 } } }
	empty { ap_none {  { empty in_data 0 11 } } }
}
