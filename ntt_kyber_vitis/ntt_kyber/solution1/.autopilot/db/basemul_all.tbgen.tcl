set moduleName basemul_all
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
set C_modelName {basemul_all}
set C_modelType { void 0 }
set C_modelArgList {
	{ sA1 int 192 regular {fifo 0 volatile }  }
	{ sB1 int 192 regular {fifo 0 volatile }  }
	{ sC0 int 192 regular {fifo 1 volatile }  }
	{ batch int 32 regular {fifo 0}  }
	{ batch_size_c13 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "sA1", "interface" : "fifo", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "sB1", "interface" : "fifo", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "sC0", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch_size_c13", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ sA1_dout sc_in sc_lv 192 signal 0 } 
	{ sA1_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ sA1_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ sA1_empty_n sc_in sc_logic 1 signal 0 } 
	{ sA1_read sc_out sc_logic 1 signal 0 } 
	{ sB1_dout sc_in sc_lv 192 signal 1 } 
	{ sB1_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ sB1_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ sB1_empty_n sc_in sc_logic 1 signal 1 } 
	{ sB1_read sc_out sc_logic 1 signal 1 } 
	{ sC0_din sc_out sc_lv 192 signal 2 } 
	{ sC0_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ sC0_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ sC0_full_n sc_in sc_logic 1 signal 2 } 
	{ sC0_write sc_out sc_logic 1 signal 2 } 
	{ batch_dout sc_in sc_lv 32 signal 3 } 
	{ batch_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ batch_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ batch_empty_n sc_in sc_logic 1 signal 3 } 
	{ batch_read sc_out sc_logic 1 signal 3 } 
	{ batch_size_c13_din sc_out sc_lv 32 signal 4 } 
	{ batch_size_c13_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ batch_size_c13_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ batch_size_c13_full_n sc_in sc_logic 1 signal 4 } 
	{ batch_size_c13_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "sA1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sA1", "role": "dout" }} , 
 	{ "name": "sA1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sA1", "role": "num_data_valid" }} , 
 	{ "name": "sA1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sA1", "role": "fifo_cap" }} , 
 	{ "name": "sA1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sA1", "role": "empty_n" }} , 
 	{ "name": "sA1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sA1", "role": "read" }} , 
 	{ "name": "sB1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sB1", "role": "dout" }} , 
 	{ "name": "sB1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sB1", "role": "num_data_valid" }} , 
 	{ "name": "sB1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sB1", "role": "fifo_cap" }} , 
 	{ "name": "sB1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sB1", "role": "empty_n" }} , 
 	{ "name": "sB1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sB1", "role": "read" }} , 
 	{ "name": "sC0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sC0", "role": "din" }} , 
 	{ "name": "sC0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC0", "role": "num_data_valid" }} , 
 	{ "name": "sC0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC0", "role": "fifo_cap" }} , 
 	{ "name": "sC0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC0", "role": "full_n" }} , 
 	{ "name": "sC0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC0", "role": "write" }} , 
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch", "role": "num_data_valid" }} , 
 	{ "name": "batch_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch", "role": "fifo_cap" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "batch_size_c13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_size_c13", "role": "din" }} , 
 	{ "name": "batch_size_c13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch_size_c13", "role": "num_data_valid" }} , 
 	{ "name": "batch_size_c13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch_size_c13", "role": "fifo_cap" }} , 
 	{ "name": "batch_size_c13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_c13", "role": "full_n" }} , 
 	{ "name": "batch_size_c13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_c13", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "181"],
		"CDFG" : "basemul_all",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "1137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sA1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_basemul_all_Pipeline_BM_RD_fu_286", "Port" : "sA1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sB1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_basemul_all_Pipeline_BM_RD_fu_286", "Port" : "sB1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sC0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_basemul_all_Pipeline_BM_WR_fu_394", "Port" : "sC0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_size_c13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_size_c13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL4BM_W_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL4BM_W_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5BM_MW_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL5BM_MW_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL4BM_W_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL4BM_W_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5BM_MW_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL5BM_MW_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL4BM_W_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL4BM_W_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5BM_MW_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL5BM_MW_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL4BM_W_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL4BM_W_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5BM_MW_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_basemul_fu_326", "Port" : "p_ZL5BM_MW_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "BM_BLK", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_basemul_all_Pipeline_BM_RD_fu_286", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "basemul_all_Pipeline_BM_RD",
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
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sA1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sA1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sB1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sB1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "BM_RD", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_all_Pipeline_BM_RD_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180"],
		"CDFG" : "basemul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL4BM_W_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5BM_MW_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL4BM_W_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5BM_MW_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL4BM_W_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5BM_MW_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL4BM_W_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5BM_MW_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "BM", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL4BM_W_0_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL5BM_MW_0_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL4BM_W_1_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL5BM_MW_1_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL4BM_W_2_U", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL5BM_MW_2_U", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL4BM_W_3_U", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.p_ZL5BM_MW_3_U", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U967", "Parent" : "51"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U968", "Parent" : "51"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U969", "Parent" : "51"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U970", "Parent" : "51"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U971", "Parent" : "51"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U972", "Parent" : "51"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U973", "Parent" : "51"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32ns_16ns_48_3_1_U974", "Parent" : "51"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U975", "Parent" : "51"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U976", "Parent" : "51"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U977", "Parent" : "51"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U978", "Parent" : "51"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U979", "Parent" : "51"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U980", "Parent" : "51"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U981", "Parent" : "51"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_32s_13ns_32_3_1_U982", "Parent" : "51"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U983", "Parent" : "51"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U984", "Parent" : "51"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U985", "Parent" : "51"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U986", "Parent" : "51"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U987", "Parent" : "51"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U988", "Parent" : "51"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U989", "Parent" : "51"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U990", "Parent" : "51"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U991", "Parent" : "51"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U992", "Parent" : "51"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U993", "Parent" : "51"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U994", "Parent" : "51"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U995", "Parent" : "51"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U996", "Parent" : "51"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U997", "Parent" : "51"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U998", "Parent" : "51"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U999", "Parent" : "51"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1000", "Parent" : "51"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1001", "Parent" : "51"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1002", "Parent" : "51"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1003", "Parent" : "51"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1004", "Parent" : "51"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1005", "Parent" : "51"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1006", "Parent" : "51"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1007", "Parent" : "51"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1008", "Parent" : "51"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1009", "Parent" : "51"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1010", "Parent" : "51"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1011", "Parent" : "51"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1012", "Parent" : "51"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1013", "Parent" : "51"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_12ns_12ns_24_3_1_U1014", "Parent" : "51"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1015", "Parent" : "51"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1016", "Parent" : "51"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1017", "Parent" : "51"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1018", "Parent" : "51"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1019", "Parent" : "51"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1020", "Parent" : "51"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1021", "Parent" : "51"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1022", "Parent" : "51"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1023", "Parent" : "51"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1024", "Parent" : "51"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1025", "Parent" : "51"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1026", "Parent" : "51"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1027", "Parent" : "51"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1028", "Parent" : "51"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1029", "Parent" : "51"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1030", "Parent" : "51"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1031", "Parent" : "51"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1032", "Parent" : "51"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1033", "Parent" : "51"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1034", "Parent" : "51"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1035", "Parent" : "51"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1036", "Parent" : "51"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1037", "Parent" : "51"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1038", "Parent" : "51"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1039", "Parent" : "51"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1040", "Parent" : "51"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1041", "Parent" : "51"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1042", "Parent" : "51"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1043", "Parent" : "51"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1044", "Parent" : "51"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1045", "Parent" : "51"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mul_24ns_14ns_37_3_1_U1046", "Parent" : "51"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1047", "Parent" : "51"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1048", "Parent" : "51"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1049", "Parent" : "51"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1050", "Parent" : "51"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1051", "Parent" : "51"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1052", "Parent" : "51"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1053", "Parent" : "51"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1054", "Parent" : "51"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1055", "Parent" : "51"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1056", "Parent" : "51"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1057", "Parent" : "51"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1058", "Parent" : "51"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1059", "Parent" : "51"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1060", "Parent" : "51"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1061", "Parent" : "51"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1062", "Parent" : "51"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1063", "Parent" : "51"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1064", "Parent" : "51"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1065", "Parent" : "51"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1066", "Parent" : "51"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1067", "Parent" : "51"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1068", "Parent" : "51"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1069", "Parent" : "51"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1070", "Parent" : "51"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1071", "Parent" : "51"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1072", "Parent" : "51"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1073", "Parent" : "51"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1074", "Parent" : "51"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1075", "Parent" : "51"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1076", "Parent" : "51"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1077", "Parent" : "51"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1078", "Parent" : "51"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1079", "Parent" : "51"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1080", "Parent" : "51"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1081", "Parent" : "51"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1082", "Parent" : "51"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1083", "Parent" : "51"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1084", "Parent" : "51"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mulsub_13ns_12ns_24ns_25_3_1_U1085", "Parent" : "51"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.mac_mul_sub_25s_12ns_32ns_32_3_1_U1086", "Parent" : "51"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_basemul_all_Pipeline_BM_WR_fu_394", "Parent" : "0", "Child" : ["182"],
		"CDFG" : "basemul_all_Pipeline_BM_WR",
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
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sC0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sC0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "BM_WR", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_basemul_all_Pipeline_BM_WR_fu_394.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"}]}


