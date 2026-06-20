set moduleName inv_stage_t_2_s
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
set C_modelName {inv_stage_t<2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_0 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_1 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_2 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_3 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_4 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_5 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_6 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_7 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_8 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_9 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_10 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_11 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_12 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_13 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_14 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ src_15 int 12 regular {array 16 { 1 3 } 1 1 }  }
	{ dst_0 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_1 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_2 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_3 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_4 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_5 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_6 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_7 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_8 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_9 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_10 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_11 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_12 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_13 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_14 int 12 regular {array 16 { 0 3 } 0 1 }  }
	{ dst_15 int 12 regular {array 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "src_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_5", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_6", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_7", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_8", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_9", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_10", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_11", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_12", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_13", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_14", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_15", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "dst_0", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_4", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_5", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_6", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_7", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_8", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_9", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_10", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_11", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_12", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_13", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_14", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_15", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 182
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_0_address0 sc_out sc_lv 4 signal 0 } 
	{ src_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ src_0_q0 sc_in sc_lv 12 signal 0 } 
	{ src_1_address0 sc_out sc_lv 4 signal 1 } 
	{ src_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ src_1_q0 sc_in sc_lv 12 signal 1 } 
	{ src_2_address0 sc_out sc_lv 4 signal 2 } 
	{ src_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ src_2_q0 sc_in sc_lv 12 signal 2 } 
	{ src_3_address0 sc_out sc_lv 4 signal 3 } 
	{ src_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ src_3_q0 sc_in sc_lv 12 signal 3 } 
	{ src_4_address0 sc_out sc_lv 4 signal 4 } 
	{ src_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ src_4_q0 sc_in sc_lv 12 signal 4 } 
	{ src_5_address0 sc_out sc_lv 4 signal 5 } 
	{ src_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ src_5_q0 sc_in sc_lv 12 signal 5 } 
	{ src_6_address0 sc_out sc_lv 4 signal 6 } 
	{ src_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ src_6_q0 sc_in sc_lv 12 signal 6 } 
	{ src_7_address0 sc_out sc_lv 4 signal 7 } 
	{ src_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ src_7_q0 sc_in sc_lv 12 signal 7 } 
	{ src_8_address0 sc_out sc_lv 4 signal 8 } 
	{ src_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ src_8_q0 sc_in sc_lv 12 signal 8 } 
	{ src_9_address0 sc_out sc_lv 4 signal 9 } 
	{ src_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ src_9_q0 sc_in sc_lv 12 signal 9 } 
	{ src_10_address0 sc_out sc_lv 4 signal 10 } 
	{ src_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ src_10_q0 sc_in sc_lv 12 signal 10 } 
	{ src_11_address0 sc_out sc_lv 4 signal 11 } 
	{ src_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ src_11_q0 sc_in sc_lv 12 signal 11 } 
	{ src_12_address0 sc_out sc_lv 4 signal 12 } 
	{ src_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ src_12_q0 sc_in sc_lv 12 signal 12 } 
	{ src_13_address0 sc_out sc_lv 4 signal 13 } 
	{ src_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ src_13_q0 sc_in sc_lv 12 signal 13 } 
	{ src_14_address0 sc_out sc_lv 4 signal 14 } 
	{ src_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ src_14_q0 sc_in sc_lv 12 signal 14 } 
	{ src_15_address0 sc_out sc_lv 4 signal 15 } 
	{ src_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ src_15_q0 sc_in sc_lv 12 signal 15 } 
	{ dst_0_address0 sc_out sc_lv 4 signal 16 } 
	{ dst_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ dst_0_we0 sc_out sc_logic 1 signal 16 } 
	{ dst_0_d0 sc_out sc_lv 12 signal 16 } 
	{ dst_1_address0 sc_out sc_lv 4 signal 17 } 
	{ dst_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ dst_1_we0 sc_out sc_logic 1 signal 17 } 
	{ dst_1_d0 sc_out sc_lv 12 signal 17 } 
	{ dst_2_address0 sc_out sc_lv 4 signal 18 } 
	{ dst_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ dst_2_we0 sc_out sc_logic 1 signal 18 } 
	{ dst_2_d0 sc_out sc_lv 12 signal 18 } 
	{ dst_3_address0 sc_out sc_lv 4 signal 19 } 
	{ dst_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ dst_3_we0 sc_out sc_logic 1 signal 19 } 
	{ dst_3_d0 sc_out sc_lv 12 signal 19 } 
	{ dst_4_address0 sc_out sc_lv 4 signal 20 } 
	{ dst_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ dst_4_we0 sc_out sc_logic 1 signal 20 } 
	{ dst_4_d0 sc_out sc_lv 12 signal 20 } 
	{ dst_5_address0 sc_out sc_lv 4 signal 21 } 
	{ dst_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ dst_5_we0 sc_out sc_logic 1 signal 21 } 
	{ dst_5_d0 sc_out sc_lv 12 signal 21 } 
	{ dst_6_address0 sc_out sc_lv 4 signal 22 } 
	{ dst_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ dst_6_we0 sc_out sc_logic 1 signal 22 } 
	{ dst_6_d0 sc_out sc_lv 12 signal 22 } 
	{ dst_7_address0 sc_out sc_lv 4 signal 23 } 
	{ dst_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ dst_7_we0 sc_out sc_logic 1 signal 23 } 
	{ dst_7_d0 sc_out sc_lv 12 signal 23 } 
	{ dst_8_address0 sc_out sc_lv 4 signal 24 } 
	{ dst_8_ce0 sc_out sc_logic 1 signal 24 } 
	{ dst_8_we0 sc_out sc_logic 1 signal 24 } 
	{ dst_8_d0 sc_out sc_lv 12 signal 24 } 
	{ dst_9_address0 sc_out sc_lv 4 signal 25 } 
	{ dst_9_ce0 sc_out sc_logic 1 signal 25 } 
	{ dst_9_we0 sc_out sc_logic 1 signal 25 } 
	{ dst_9_d0 sc_out sc_lv 12 signal 25 } 
	{ dst_10_address0 sc_out sc_lv 4 signal 26 } 
	{ dst_10_ce0 sc_out sc_logic 1 signal 26 } 
	{ dst_10_we0 sc_out sc_logic 1 signal 26 } 
	{ dst_10_d0 sc_out sc_lv 12 signal 26 } 
	{ dst_11_address0 sc_out sc_lv 4 signal 27 } 
	{ dst_11_ce0 sc_out sc_logic 1 signal 27 } 
	{ dst_11_we0 sc_out sc_logic 1 signal 27 } 
	{ dst_11_d0 sc_out sc_lv 12 signal 27 } 
	{ dst_12_address0 sc_out sc_lv 4 signal 28 } 
	{ dst_12_ce0 sc_out sc_logic 1 signal 28 } 
	{ dst_12_we0 sc_out sc_logic 1 signal 28 } 
	{ dst_12_d0 sc_out sc_lv 12 signal 28 } 
	{ dst_13_address0 sc_out sc_lv 4 signal 29 } 
	{ dst_13_ce0 sc_out sc_logic 1 signal 29 } 
	{ dst_13_we0 sc_out sc_logic 1 signal 29 } 
	{ dst_13_d0 sc_out sc_lv 12 signal 29 } 
	{ dst_14_address0 sc_out sc_lv 4 signal 30 } 
	{ dst_14_ce0 sc_out sc_logic 1 signal 30 } 
	{ dst_14_we0 sc_out sc_logic 1 signal 30 } 
	{ dst_14_d0 sc_out sc_lv 12 signal 30 } 
	{ dst_15_address0 sc_out sc_lv 4 signal 31 } 
	{ dst_15_ce0 sc_out sc_logic 1 signal 31 } 
	{ dst_15_we0 sc_out sc_logic 1 signal 31 } 
	{ dst_15_d0 sc_out sc_lv 12 signal 31 } 
	{ grp_fu_1570_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1570_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1570_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1570_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1574_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1574_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1574_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1574_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1578_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1578_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1578_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1578_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1582_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1582_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1582_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1582_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1586_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1586_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1586_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1586_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1590_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1590_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1590_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1590_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1594_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1594_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1594_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1594_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1598_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1598_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_1598_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_1598_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1602_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1602_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1602_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1602_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1606_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1606_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1606_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1606_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1610_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1610_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1610_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1610_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1614_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1614_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1614_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1614_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1618_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1618_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1618_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1618_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1622_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1622_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1622_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1622_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1626_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1626_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1626_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1626_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1630_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1630_p_din1 sc_out sc_lv 13 signal -1 } 
	{ grp_fu_1630_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1630_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_0", "role": "address0" }} , 
 	{ "name": "src_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_0", "role": "ce0" }} , 
 	{ "name": "src_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_0", "role": "q0" }} , 
 	{ "name": "src_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_1", "role": "address0" }} , 
 	{ "name": "src_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_1", "role": "ce0" }} , 
 	{ "name": "src_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_1", "role": "q0" }} , 
 	{ "name": "src_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_2", "role": "address0" }} , 
 	{ "name": "src_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_2", "role": "ce0" }} , 
 	{ "name": "src_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_2", "role": "q0" }} , 
 	{ "name": "src_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_3", "role": "address0" }} , 
 	{ "name": "src_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_3", "role": "ce0" }} , 
 	{ "name": "src_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_3", "role": "q0" }} , 
 	{ "name": "src_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_4", "role": "address0" }} , 
 	{ "name": "src_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_4", "role": "ce0" }} , 
 	{ "name": "src_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_4", "role": "q0" }} , 
 	{ "name": "src_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_5", "role": "address0" }} , 
 	{ "name": "src_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_5", "role": "ce0" }} , 
 	{ "name": "src_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_5", "role": "q0" }} , 
 	{ "name": "src_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_6", "role": "address0" }} , 
 	{ "name": "src_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_6", "role": "ce0" }} , 
 	{ "name": "src_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_6", "role": "q0" }} , 
 	{ "name": "src_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_7", "role": "address0" }} , 
 	{ "name": "src_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_7", "role": "ce0" }} , 
 	{ "name": "src_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_7", "role": "q0" }} , 
 	{ "name": "src_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_8", "role": "address0" }} , 
 	{ "name": "src_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_8", "role": "ce0" }} , 
 	{ "name": "src_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_8", "role": "q0" }} , 
 	{ "name": "src_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_9", "role": "address0" }} , 
 	{ "name": "src_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_9", "role": "ce0" }} , 
 	{ "name": "src_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_9", "role": "q0" }} , 
 	{ "name": "src_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_10", "role": "address0" }} , 
 	{ "name": "src_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_10", "role": "ce0" }} , 
 	{ "name": "src_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_10", "role": "q0" }} , 
 	{ "name": "src_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_11", "role": "address0" }} , 
 	{ "name": "src_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_11", "role": "ce0" }} , 
 	{ "name": "src_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_11", "role": "q0" }} , 
 	{ "name": "src_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_12", "role": "address0" }} , 
 	{ "name": "src_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_12", "role": "ce0" }} , 
 	{ "name": "src_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_12", "role": "q0" }} , 
 	{ "name": "src_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_13", "role": "address0" }} , 
 	{ "name": "src_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_13", "role": "ce0" }} , 
 	{ "name": "src_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_13", "role": "q0" }} , 
 	{ "name": "src_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_14", "role": "address0" }} , 
 	{ "name": "src_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_14", "role": "ce0" }} , 
 	{ "name": "src_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_14", "role": "q0" }} , 
 	{ "name": "src_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_15", "role": "address0" }} , 
 	{ "name": "src_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_15", "role": "ce0" }} , 
 	{ "name": "src_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_15", "role": "q0" }} , 
 	{ "name": "dst_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_0", "role": "address0" }} , 
 	{ "name": "dst_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_0", "role": "ce0" }} , 
 	{ "name": "dst_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_0", "role": "we0" }} , 
 	{ "name": "dst_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_0", "role": "d0" }} , 
 	{ "name": "dst_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_1", "role": "address0" }} , 
 	{ "name": "dst_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_1", "role": "ce0" }} , 
 	{ "name": "dst_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_1", "role": "we0" }} , 
 	{ "name": "dst_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_1", "role": "d0" }} , 
 	{ "name": "dst_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_2", "role": "address0" }} , 
 	{ "name": "dst_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_2", "role": "ce0" }} , 
 	{ "name": "dst_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_2", "role": "we0" }} , 
 	{ "name": "dst_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_2", "role": "d0" }} , 
 	{ "name": "dst_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_3", "role": "address0" }} , 
 	{ "name": "dst_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_3", "role": "ce0" }} , 
 	{ "name": "dst_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_3", "role": "we0" }} , 
 	{ "name": "dst_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_3", "role": "d0" }} , 
 	{ "name": "dst_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_4", "role": "address0" }} , 
 	{ "name": "dst_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_4", "role": "ce0" }} , 
 	{ "name": "dst_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_4", "role": "we0" }} , 
 	{ "name": "dst_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_4", "role": "d0" }} , 
 	{ "name": "dst_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_5", "role": "address0" }} , 
 	{ "name": "dst_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_5", "role": "ce0" }} , 
 	{ "name": "dst_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_5", "role": "we0" }} , 
 	{ "name": "dst_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_5", "role": "d0" }} , 
 	{ "name": "dst_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_6", "role": "address0" }} , 
 	{ "name": "dst_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_6", "role": "ce0" }} , 
 	{ "name": "dst_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_6", "role": "we0" }} , 
 	{ "name": "dst_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_6", "role": "d0" }} , 
 	{ "name": "dst_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_7", "role": "address0" }} , 
 	{ "name": "dst_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_7", "role": "ce0" }} , 
 	{ "name": "dst_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_7", "role": "we0" }} , 
 	{ "name": "dst_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_7", "role": "d0" }} , 
 	{ "name": "dst_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_8", "role": "address0" }} , 
 	{ "name": "dst_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_8", "role": "ce0" }} , 
 	{ "name": "dst_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_8", "role": "we0" }} , 
 	{ "name": "dst_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_8", "role": "d0" }} , 
 	{ "name": "dst_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_9", "role": "address0" }} , 
 	{ "name": "dst_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_9", "role": "ce0" }} , 
 	{ "name": "dst_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_9", "role": "we0" }} , 
 	{ "name": "dst_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_9", "role": "d0" }} , 
 	{ "name": "dst_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_10", "role": "address0" }} , 
 	{ "name": "dst_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_10", "role": "ce0" }} , 
 	{ "name": "dst_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_10", "role": "we0" }} , 
 	{ "name": "dst_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_10", "role": "d0" }} , 
 	{ "name": "dst_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_11", "role": "address0" }} , 
 	{ "name": "dst_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_11", "role": "ce0" }} , 
 	{ "name": "dst_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_11", "role": "we0" }} , 
 	{ "name": "dst_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_11", "role": "d0" }} , 
 	{ "name": "dst_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_12", "role": "address0" }} , 
 	{ "name": "dst_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_12", "role": "ce0" }} , 
 	{ "name": "dst_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_12", "role": "we0" }} , 
 	{ "name": "dst_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_12", "role": "d0" }} , 
 	{ "name": "dst_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_13", "role": "address0" }} , 
 	{ "name": "dst_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_13", "role": "ce0" }} , 
 	{ "name": "dst_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_13", "role": "we0" }} , 
 	{ "name": "dst_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_13", "role": "d0" }} , 
 	{ "name": "dst_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_14", "role": "address0" }} , 
 	{ "name": "dst_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_14", "role": "ce0" }} , 
 	{ "name": "dst_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_14", "role": "we0" }} , 
 	{ "name": "dst_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_14", "role": "d0" }} , 
 	{ "name": "dst_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_15", "role": "address0" }} , 
 	{ "name": "dst_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_15", "role": "ce0" }} , 
 	{ "name": "dst_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_15", "role": "we0" }} , 
 	{ "name": "dst_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_15", "role": "d0" }} , 
 	{ "name": "grp_fu_1570_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1570_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1570_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1570_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1570_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1570_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1570_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1570_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1574_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1574_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1574_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1574_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1574_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1574_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1574_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1574_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1578_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1578_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1578_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1578_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1578_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1578_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1578_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1578_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1582_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1582_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1582_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1582_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1582_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1582_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1582_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1582_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1586_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1586_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1586_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1586_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1586_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1586_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1586_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1586_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1590_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1590_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1590_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1590_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1590_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1590_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1590_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1590_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1594_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1594_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1594_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1594_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1594_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1594_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1594_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1594_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1598_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1598_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1598_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_1598_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1598_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_1598_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1598_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1598_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1602_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1602_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1602_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1602_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1602_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1602_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1602_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1602_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1606_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1606_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1606_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1606_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1606_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1606_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1606_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1606_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1610_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1610_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1610_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1610_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1610_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1610_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1610_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1610_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1614_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1614_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1614_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1614_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1614_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1614_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1614_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1614_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1618_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1618_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1618_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1618_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1618_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1618_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1618_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1618_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1622_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1622_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1622_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1622_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1622_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1622_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1622_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1622_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1626_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1626_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1626_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1626_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1626_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1626_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1626_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1626_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1630_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1630_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1630_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "grp_fu_1630_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1630_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1630_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1630_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1630_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL5INV_W_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL6INV_MW_0_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL5INV_W_1_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL6INV_MW_1_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL5INV_W_2_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL6INV_MW_2_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL5INV_W_3_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL6INV_MW_3_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1200", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1201", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1202", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1203", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1204", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1205", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1206", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_14s_12ns_32s_32_3_1_U1207", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_ZL6INV_MW_3_0 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_0 { ap_memory {  { src_0_address0 mem_address 1 4 }  { src_0_ce0 mem_ce 1 1 }  { src_0_q0 in_data 0 12 } } }
	src_1 { ap_memory {  { src_1_address0 mem_address 1 4 }  { src_1_ce0 mem_ce 1 1 }  { src_1_q0 in_data 0 12 } } }
	src_2 { ap_memory {  { src_2_address0 mem_address 1 4 }  { src_2_ce0 mem_ce 1 1 }  { src_2_q0 in_data 0 12 } } }
	src_3 { ap_memory {  { src_3_address0 mem_address 1 4 }  { src_3_ce0 mem_ce 1 1 }  { src_3_q0 in_data 0 12 } } }
	src_4 { ap_memory {  { src_4_address0 mem_address 1 4 }  { src_4_ce0 mem_ce 1 1 }  { src_4_q0 in_data 0 12 } } }
	src_5 { ap_memory {  { src_5_address0 mem_address 1 4 }  { src_5_ce0 mem_ce 1 1 }  { src_5_q0 in_data 0 12 } } }
	src_6 { ap_memory {  { src_6_address0 mem_address 1 4 }  { src_6_ce0 mem_ce 1 1 }  { src_6_q0 in_data 0 12 } } }
	src_7 { ap_memory {  { src_7_address0 mem_address 1 4 }  { src_7_ce0 mem_ce 1 1 }  { src_7_q0 in_data 0 12 } } }
	src_8 { ap_memory {  { src_8_address0 mem_address 1 4 }  { src_8_ce0 mem_ce 1 1 }  { src_8_q0 in_data 0 12 } } }
	src_9 { ap_memory {  { src_9_address0 mem_address 1 4 }  { src_9_ce0 mem_ce 1 1 }  { src_9_q0 in_data 0 12 } } }
	src_10 { ap_memory {  { src_10_address0 mem_address 1 4 }  { src_10_ce0 mem_ce 1 1 }  { src_10_q0 in_data 0 12 } } }
	src_11 { ap_memory {  { src_11_address0 mem_address 1 4 }  { src_11_ce0 mem_ce 1 1 }  { src_11_q0 in_data 0 12 } } }
	src_12 { ap_memory {  { src_12_address0 mem_address 1 4 }  { src_12_ce0 mem_ce 1 1 }  { src_12_q0 in_data 0 12 } } }
	src_13 { ap_memory {  { src_13_address0 mem_address 1 4 }  { src_13_ce0 mem_ce 1 1 }  { src_13_q0 in_data 0 12 } } }
	src_14 { ap_memory {  { src_14_address0 mem_address 1 4 }  { src_14_ce0 mem_ce 1 1 }  { src_14_q0 in_data 0 12 } } }
	src_15 { ap_memory {  { src_15_address0 mem_address 1 4 }  { src_15_ce0 mem_ce 1 1 }  { src_15_q0 in_data 0 12 } } }
	dst_0 { ap_memory {  { dst_0_address0 mem_address 1 4 }  { dst_0_ce0 mem_ce 1 1 }  { dst_0_we0 mem_we 1 1 }  { dst_0_d0 mem_din 1 12 } } }
	dst_1 { ap_memory {  { dst_1_address0 mem_address 1 4 }  { dst_1_ce0 mem_ce 1 1 }  { dst_1_we0 mem_we 1 1 }  { dst_1_d0 mem_din 1 12 } } }
	dst_2 { ap_memory {  { dst_2_address0 mem_address 1 4 }  { dst_2_ce0 mem_ce 1 1 }  { dst_2_we0 mem_we 1 1 }  { dst_2_d0 mem_din 1 12 } } }
	dst_3 { ap_memory {  { dst_3_address0 mem_address 1 4 }  { dst_3_ce0 mem_ce 1 1 }  { dst_3_we0 mem_we 1 1 }  { dst_3_d0 mem_din 1 12 } } }
	dst_4 { ap_memory {  { dst_4_address0 mem_address 1 4 }  { dst_4_ce0 mem_ce 1 1 }  { dst_4_we0 mem_we 1 1 }  { dst_4_d0 mem_din 1 12 } } }
	dst_5 { ap_memory {  { dst_5_address0 mem_address 1 4 }  { dst_5_ce0 mem_ce 1 1 }  { dst_5_we0 mem_we 1 1 }  { dst_5_d0 mem_din 1 12 } } }
	dst_6 { ap_memory {  { dst_6_address0 mem_address 1 4 }  { dst_6_ce0 mem_ce 1 1 }  { dst_6_we0 mem_we 1 1 }  { dst_6_d0 mem_din 1 12 } } }
	dst_7 { ap_memory {  { dst_7_address0 mem_address 1 4 }  { dst_7_ce0 mem_ce 1 1 }  { dst_7_we0 mem_we 1 1 }  { dst_7_d0 mem_din 1 12 } } }
	dst_8 { ap_memory {  { dst_8_address0 mem_address 1 4 }  { dst_8_ce0 mem_ce 1 1 }  { dst_8_we0 mem_we 1 1 }  { dst_8_d0 mem_din 1 12 } } }
	dst_9 { ap_memory {  { dst_9_address0 mem_address 1 4 }  { dst_9_ce0 mem_ce 1 1 }  { dst_9_we0 mem_we 1 1 }  { dst_9_d0 mem_din 1 12 } } }
	dst_10 { ap_memory {  { dst_10_address0 mem_address 1 4 }  { dst_10_ce0 mem_ce 1 1 }  { dst_10_we0 mem_we 1 1 }  { dst_10_d0 mem_din 1 12 } } }
	dst_11 { ap_memory {  { dst_11_address0 mem_address 1 4 }  { dst_11_ce0 mem_ce 1 1 }  { dst_11_we0 mem_we 1 1 }  { dst_11_d0 mem_din 1 12 } } }
	dst_12 { ap_memory {  { dst_12_address0 mem_address 1 4 }  { dst_12_ce0 mem_ce 1 1 }  { dst_12_we0 mem_we 1 1 }  { dst_12_d0 mem_din 1 12 } } }
	dst_13 { ap_memory {  { dst_13_address0 mem_address 1 4 }  { dst_13_ce0 mem_ce 1 1 }  { dst_13_we0 mem_we 1 1 }  { dst_13_d0 mem_din 1 12 } } }
	dst_14 { ap_memory {  { dst_14_address0 mem_address 1 4 }  { dst_14_ce0 mem_ce 1 1 }  { dst_14_we0 mem_we 1 1 }  { dst_14_d0 mem_din 1 12 } } }
	dst_15 { ap_memory {  { dst_15_address0 mem_address 1 4 }  { dst_15_ce0 mem_ce 1 1 }  { dst_15_we0 mem_we 1 1 }  { dst_15_d0 mem_din 1 12 } } }
}