set ArgLastReadFirstWriteLatency {
	basemul_all {
		sA1 {Type I LastRead 1 FirstWrite -1}
		sB1 {Type I LastRead 1 FirstWrite -1}
		sC0 {Type O LastRead -1 FirstWrite 1}
		batch {Type I LastRead 0 FirstWrite -1}
		batch_size_c13 {Type O LastRead -1 FirstWrite 0}
		p_ZL4BM_W_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL4BM_W_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL4BM_W_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL4BM_W_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_3 {Type I LastRead -1 FirstWrite -1}}
	basemul_all_Pipeline_BM_RD {
		B_15 {Type O LastRead -1 FirstWrite 1}
		B_14 {Type O LastRead -1 FirstWrite 1}
		B_13 {Type O LastRead -1 FirstWrite 1}
		B_12 {Type O LastRead -1 FirstWrite 1}
		B_11 {Type O LastRead -1 FirstWrite 1}
		B_10 {Type O LastRead -1 FirstWrite 1}
		B_9 {Type O LastRead -1 FirstWrite 1}
		B_8 {Type O LastRead -1 FirstWrite 1}
		B_7 {Type O LastRead -1 FirstWrite 1}
		B_6 {Type O LastRead -1 FirstWrite 1}
		B_5 {Type O LastRead -1 FirstWrite 1}
		B_4 {Type O LastRead -1 FirstWrite 1}
		B_3 {Type O LastRead -1 FirstWrite 1}
		B_2 {Type O LastRead -1 FirstWrite 1}
		B_1 {Type O LastRead -1 FirstWrite 1}
		B {Type O LastRead -1 FirstWrite 1}
		A_15 {Type O LastRead -1 FirstWrite 1}
		A_14 {Type O LastRead -1 FirstWrite 1}
		A_13 {Type O LastRead -1 FirstWrite 1}
		A_12 {Type O LastRead -1 FirstWrite 1}
		A_11 {Type O LastRead -1 FirstWrite 1}
		A_10 {Type O LastRead -1 FirstWrite 1}
		A_9 {Type O LastRead -1 FirstWrite 1}
		A_8 {Type O LastRead -1 FirstWrite 1}
		A_7 {Type O LastRead -1 FirstWrite 1}
		A_6 {Type O LastRead -1 FirstWrite 1}
		A_5 {Type O LastRead -1 FirstWrite 1}
		A_4 {Type O LastRead -1 FirstWrite 1}
		A_3 {Type O LastRead -1 FirstWrite 1}
		A_2 {Type O LastRead -1 FirstWrite 1}
		A_1 {Type O LastRead -1 FirstWrite 1}
		A {Type O LastRead -1 FirstWrite 1}
		sA1 {Type I LastRead 1 FirstWrite -1}
		sB1 {Type I LastRead 1 FirstWrite -1}}
	basemul {
		A_0 {Type I LastRead 0 FirstWrite -1}
		A_1 {Type I LastRead 0 FirstWrite -1}
		A_2 {Type I LastRead 0 FirstWrite -1}
		A_3 {Type I LastRead 0 FirstWrite -1}
		A_4 {Type I LastRead 0 FirstWrite -1}
		A_5 {Type I LastRead 0 FirstWrite -1}
		A_6 {Type I LastRead 0 FirstWrite -1}
		A_7 {Type I LastRead 0 FirstWrite -1}
		A_8 {Type I LastRead 0 FirstWrite -1}
		A_9 {Type I LastRead 0 FirstWrite -1}
		A_10 {Type I LastRead 0 FirstWrite -1}
		A_11 {Type I LastRead 0 FirstWrite -1}
		A_12 {Type I LastRead 0 FirstWrite -1}
		A_13 {Type I LastRead 0 FirstWrite -1}
		A_14 {Type I LastRead 0 FirstWrite -1}
		A_15 {Type I LastRead 0 FirstWrite -1}
		B_0 {Type I LastRead 0 FirstWrite -1}
		B_1 {Type I LastRead 0 FirstWrite -1}
		B_2 {Type I LastRead 0 FirstWrite -1}
		B_3 {Type I LastRead 0 FirstWrite -1}
		B_4 {Type I LastRead 0 FirstWrite -1}
		B_5 {Type I LastRead 0 FirstWrite -1}
		B_6 {Type I LastRead 0 FirstWrite -1}
		B_7 {Type I LastRead 0 FirstWrite -1}
		B_8 {Type I LastRead 0 FirstWrite -1}
		B_9 {Type I LastRead 0 FirstWrite -1}
		B_10 {Type I LastRead 0 FirstWrite -1}
		B_11 {Type I LastRead 0 FirstWrite -1}
		B_12 {Type I LastRead 0 FirstWrite -1}
		B_13 {Type I LastRead 0 FirstWrite -1}
		B_14 {Type I LastRead 0 FirstWrite -1}
		B_15 {Type I LastRead 0 FirstWrite -1}
		C_0 {Type O LastRead -1 FirstWrite 12}
		C_1 {Type O LastRead -1 FirstWrite 7}
		C_2 {Type O LastRead -1 FirstWrite 12}
		C_3 {Type O LastRead -1 FirstWrite 7}
		C_4 {Type O LastRead -1 FirstWrite 12}
		C_5 {Type O LastRead -1 FirstWrite 7}
		C_6 {Type O LastRead -1 FirstWrite 12}
		C_7 {Type O LastRead -1 FirstWrite 7}
		C_8 {Type O LastRead -1 FirstWrite 12}
		C_9 {Type O LastRead -1 FirstWrite 7}
		C_10 {Type O LastRead -1 FirstWrite 12}
		C_11 {Type O LastRead -1 FirstWrite 7}
		C_12 {Type O LastRead -1 FirstWrite 12}
		C_13 {Type O LastRead -1 FirstWrite 7}
		C_14 {Type O LastRead -1 FirstWrite 12}
		C_15 {Type O LastRead -1 FirstWrite 7}
		p_ZL4BM_W_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL4BM_W_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL4BM_W_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL4BM_W_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5BM_MW_3 {Type I LastRead -1 FirstWrite -1}}
	basemul_all_Pipeline_BM_WR {
		C {Type I LastRead 0 FirstWrite -1}
		C_1 {Type I LastRead 0 FirstWrite -1}
		C_2 {Type I LastRead 0 FirstWrite -1}
		C_3 {Type I LastRead 0 FirstWrite -1}
		C_4 {Type I LastRead 0 FirstWrite -1}
		C_5 {Type I LastRead 0 FirstWrite -1}
		C_6 {Type I LastRead 0 FirstWrite -1}
		C_7 {Type I LastRead 0 FirstWrite -1}
		C_8 {Type I LastRead 0 FirstWrite -1}
		C_9 {Type I LastRead 0 FirstWrite -1}
		C_10 {Type I LastRead 0 FirstWrite -1}
		C_11 {Type I LastRead 0 FirstWrite -1}
		C_12 {Type I LastRead 0 FirstWrite -1}
		C_13 {Type I LastRead 0 FirstWrite -1}
		C_14 {Type I LastRead 0 FirstWrite -1}
		C_15 {Type I LastRead 0 FirstWrite -1}
		sC0 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "1137"}
	, {"Name" : "Interval", "Min" : "72", "Max" : "1137"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sA1 { ap_fifo {  { sA1_dout fifo_data_in 0 192 }  { sA1_num_data_valid fifo_status_num_data_valid 0 6 }  { sA1_fifo_cap fifo_update 0 6 }  { sA1_empty_n fifo_status 0 1 }  { sA1_read fifo_port_we 1 1 } } }
	sB1 { ap_fifo {  { sB1_dout fifo_data_in 0 192 }  { sB1_num_data_valid fifo_status_num_data_valid 0 6 }  { sB1_fifo_cap fifo_update 0 6 }  { sB1_empty_n fifo_status 0 1 }  { sB1_read fifo_port_we 1 1 } } }
	sC0 { ap_fifo {  { sC0_din fifo_data_in 1 192 }  { sC0_num_data_valid fifo_status_num_data_valid 0 6 }  { sC0_fifo_cap fifo_update 0 6 }  { sC0_full_n fifo_status 0 1 }  { sC0_write fifo_port_we 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data_in 0 32 }  { batch_num_data_valid fifo_status_num_data_valid 0 3 }  { batch_fifo_cap fifo_update 0 3 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_port_we 1 1 } } }
	batch_size_c13 { ap_fifo {  { batch_size_c13_din fifo_data_in 1 32 }  { batch_size_c13_num_data_valid fifo_status_num_data_valid 0 3 }  { batch_size_c13_fifo_cap fifo_update 0 3 }  { batch_size_c13_full_n fifo_status 0 1 }  { batch_size_c13_write fifo_port_we 1 1 } } }
}
