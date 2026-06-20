set moduleName fwd_all
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
set C_modelName {fwd_all}
set C_modelType { void 0 }
set C_modelArgList {
	{ sA0 int 192 regular {fifo 0 volatile }  }
	{ sB0 int 192 regular {fifo 0 volatile }  }
	{ sA1 int 192 regular {fifo 1 volatile }  }
	{ sB1 int 192 regular {fifo 1 volatile }  }
	{ batch int 32 regular {fifo 0}  }
	{ batch_size_c14 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "sA0", "interface" : "fifo", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "sB0", "interface" : "fifo", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "sA1", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sB1", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch_size_c14", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
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
	{ sA0_dout sc_in sc_lv 192 signal 0 } 
	{ sA0_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ sA0_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ sA0_empty_n sc_in sc_logic 1 signal 0 } 
	{ sA0_read sc_out sc_logic 1 signal 0 } 
	{ sB0_dout sc_in sc_lv 192 signal 1 } 
	{ sB0_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ sB0_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ sB0_empty_n sc_in sc_logic 1 signal 1 } 
	{ sB0_read sc_out sc_logic 1 signal 1 } 
	{ sA1_din sc_out sc_lv 192 signal 2 } 
	{ sA1_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ sA1_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ sA1_full_n sc_in sc_logic 1 signal 2 } 
	{ sA1_write sc_out sc_logic 1 signal 2 } 
	{ sB1_din sc_out sc_lv 192 signal 3 } 
	{ sB1_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ sB1_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ sB1_full_n sc_in sc_logic 1 signal 3 } 
	{ sB1_write sc_out sc_logic 1 signal 3 } 
	{ batch_dout sc_in sc_lv 32 signal 4 } 
	{ batch_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ batch_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ batch_empty_n sc_in sc_logic 1 signal 4 } 
	{ batch_read sc_out sc_logic 1 signal 4 } 
	{ batch_size_c14_din sc_out sc_lv 32 signal 5 } 
	{ batch_size_c14_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ batch_size_c14_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ batch_size_c14_full_n sc_in sc_logic 1 signal 5 } 
	{ batch_size_c14_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "sA0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sA0", "role": "dout" }} , 
 	{ "name": "sA0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sA0", "role": "num_data_valid" }} , 
 	{ "name": "sA0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sA0", "role": "fifo_cap" }} , 
 	{ "name": "sA0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sA0", "role": "empty_n" }} , 
 	{ "name": "sA0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sA0", "role": "read" }} , 
 	{ "name": "sB0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sB0", "role": "dout" }} , 
 	{ "name": "sB0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sB0", "role": "num_data_valid" }} , 
 	{ "name": "sB0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sB0", "role": "fifo_cap" }} , 
 	{ "name": "sB0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sB0", "role": "empty_n" }} , 
 	{ "name": "sB0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sB0", "role": "read" }} , 
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
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch", "role": "num_data_valid" }} , 
 	{ "name": "batch_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch", "role": "fifo_cap" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "batch_size_c14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_size_c14", "role": "din" }} , 
 	{ "name": "batch_size_c14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch_size_c14", "role": "num_data_valid" }} , 
 	{ "name": "batch_size_c14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch_size_c14", "role": "fifo_cap" }} , 
 	{ "name": "batch_size_c14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_c14", "role": "full_n" }} , 
 	{ "name": "batch_size_c14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_c14", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "35", "476"],
		"CDFG" : "fwd_all",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "486", "EstimateLatencyMax" : "7761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sA0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_fwd_all_Pipeline_FW_RD_fu_320", "Port" : "sA0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sB0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_fwd_all_Pipeline_FW_RD_fu_320", "Port" : "sB0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sA1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "476", "SubInstance" : "grp_fwd_all_Pipeline_FW_WR_fu_508", "Port" : "sA1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "sB1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "476", "SubInstance" : "grp_fwd_all_Pipeline_FW_WR_fu_508", "Port" : "sB1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_size_c14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_size_c14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL5FWD_W_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_0_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_0_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_1_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_1_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_2_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_2_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5FWD_W_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL5FWD_W_3_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6FWD_MW_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fwd_ntt2_fu_360", "Port" : "p_ZL6FWD_MW_3_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "FW_BLK", "PipelineType" : "no",
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
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fwd_all_Pipeline_FW_RD_fu_320", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "fwd_all_Pipeline_FW_RD",
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
			{"Name" : "sA0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sA0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sB0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sB0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FW_RD", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_all_Pipeline_FW_RD_fu_320.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "126", "184", "242", "300", "358", "416", "474", "475"],
		"CDFG" : "fwd_ntt2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "443", "EstimateLatencyMax" : "443",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_2", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_2", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_2", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_2", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_2", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_3", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_3", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_3", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_3", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_3", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_4", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_4", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_4", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_4", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_4", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_5", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_5", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_5", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_5", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_5", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_6", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_6", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_6", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_6", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_6", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_7", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_7", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_7", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_7", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_7", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_8", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_8", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_8", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_8", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_8", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_8", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_8", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_9", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_9", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_9", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_9", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_9", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_9", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_9", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_10", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_10", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_10", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_10", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_10", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_10", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_10", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_11", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_11", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_11", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_11", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_11", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_11", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_11", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_12", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_12", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_12", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_12", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_12", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_12", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_12", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_13", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_13", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_13", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_13", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_13", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_13", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_13", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_14", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_14", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_14", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_14", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_14", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_14", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sA_15", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dA_15", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sA_15", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sA_15", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dA_15", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dA_15", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sA_15", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_2", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_2", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_2", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_2", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_2", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_3", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_3", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_3", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_3", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_3", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_4", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_4", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_4", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_4", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_4", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_5", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_5", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_5", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_5", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_5", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_6", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_6", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_6", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_6", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_6", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_7", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_7", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_7", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_7", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_7", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_8", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_8", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_8", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_8", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_8", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_8", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_8", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_9", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_9", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_9", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_9", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_9", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_9", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_9", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_10", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_10", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_10", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_10", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_10", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_10", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_10", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_11", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_11", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_11", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_11", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_11", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_11", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_11", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_12", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_12", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_12", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_12", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_12", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_12", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_12", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_13", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_13", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_13", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_13", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_13", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_13", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_13", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_14", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_14", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_14", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_14", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_14", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_14", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "sB_15", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "dB_15", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "sB_15", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "sB_15", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "dB_15", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "dB_15", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "sB_15", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5FWD_W_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL5FWD_W_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6FWD_MW_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL6FWD_MW_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5FWD_W_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL5FWD_W_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6FWD_MW_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL6FWD_MW_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5FWD_W_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL5FWD_W_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6FWD_MW_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL6FWD_MW_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5FWD_W_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL5FWD_W_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6FWD_MW_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_fwd_stage2_t_128_s_fu_1190", "Port" : "p_ZL6FWD_MW_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5FWD_W_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL5FWD_W_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6FWD_MW_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL6FWD_MW_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5FWD_W_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL5FWD_W_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6FWD_MW_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL6FWD_MW_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5FWD_W_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL5FWD_W_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6FWD_MW_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL6FWD_MW_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5FWD_W_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL5FWD_W_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6FWD_MW_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_fwd_stage2_t_64_s_fu_1338", "Port" : "p_ZL6FWD_MW_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5FWD_W_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL5FWD_W_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6FWD_MW_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL6FWD_MW_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5FWD_W_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL5FWD_W_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6FWD_MW_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL6FWD_MW_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5FWD_W_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL5FWD_W_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6FWD_MW_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL6FWD_MW_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5FWD_W_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL5FWD_W_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6FWD_MW_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_fwd_stage2_t_32_s_fu_1454", "Port" : "p_ZL6FWD_MW_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5FWD_W_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL5FWD_W_0_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6FWD_MW_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL6FWD_MW_0_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5FWD_W_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL5FWD_W_1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6FWD_MW_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL6FWD_MW_1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5FWD_W_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL5FWD_W_2_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6FWD_MW_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL6FWD_MW_2_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5FWD_W_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL5FWD_W_3_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6FWD_MW_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_fwd_stage2_t_16_s_fu_1570", "Port" : "p_ZL6FWD_MW_3_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5FWD_W_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL5FWD_W_0_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6FWD_MW_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL6FWD_MW_0_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5FWD_W_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL5FWD_W_1_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6FWD_MW_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL6FWD_MW_1_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5FWD_W_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL5FWD_W_2_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6FWD_MW_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL6FWD_MW_2_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5FWD_W_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL5FWD_W_3_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6FWD_MW_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_fwd_stage2_t_8_s_fu_1686", "Port" : "p_ZL6FWD_MW_3_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5FWD_W_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL5FWD_W_0_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6FWD_MW_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL6FWD_MW_0_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5FWD_W_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL5FWD_W_1_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6FWD_MW_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL6FWD_MW_1_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5FWD_W_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL5FWD_W_2_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6FWD_MW_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL6FWD_MW_2_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5FWD_W_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL5FWD_W_3_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6FWD_MW_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "grp_fwd_stage2_t_4_s_fu_1802", "Port" : "p_ZL6FWD_MW_3_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5FWD_W_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL5FWD_W_0_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6FWD_MW_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL6FWD_MW_0_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5FWD_W_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL5FWD_W_1_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6FWD_MW_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL6FWD_MW_1_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5FWD_W_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL5FWD_W_2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6FWD_MW_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL6FWD_MW_2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5FWD_W_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL5FWD_W_3_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6FWD_MW_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_fwd_stage2_t_2_s_fu_1918", "Port" : "p_ZL6FWD_MW_3_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "FCP2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state14"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state17"]}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_1_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_2_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_3_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_4_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_5_U", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_6_U", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_7_U", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_8_U", "Parent" : "35"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_9_U", "Parent" : "35"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_10_U", "Parent" : "35"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_11_U", "Parent" : "35"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_12_U", "Parent" : "35"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_13_U", "Parent" : "35"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_14_U", "Parent" : "35"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tA_15_U", "Parent" : "35"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_U", "Parent" : "35"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_1_U", "Parent" : "35"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_2_U", "Parent" : "35"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_3_U", "Parent" : "35"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_4_U", "Parent" : "35"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_5_U", "Parent" : "35"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_6_U", "Parent" : "35"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_7_U", "Parent" : "35"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_8_U", "Parent" : "35"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_9_U", "Parent" : "35"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_10_U", "Parent" : "35"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_11_U", "Parent" : "35"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_12_U", "Parent" : "35"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_13_U", "Parent" : "35"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_14_U", "Parent" : "35"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.tB_15_U", "Parent" : "35"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190", "Parent" : "35", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
		"CDFG" : "fwd_stage2_t_128_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL5FWD_W_0_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL6FWD_MW_0_0_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL5FWD_W_1_0_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL6FWD_MW_1_0_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL5FWD_W_2_0_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL6FWD_MW_2_0_U", "Parent" : "68"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL5FWD_W_3_0_U", "Parent" : "68"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.p_ZL6FWD_MW_3_0_U", "Parent" : "68"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U52", "Parent" : "68"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U53", "Parent" : "68"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U54", "Parent" : "68"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U55", "Parent" : "68"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U56", "Parent" : "68"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U57", "Parent" : "68"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U58", "Parent" : "68"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U59", "Parent" : "68"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U60", "Parent" : "68"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U61", "Parent" : "68"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U62", "Parent" : "68"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U63", "Parent" : "68"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U64", "Parent" : "68"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U65", "Parent" : "68"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U66", "Parent" : "68"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_16ns_12ns_28_3_1_U67", "Parent" : "68"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U68", "Parent" : "68"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U69", "Parent" : "68"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U70", "Parent" : "68"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U71", "Parent" : "68"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U72", "Parent" : "68"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U73", "Parent" : "68"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U74", "Parent" : "68"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U75", "Parent" : "68"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U76", "Parent" : "68"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U77", "Parent" : "68"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U78", "Parent" : "68"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U79", "Parent" : "68"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U80", "Parent" : "68"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U81", "Parent" : "68"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U82", "Parent" : "68"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mul_12ns_11ns_23_3_1_U83", "Parent" : "68"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U84", "Parent" : "68"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U85", "Parent" : "68"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U86", "Parent" : "68"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U87", "Parent" : "68"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U88", "Parent" : "68"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U89", "Parent" : "68"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U90", "Parent" : "68"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U91", "Parent" : "68"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U92", "Parent" : "68"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U93", "Parent" : "68"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U94", "Parent" : "68"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U95", "Parent" : "68"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U96", "Parent" : "68"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U97", "Parent" : "68"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U98", "Parent" : "68"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.mac_mulsub_12ns_12ns_23ns_24_3_1_U99", "Parent" : "68"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_128_s_fu_1190.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338", "Parent" : "35", "Child" : ["127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183"],
		"CDFG" : "fwd_stage2_t_64_s",
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
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL5FWD_W_0_1_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL6FWD_MW_0_1_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL5FWD_W_1_1_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL6FWD_MW_1_1_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL5FWD_W_2_1_U", "Parent" : "126"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL6FWD_MW_2_1_U", "Parent" : "126"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL5FWD_W_3_1_U", "Parent" : "126"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.p_ZL6FWD_MW_3_1_U", "Parent" : "126"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U169", "Parent" : "126"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U170", "Parent" : "126"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U171", "Parent" : "126"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U172", "Parent" : "126"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U173", "Parent" : "126"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U174", "Parent" : "126"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U175", "Parent" : "126"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U176", "Parent" : "126"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U177", "Parent" : "126"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U178", "Parent" : "126"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U179", "Parent" : "126"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U180", "Parent" : "126"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U181", "Parent" : "126"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U182", "Parent" : "126"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U183", "Parent" : "126"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_16ns_12ns_28_3_1_U184", "Parent" : "126"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U185", "Parent" : "126"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U186", "Parent" : "126"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U187", "Parent" : "126"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U188", "Parent" : "126"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U189", "Parent" : "126"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U190", "Parent" : "126"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U191", "Parent" : "126"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U192", "Parent" : "126"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U193", "Parent" : "126"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U194", "Parent" : "126"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U195", "Parent" : "126"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U196", "Parent" : "126"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U197", "Parent" : "126"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U198", "Parent" : "126"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U199", "Parent" : "126"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mul_12ns_12ns_24_3_1_U200", "Parent" : "126"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U201", "Parent" : "126"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U202", "Parent" : "126"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U203", "Parent" : "126"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U204", "Parent" : "126"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U205", "Parent" : "126"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U206", "Parent" : "126"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U207", "Parent" : "126"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U208", "Parent" : "126"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U209", "Parent" : "126"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U210", "Parent" : "126"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U211", "Parent" : "126"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U212", "Parent" : "126"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U213", "Parent" : "126"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U214", "Parent" : "126"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U215", "Parent" : "126"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.mac_mulsub_12ns_12ns_24ns_25_3_1_U216", "Parent" : "126"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_64_s_fu_1338.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454", "Parent" : "35", "Child" : ["185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241"],
		"CDFG" : "fwd_stage2_t_32_s",
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
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL5FWD_W_0_2_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL6FWD_MW_0_2_U", "Parent" : "184"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL5FWD_W_1_2_U", "Parent" : "184"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL6FWD_MW_1_2_U", "Parent" : "184"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL5FWD_W_2_2_U", "Parent" : "184"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL6FWD_MW_2_2_U", "Parent" : "184"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL5FWD_W_3_2_U", "Parent" : "184"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.p_ZL6FWD_MW_3_2_U", "Parent" : "184"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U285", "Parent" : "184"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U286", "Parent" : "184"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U287", "Parent" : "184"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U288", "Parent" : "184"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U289", "Parent" : "184"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U290", "Parent" : "184"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U291", "Parent" : "184"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U292", "Parent" : "184"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U293", "Parent" : "184"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U294", "Parent" : "184"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U295", "Parent" : "184"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U296", "Parent" : "184"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U297", "Parent" : "184"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U298", "Parent" : "184"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U299", "Parent" : "184"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_16ns_12ns_28_3_1_U300", "Parent" : "184"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U301", "Parent" : "184"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U302", "Parent" : "184"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U303", "Parent" : "184"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U304", "Parent" : "184"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U305", "Parent" : "184"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U306", "Parent" : "184"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U307", "Parent" : "184"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U308", "Parent" : "184"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U309", "Parent" : "184"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U310", "Parent" : "184"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U311", "Parent" : "184"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U312", "Parent" : "184"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U313", "Parent" : "184"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U314", "Parent" : "184"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U315", "Parent" : "184"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mul_12ns_12ns_24_3_1_U316", "Parent" : "184"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U317", "Parent" : "184"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U318", "Parent" : "184"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U319", "Parent" : "184"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U320", "Parent" : "184"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U321", "Parent" : "184"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U322", "Parent" : "184"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U323", "Parent" : "184"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U324", "Parent" : "184"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U325", "Parent" : "184"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U326", "Parent" : "184"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U327", "Parent" : "184"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U328", "Parent" : "184"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U329", "Parent" : "184"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U330", "Parent" : "184"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U331", "Parent" : "184"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.mac_mulsub_12ns_12ns_24ns_25_3_1_U332", "Parent" : "184"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_32_s_fu_1454.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570", "Parent" : "35", "Child" : ["243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299"],
		"CDFG" : "fwd_stage2_t_16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL5FWD_W_0_3_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL6FWD_MW_0_3_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL5FWD_W_1_3_U", "Parent" : "242"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL6FWD_MW_1_3_U", "Parent" : "242"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL5FWD_W_2_3_U", "Parent" : "242"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL6FWD_MW_2_3_U", "Parent" : "242"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL5FWD_W_3_3_U", "Parent" : "242"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.p_ZL6FWD_MW_3_3_U", "Parent" : "242"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U399", "Parent" : "242"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U400", "Parent" : "242"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U401", "Parent" : "242"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U402", "Parent" : "242"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U403", "Parent" : "242"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U404", "Parent" : "242"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U405", "Parent" : "242"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U406", "Parent" : "242"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U407", "Parent" : "242"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U408", "Parent" : "242"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U409", "Parent" : "242"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U410", "Parent" : "242"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U411", "Parent" : "242"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U412", "Parent" : "242"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U413", "Parent" : "242"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U414", "Parent" : "242"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U415", "Parent" : "242"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U416", "Parent" : "242"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U417", "Parent" : "242"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U418", "Parent" : "242"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U419", "Parent" : "242"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U420", "Parent" : "242"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U421", "Parent" : "242"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U422", "Parent" : "242"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U423", "Parent" : "242"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U424", "Parent" : "242"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U425", "Parent" : "242"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U426", "Parent" : "242"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U427", "Parent" : "242"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U428", "Parent" : "242"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_16ns_12ns_28_3_1_U429", "Parent" : "242"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mul_12ns_12ns_24_3_1_U430", "Parent" : "242"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U431", "Parent" : "242"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U432", "Parent" : "242"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U433", "Parent" : "242"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U434", "Parent" : "242"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U435", "Parent" : "242"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U436", "Parent" : "242"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U437", "Parent" : "242"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U438", "Parent" : "242"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U439", "Parent" : "242"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U440", "Parent" : "242"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U441", "Parent" : "242"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U442", "Parent" : "242"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U443", "Parent" : "242"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U444", "Parent" : "242"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U445", "Parent" : "242"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.mac_mulsub_12ns_12ns_24ns_25_3_1_U446", "Parent" : "242"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_16_s_fu_1570.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686", "Parent" : "35", "Child" : ["301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357"],
		"CDFG" : "fwd_stage2_t_8_s",
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
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL5FWD_W_0_4_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL6FWD_MW_0_4_U", "Parent" : "300"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL5FWD_W_1_4_U", "Parent" : "300"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL6FWD_MW_1_4_U", "Parent" : "300"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL5FWD_W_2_4_U", "Parent" : "300"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL6FWD_MW_2_4_U", "Parent" : "300"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL5FWD_W_3_4_U", "Parent" : "300"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.p_ZL6FWD_MW_3_4_U", "Parent" : "300"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U513", "Parent" : "300"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U514", "Parent" : "300"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U515", "Parent" : "300"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U516", "Parent" : "300"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U517", "Parent" : "300"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U518", "Parent" : "300"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U519", "Parent" : "300"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U520", "Parent" : "300"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U521", "Parent" : "300"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U522", "Parent" : "300"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U523", "Parent" : "300"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U524", "Parent" : "300"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U525", "Parent" : "300"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U526", "Parent" : "300"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U527", "Parent" : "300"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_16ns_12ns_28_3_1_U528", "Parent" : "300"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U529", "Parent" : "300"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U530", "Parent" : "300"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U531", "Parent" : "300"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U532", "Parent" : "300"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U533", "Parent" : "300"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U534", "Parent" : "300"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U535", "Parent" : "300"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U536", "Parent" : "300"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U537", "Parent" : "300"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U538", "Parent" : "300"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U539", "Parent" : "300"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U540", "Parent" : "300"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U541", "Parent" : "300"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U542", "Parent" : "300"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U543", "Parent" : "300"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mul_12ns_12ns_24_3_1_U544", "Parent" : "300"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U545", "Parent" : "300"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U546", "Parent" : "300"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U547", "Parent" : "300"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U548", "Parent" : "300"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U549", "Parent" : "300"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U550", "Parent" : "300"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U551", "Parent" : "300"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U552", "Parent" : "300"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U553", "Parent" : "300"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U554", "Parent" : "300"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U555", "Parent" : "300"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U556", "Parent" : "300"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U557", "Parent" : "300"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U558", "Parent" : "300"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U559", "Parent" : "300"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.mac_mulsub_12ns_12ns_24ns_25_3_1_U560", "Parent" : "300"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_8_s_fu_1686.flow_control_loop_pipe_sequential_init_U", "Parent" : "300"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802", "Parent" : "35", "Child" : ["359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415"],
		"CDFG" : "fwd_stage2_t_4_s",
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
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL5FWD_W_0_5_U", "Parent" : "358"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL6FWD_MW_0_5_U", "Parent" : "358"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL5FWD_W_1_5_U", "Parent" : "358"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL6FWD_MW_1_5_U", "Parent" : "358"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL5FWD_W_2_5_U", "Parent" : "358"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL6FWD_MW_2_5_U", "Parent" : "358"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL5FWD_W_3_5_U", "Parent" : "358"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.p_ZL6FWD_MW_3_5_U", "Parent" : "358"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U627", "Parent" : "358"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U628", "Parent" : "358"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U629", "Parent" : "358"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U630", "Parent" : "358"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U631", "Parent" : "358"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U632", "Parent" : "358"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U633", "Parent" : "358"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U634", "Parent" : "358"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U635", "Parent" : "358"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U636", "Parent" : "358"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U637", "Parent" : "358"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U638", "Parent" : "358"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U639", "Parent" : "358"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U640", "Parent" : "358"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U641", "Parent" : "358"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_16ns_12ns_28_3_1_U642", "Parent" : "358"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U643", "Parent" : "358"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U644", "Parent" : "358"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U645", "Parent" : "358"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U646", "Parent" : "358"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U647", "Parent" : "358"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U648", "Parent" : "358"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U649", "Parent" : "358"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U650", "Parent" : "358"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U651", "Parent" : "358"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U652", "Parent" : "358"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U653", "Parent" : "358"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U654", "Parent" : "358"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U655", "Parent" : "358"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U656", "Parent" : "358"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U657", "Parent" : "358"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mul_12ns_12ns_24_3_1_U658", "Parent" : "358"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U659", "Parent" : "358"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U660", "Parent" : "358"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U661", "Parent" : "358"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U662", "Parent" : "358"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U663", "Parent" : "358"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U664", "Parent" : "358"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U665", "Parent" : "358"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U666", "Parent" : "358"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U667", "Parent" : "358"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U668", "Parent" : "358"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U669", "Parent" : "358"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U670", "Parent" : "358"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U671", "Parent" : "358"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U672", "Parent" : "358"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U673", "Parent" : "358"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.mac_mulsub_12ns_12ns_24ns_25_3_1_U674", "Parent" : "358"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_4_s_fu_1802.flow_control_loop_pipe_sequential_init_U", "Parent" : "358"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918", "Parent" : "35", "Child" : ["417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473"],
		"CDFG" : "fwd_stage2_t_2_s",
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
			{"Name" : "sA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sA_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dA_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sB_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dB_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL5FWD_W_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL5FWD_W_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL6FWD_MW_3_6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FWD_BF2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL5FWD_W_0_6_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL6FWD_MW_0_6_U", "Parent" : "416"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL5FWD_W_1_6_U", "Parent" : "416"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL6FWD_MW_1_6_U", "Parent" : "416"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL5FWD_W_2_6_U", "Parent" : "416"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL6FWD_MW_2_6_U", "Parent" : "416"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL5FWD_W_3_6_U", "Parent" : "416"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.p_ZL6FWD_MW_3_6_U", "Parent" : "416"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U741", "Parent" : "416"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U742", "Parent" : "416"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U743", "Parent" : "416"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U744", "Parent" : "416"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U745", "Parent" : "416"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U746", "Parent" : "416"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U747", "Parent" : "416"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U748", "Parent" : "416"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U749", "Parent" : "416"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U750", "Parent" : "416"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U751", "Parent" : "416"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U752", "Parent" : "416"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U753", "Parent" : "416"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U754", "Parent" : "416"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U755", "Parent" : "416"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_16ns_12ns_28_3_1_U756", "Parent" : "416"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U757", "Parent" : "416"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U758", "Parent" : "416"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U759", "Parent" : "416"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U760", "Parent" : "416"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U761", "Parent" : "416"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U762", "Parent" : "416"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U763", "Parent" : "416"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U764", "Parent" : "416"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U765", "Parent" : "416"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U766", "Parent" : "416"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U767", "Parent" : "416"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U768", "Parent" : "416"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U769", "Parent" : "416"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U770", "Parent" : "416"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U771", "Parent" : "416"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mul_12ns_12ns_24_3_1_U772", "Parent" : "416"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U773", "Parent" : "416"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U774", "Parent" : "416"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U775", "Parent" : "416"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U776", "Parent" : "416"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U777", "Parent" : "416"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U778", "Parent" : "416"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U779", "Parent" : "416"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U780", "Parent" : "416"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U781", "Parent" : "416"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U782", "Parent" : "416"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U783", "Parent" : "416"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U784", "Parent" : "416"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U785", "Parent" : "416"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U786", "Parent" : "416"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U787", "Parent" : "416"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.mac_mulsub_12ns_12ns_24ns_25_3_1_U788", "Parent" : "416"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.grp_fwd_stage2_t_2_s_fu_1918.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.sparsemux_33_4_12_1_1_U857", "Parent" : "35"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_ntt2_fu_360.sparsemux_33_4_12_1_1_U858", "Parent" : "35"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fwd_all_Pipeline_FW_WR_fu_508", "Parent" : "0", "Child" : ["477"],
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
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fwd_all_Pipeline_FW_WR_fu_508.flow_control_loop_pipe_sequential_init_U", "Parent" : "476"}]}


set ArgLastReadFirstWriteLatency {
	fwd_all {
		sA0 {Type I LastRead 1 FirstWrite -1}
		sB0 {Type I LastRead 1 FirstWrite -1}
		sA1 {Type O LastRead -1 FirstWrite 1}
		sB1 {Type O LastRead -1 FirstWrite 1}
		batch {Type I LastRead 0 FirstWrite -1}
		batch_size_c14 {Type O LastRead -1 FirstWrite 0}
		p_ZL5FWD_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_6 {Type I LastRead -1 FirstWrite -1}}
	fwd_all_Pipeline_FW_RD {
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
		sA0 {Type I LastRead 1 FirstWrite -1}
		sB0 {Type I LastRead 1 FirstWrite -1}}
	fwd_ntt2 {
		A_0 {Type IO LastRead 4 FirstWrite -1}
		A_1 {Type IO LastRead 4 FirstWrite -1}
		A_2 {Type IO LastRead 4 FirstWrite -1}
		A_3 {Type IO LastRead 4 FirstWrite -1}
		A_4 {Type IO LastRead 4 FirstWrite -1}
		A_5 {Type IO LastRead 4 FirstWrite -1}
		A_6 {Type IO LastRead 4 FirstWrite -1}
		A_7 {Type IO LastRead 4 FirstWrite -1}
		A_8 {Type IO LastRead 4 FirstWrite -1}
		A_9 {Type IO LastRead 4 FirstWrite -1}
		A_10 {Type IO LastRead 4 FirstWrite -1}
		A_11 {Type IO LastRead 4 FirstWrite -1}
		A_12 {Type IO LastRead 4 FirstWrite -1}
		A_13 {Type IO LastRead 4 FirstWrite -1}
		A_14 {Type IO LastRead 4 FirstWrite -1}
		A_15 {Type IO LastRead 4 FirstWrite -1}
		B_0 {Type IO LastRead 4 FirstWrite -1}
		B_1 {Type IO LastRead 4 FirstWrite -1}
		B_2 {Type IO LastRead 4 FirstWrite -1}
		B_3 {Type IO LastRead 4 FirstWrite -1}
		B_4 {Type IO LastRead 4 FirstWrite -1}
		B_5 {Type IO LastRead 4 FirstWrite -1}
		B_6 {Type IO LastRead 4 FirstWrite -1}
		B_7 {Type IO LastRead 4 FirstWrite -1}
		B_8 {Type IO LastRead 4 FirstWrite -1}
		B_9 {Type IO LastRead 4 FirstWrite -1}
		B_10 {Type IO LastRead 4 FirstWrite -1}
		B_11 {Type IO LastRead 4 FirstWrite -1}
		B_12 {Type IO LastRead 4 FirstWrite -1}
		B_13 {Type IO LastRead 4 FirstWrite -1}
		B_14 {Type IO LastRead 4 FirstWrite -1}
		B_15 {Type IO LastRead 4 FirstWrite -1}
		p_ZL5FWD_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_6 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_128_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 4 FirstWrite -1}
		sA_3 {Type I LastRead 4 FirstWrite -1}
		sA_4 {Type I LastRead 4 FirstWrite -1}
		sA_5 {Type I LastRead 4 FirstWrite -1}
		sA_6 {Type I LastRead 4 FirstWrite -1}
		sA_7 {Type I LastRead 4 FirstWrite -1}
		sA_8 {Type I LastRead 4 FirstWrite -1}
		sA_9 {Type I LastRead 4 FirstWrite -1}
		sA_10 {Type I LastRead 4 FirstWrite -1}
		sA_11 {Type I LastRead 4 FirstWrite -1}
		sA_12 {Type I LastRead 4 FirstWrite -1}
		sA_13 {Type I LastRead 4 FirstWrite -1}
		sA_14 {Type I LastRead 4 FirstWrite -1}
		sA_15 {Type I LastRead 4 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 5}
		dA_5 {Type O LastRead -1 FirstWrite 5}
		dA_6 {Type O LastRead -1 FirstWrite 5}
		dA_7 {Type O LastRead -1 FirstWrite 5}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 5}
		dA_13 {Type O LastRead -1 FirstWrite 5}
		dA_14 {Type O LastRead -1 FirstWrite 5}
		dA_15 {Type O LastRead -1 FirstWrite 5}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 4 FirstWrite -1}
		sB_3 {Type I LastRead 4 FirstWrite -1}
		sB_4 {Type I LastRead 4 FirstWrite -1}
		sB_5 {Type I LastRead 4 FirstWrite -1}
		sB_6 {Type I LastRead 4 FirstWrite -1}
		sB_7 {Type I LastRead 4 FirstWrite -1}
		sB_8 {Type I LastRead 4 FirstWrite -1}
		sB_9 {Type I LastRead 4 FirstWrite -1}
		sB_10 {Type I LastRead 4 FirstWrite -1}
		sB_11 {Type I LastRead 4 FirstWrite -1}
		sB_12 {Type I LastRead 4 FirstWrite -1}
		sB_13 {Type I LastRead 4 FirstWrite -1}
		sB_14 {Type I LastRead 4 FirstWrite -1}
		sB_15 {Type I LastRead 4 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 5}
		dB_5 {Type O LastRead -1 FirstWrite 5}
		dB_6 {Type O LastRead -1 FirstWrite 5}
		dB_7 {Type O LastRead -1 FirstWrite 5}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 5}
		dB_13 {Type O LastRead -1 FirstWrite 5}
		dB_14 {Type O LastRead -1 FirstWrite 5}
		dB_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5FWD_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_0 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_64_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 4 FirstWrite -1}
		sA_3 {Type I LastRead 4 FirstWrite -1}
		sA_4 {Type I LastRead 4 FirstWrite -1}
		sA_5 {Type I LastRead 4 FirstWrite -1}
		sA_6 {Type I LastRead 4 FirstWrite -1}
		sA_7 {Type I LastRead 4 FirstWrite -1}
		sA_8 {Type I LastRead 4 FirstWrite -1}
		sA_9 {Type I LastRead 4 FirstWrite -1}
		sA_10 {Type I LastRead 4 FirstWrite -1}
		sA_11 {Type I LastRead 4 FirstWrite -1}
		sA_12 {Type I LastRead 4 FirstWrite -1}
		sA_13 {Type I LastRead 4 FirstWrite -1}
		sA_14 {Type I LastRead 4 FirstWrite -1}
		sA_15 {Type I LastRead 4 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 5}
		dA_5 {Type O LastRead -1 FirstWrite 5}
		dA_6 {Type O LastRead -1 FirstWrite 5}
		dA_7 {Type O LastRead -1 FirstWrite 5}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 5}
		dA_13 {Type O LastRead -1 FirstWrite 5}
		dA_14 {Type O LastRead -1 FirstWrite 5}
		dA_15 {Type O LastRead -1 FirstWrite 5}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 4 FirstWrite -1}
		sB_3 {Type I LastRead 4 FirstWrite -1}
		sB_4 {Type I LastRead 4 FirstWrite -1}
		sB_5 {Type I LastRead 4 FirstWrite -1}
		sB_6 {Type I LastRead 4 FirstWrite -1}
		sB_7 {Type I LastRead 4 FirstWrite -1}
		sB_8 {Type I LastRead 4 FirstWrite -1}
		sB_9 {Type I LastRead 4 FirstWrite -1}
		sB_10 {Type I LastRead 4 FirstWrite -1}
		sB_11 {Type I LastRead 4 FirstWrite -1}
		sB_12 {Type I LastRead 4 FirstWrite -1}
		sB_13 {Type I LastRead 4 FirstWrite -1}
		sB_14 {Type I LastRead 4 FirstWrite -1}
		sB_15 {Type I LastRead 4 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 5}
		dB_5 {Type O LastRead -1 FirstWrite 5}
		dB_6 {Type O LastRead -1 FirstWrite 5}
		dB_7 {Type O LastRead -1 FirstWrite 5}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 5}
		dB_13 {Type O LastRead -1 FirstWrite 5}
		dB_14 {Type O LastRead -1 FirstWrite 5}
		dB_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5FWD_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_1 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_32_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 4 FirstWrite -1}
		sA_3 {Type I LastRead 4 FirstWrite -1}
		sA_4 {Type I LastRead 4 FirstWrite -1}
		sA_5 {Type I LastRead 4 FirstWrite -1}
		sA_6 {Type I LastRead 4 FirstWrite -1}
		sA_7 {Type I LastRead 4 FirstWrite -1}
		sA_8 {Type I LastRead 4 FirstWrite -1}
		sA_9 {Type I LastRead 4 FirstWrite -1}
		sA_10 {Type I LastRead 4 FirstWrite -1}
		sA_11 {Type I LastRead 4 FirstWrite -1}
		sA_12 {Type I LastRead 4 FirstWrite -1}
		sA_13 {Type I LastRead 4 FirstWrite -1}
		sA_14 {Type I LastRead 4 FirstWrite -1}
		sA_15 {Type I LastRead 4 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 5}
		dA_5 {Type O LastRead -1 FirstWrite 5}
		dA_6 {Type O LastRead -1 FirstWrite 5}
		dA_7 {Type O LastRead -1 FirstWrite 5}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 5}
		dA_13 {Type O LastRead -1 FirstWrite 5}
		dA_14 {Type O LastRead -1 FirstWrite 5}
		dA_15 {Type O LastRead -1 FirstWrite 5}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 4 FirstWrite -1}
		sB_3 {Type I LastRead 4 FirstWrite -1}
		sB_4 {Type I LastRead 4 FirstWrite -1}
		sB_5 {Type I LastRead 4 FirstWrite -1}
		sB_6 {Type I LastRead 4 FirstWrite -1}
		sB_7 {Type I LastRead 4 FirstWrite -1}
		sB_8 {Type I LastRead 4 FirstWrite -1}
		sB_9 {Type I LastRead 4 FirstWrite -1}
		sB_10 {Type I LastRead 4 FirstWrite -1}
		sB_11 {Type I LastRead 4 FirstWrite -1}
		sB_12 {Type I LastRead 4 FirstWrite -1}
		sB_13 {Type I LastRead 4 FirstWrite -1}
		sB_14 {Type I LastRead 4 FirstWrite -1}
		sB_15 {Type I LastRead 4 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 5}
		dB_5 {Type O LastRead -1 FirstWrite 5}
		dB_6 {Type O LastRead -1 FirstWrite 5}
		dB_7 {Type O LastRead -1 FirstWrite 5}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 5}
		dB_13 {Type O LastRead -1 FirstWrite 5}
		dB_14 {Type O LastRead -1 FirstWrite 5}
		dB_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5FWD_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_2 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_16_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 4 FirstWrite -1}
		sA_3 {Type I LastRead 4 FirstWrite -1}
		sA_4 {Type I LastRead 4 FirstWrite -1}
		sA_5 {Type I LastRead 4 FirstWrite -1}
		sA_6 {Type I LastRead 4 FirstWrite -1}
		sA_7 {Type I LastRead 4 FirstWrite -1}
		sA_8 {Type I LastRead 4 FirstWrite -1}
		sA_9 {Type I LastRead 4 FirstWrite -1}
		sA_10 {Type I LastRead 4 FirstWrite -1}
		sA_11 {Type I LastRead 4 FirstWrite -1}
		sA_12 {Type I LastRead 4 FirstWrite -1}
		sA_13 {Type I LastRead 4 FirstWrite -1}
		sA_14 {Type I LastRead 4 FirstWrite -1}
		sA_15 {Type I LastRead 4 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 6}
		dA_5 {Type O LastRead -1 FirstWrite 6}
		dA_6 {Type O LastRead -1 FirstWrite 6}
		dA_7 {Type O LastRead -1 FirstWrite 6}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 6}
		dA_13 {Type O LastRead -1 FirstWrite 6}
		dA_14 {Type O LastRead -1 FirstWrite 6}
		dA_15 {Type O LastRead -1 FirstWrite 6}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 4 FirstWrite -1}
		sB_3 {Type I LastRead 4 FirstWrite -1}
		sB_4 {Type I LastRead 4 FirstWrite -1}
		sB_5 {Type I LastRead 4 FirstWrite -1}
		sB_6 {Type I LastRead 4 FirstWrite -1}
		sB_7 {Type I LastRead 4 FirstWrite -1}
		sB_8 {Type I LastRead 4 FirstWrite -1}
		sB_9 {Type I LastRead 4 FirstWrite -1}
		sB_10 {Type I LastRead 4 FirstWrite -1}
		sB_11 {Type I LastRead 4 FirstWrite -1}
		sB_12 {Type I LastRead 4 FirstWrite -1}
		sB_13 {Type I LastRead 4 FirstWrite -1}
		sB_14 {Type I LastRead 4 FirstWrite -1}
		sB_15 {Type I LastRead 4 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 6}
		dB_5 {Type O LastRead -1 FirstWrite 6}
		dB_6 {Type O LastRead -1 FirstWrite 6}
		dB_7 {Type O LastRead -1 FirstWrite 6}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 6}
		dB_13 {Type O LastRead -1 FirstWrite 6}
		dB_14 {Type O LastRead -1 FirstWrite 6}
		dB_15 {Type O LastRead -1 FirstWrite 6}
		p_ZL5FWD_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_3 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_8_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 4 FirstWrite -1}
		sA_3 {Type I LastRead 4 FirstWrite -1}
		sA_4 {Type I LastRead 4 FirstWrite -1}
		sA_5 {Type I LastRead 4 FirstWrite -1}
		sA_6 {Type I LastRead 4 FirstWrite -1}
		sA_7 {Type I LastRead 4 FirstWrite -1}
		sA_8 {Type I LastRead 0 FirstWrite -1}
		sA_9 {Type I LastRead 0 FirstWrite -1}
		sA_10 {Type I LastRead 0 FirstWrite -1}
		sA_11 {Type I LastRead 0 FirstWrite -1}
		sA_12 {Type I LastRead 0 FirstWrite -1}
		sA_13 {Type I LastRead 0 FirstWrite -1}
		sA_14 {Type I LastRead 0 FirstWrite -1}
		sA_15 {Type I LastRead 0 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 5}
		dA_5 {Type O LastRead -1 FirstWrite 5}
		dA_6 {Type O LastRead -1 FirstWrite 5}
		dA_7 {Type O LastRead -1 FirstWrite 5}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 5}
		dA_13 {Type O LastRead -1 FirstWrite 5}
		dA_14 {Type O LastRead -1 FirstWrite 5}
		dA_15 {Type O LastRead -1 FirstWrite 5}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 4 FirstWrite -1}
		sB_3 {Type I LastRead 4 FirstWrite -1}
		sB_4 {Type I LastRead 4 FirstWrite -1}
		sB_5 {Type I LastRead 4 FirstWrite -1}
		sB_6 {Type I LastRead 4 FirstWrite -1}
		sB_7 {Type I LastRead 4 FirstWrite -1}
		sB_8 {Type I LastRead 0 FirstWrite -1}
		sB_9 {Type I LastRead 0 FirstWrite -1}
		sB_10 {Type I LastRead 0 FirstWrite -1}
		sB_11 {Type I LastRead 0 FirstWrite -1}
		sB_12 {Type I LastRead 0 FirstWrite -1}
		sB_13 {Type I LastRead 0 FirstWrite -1}
		sB_14 {Type I LastRead 0 FirstWrite -1}
		sB_15 {Type I LastRead 0 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 5}
		dB_5 {Type O LastRead -1 FirstWrite 5}
		dB_6 {Type O LastRead -1 FirstWrite 5}
		dB_7 {Type O LastRead -1 FirstWrite 5}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 5}
		dB_13 {Type O LastRead -1 FirstWrite 5}
		dB_14 {Type O LastRead -1 FirstWrite 5}
		dB_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5FWD_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_4 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_4_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 4 FirstWrite -1}
		sA_3 {Type I LastRead 4 FirstWrite -1}
		sA_4 {Type I LastRead 0 FirstWrite -1}
		sA_5 {Type I LastRead 0 FirstWrite -1}
		sA_6 {Type I LastRead 0 FirstWrite -1}
		sA_7 {Type I LastRead 0 FirstWrite -1}
		sA_8 {Type I LastRead 4 FirstWrite -1}
		sA_9 {Type I LastRead 4 FirstWrite -1}
		sA_10 {Type I LastRead 4 FirstWrite -1}
		sA_11 {Type I LastRead 4 FirstWrite -1}
		sA_12 {Type I LastRead 0 FirstWrite -1}
		sA_13 {Type I LastRead 0 FirstWrite -1}
		sA_14 {Type I LastRead 0 FirstWrite -1}
		sA_15 {Type I LastRead 0 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 5}
		dA_5 {Type O LastRead -1 FirstWrite 5}
		dA_6 {Type O LastRead -1 FirstWrite 5}
		dA_7 {Type O LastRead -1 FirstWrite 5}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 5}
		dA_13 {Type O LastRead -1 FirstWrite 5}
		dA_14 {Type O LastRead -1 FirstWrite 5}
		dA_15 {Type O LastRead -1 FirstWrite 5}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 4 FirstWrite -1}
		sB_3 {Type I LastRead 4 FirstWrite -1}
		sB_4 {Type I LastRead 0 FirstWrite -1}
		sB_5 {Type I LastRead 0 FirstWrite -1}
		sB_6 {Type I LastRead 0 FirstWrite -1}
		sB_7 {Type I LastRead 0 FirstWrite -1}
		sB_8 {Type I LastRead 4 FirstWrite -1}
		sB_9 {Type I LastRead 4 FirstWrite -1}
		sB_10 {Type I LastRead 4 FirstWrite -1}
		sB_11 {Type I LastRead 4 FirstWrite -1}
		sB_12 {Type I LastRead 0 FirstWrite -1}
		sB_13 {Type I LastRead 0 FirstWrite -1}
		sB_14 {Type I LastRead 0 FirstWrite -1}
		sB_15 {Type I LastRead 0 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 5}
		dB_5 {Type O LastRead -1 FirstWrite 5}
		dB_6 {Type O LastRead -1 FirstWrite 5}
		dB_7 {Type O LastRead -1 FirstWrite 5}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 5}
		dB_13 {Type O LastRead -1 FirstWrite 5}
		dB_14 {Type O LastRead -1 FirstWrite 5}
		dB_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5FWD_W_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_5 {Type I LastRead -1 FirstWrite -1}}
	fwd_stage2_t_2_s {
		sA_0 {Type I LastRead 4 FirstWrite -1}
		sA_1 {Type I LastRead 4 FirstWrite -1}
		sA_2 {Type I LastRead 0 FirstWrite -1}
		sA_3 {Type I LastRead 0 FirstWrite -1}
		sA_4 {Type I LastRead 4 FirstWrite -1}
		sA_5 {Type I LastRead 4 FirstWrite -1}
		sA_6 {Type I LastRead 0 FirstWrite -1}
		sA_7 {Type I LastRead 0 FirstWrite -1}
		sA_8 {Type I LastRead 4 FirstWrite -1}
		sA_9 {Type I LastRead 4 FirstWrite -1}
		sA_10 {Type I LastRead 0 FirstWrite -1}
		sA_11 {Type I LastRead 0 FirstWrite -1}
		sA_12 {Type I LastRead 4 FirstWrite -1}
		sA_13 {Type I LastRead 4 FirstWrite -1}
		sA_14 {Type I LastRead 0 FirstWrite -1}
		sA_15 {Type I LastRead 0 FirstWrite -1}
		dA_0 {Type O LastRead -1 FirstWrite 5}
		dA_1 {Type O LastRead -1 FirstWrite 5}
		dA_2 {Type O LastRead -1 FirstWrite 5}
		dA_3 {Type O LastRead -1 FirstWrite 5}
		dA_4 {Type O LastRead -1 FirstWrite 5}
		dA_5 {Type O LastRead -1 FirstWrite 5}
		dA_6 {Type O LastRead -1 FirstWrite 5}
		dA_7 {Type O LastRead -1 FirstWrite 5}
		dA_8 {Type O LastRead -1 FirstWrite 5}
		dA_9 {Type O LastRead -1 FirstWrite 5}
		dA_10 {Type O LastRead -1 FirstWrite 5}
		dA_11 {Type O LastRead -1 FirstWrite 5}
		dA_12 {Type O LastRead -1 FirstWrite 5}
		dA_13 {Type O LastRead -1 FirstWrite 5}
		dA_14 {Type O LastRead -1 FirstWrite 5}
		dA_15 {Type O LastRead -1 FirstWrite 5}
		sB_0 {Type I LastRead 4 FirstWrite -1}
		sB_1 {Type I LastRead 4 FirstWrite -1}
		sB_2 {Type I LastRead 0 FirstWrite -1}
		sB_3 {Type I LastRead 0 FirstWrite -1}
		sB_4 {Type I LastRead 4 FirstWrite -1}
		sB_5 {Type I LastRead 4 FirstWrite -1}
		sB_6 {Type I LastRead 0 FirstWrite -1}
		sB_7 {Type I LastRead 0 FirstWrite -1}
		sB_8 {Type I LastRead 4 FirstWrite -1}
		sB_9 {Type I LastRead 4 FirstWrite -1}
		sB_10 {Type I LastRead 0 FirstWrite -1}
		sB_11 {Type I LastRead 0 FirstWrite -1}
		sB_12 {Type I LastRead 4 FirstWrite -1}
		sB_13 {Type I LastRead 4 FirstWrite -1}
		sB_14 {Type I LastRead 0 FirstWrite -1}
		sB_15 {Type I LastRead 0 FirstWrite -1}
		dB_0 {Type O LastRead -1 FirstWrite 5}
		dB_1 {Type O LastRead -1 FirstWrite 5}
		dB_2 {Type O LastRead -1 FirstWrite 5}
		dB_3 {Type O LastRead -1 FirstWrite 5}
		dB_4 {Type O LastRead -1 FirstWrite 5}
		dB_5 {Type O LastRead -1 FirstWrite 5}
		dB_6 {Type O LastRead -1 FirstWrite 5}
		dB_7 {Type O LastRead -1 FirstWrite 5}
		dB_8 {Type O LastRead -1 FirstWrite 5}
		dB_9 {Type O LastRead -1 FirstWrite 5}
		dB_10 {Type O LastRead -1 FirstWrite 5}
		dB_11 {Type O LastRead -1 FirstWrite 5}
		dB_12 {Type O LastRead -1 FirstWrite 5}
		dB_13 {Type O LastRead -1 FirstWrite 5}
		dB_14 {Type O LastRead -1 FirstWrite 5}
		dB_15 {Type O LastRead -1 FirstWrite 5}
		p_ZL5FWD_W_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_0_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_1_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_2_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL5FWD_W_3_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL6FWD_MW_3_6 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "486", "Max" : "7761"}
	, {"Name" : "Interval", "Min" : "486", "Max" : "7761"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sA0 { ap_fifo {  { sA0_dout fifo_data_in 0 192 }  { sA0_num_data_valid fifo_status_num_data_valid 0 6 }  { sA0_fifo_cap fifo_update 0 6 }  { sA0_empty_n fifo_status 0 1 }  { sA0_read fifo_port_we 1 1 } } }
	sB0 { ap_fifo {  { sB0_dout fifo_data_in 0 192 }  { sB0_num_data_valid fifo_status_num_data_valid 0 6 }  { sB0_fifo_cap fifo_update 0 6 }  { sB0_empty_n fifo_status 0 1 }  { sB0_read fifo_port_we 1 1 } } }
	sA1 { ap_fifo {  { sA1_din fifo_data_in 1 192 }  { sA1_num_data_valid fifo_status_num_data_valid 0 6 }  { sA1_fifo_cap fifo_update 0 6 }  { sA1_full_n fifo_status 0 1 }  { sA1_write fifo_port_we 1 1 } } }
	sB1 { ap_fifo {  { sB1_din fifo_data_in 1 192 }  { sB1_num_data_valid fifo_status_num_data_valid 0 6 }  { sB1_fifo_cap fifo_update 0 6 }  { sB1_full_n fifo_status 0 1 }  { sB1_write fifo_port_we 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data_in 0 32 }  { batch_num_data_valid fifo_status_num_data_valid 0 3 }  { batch_fifo_cap fifo_update 0 3 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_port_we 1 1 } } }
	batch_size_c14 { ap_fifo {  { batch_size_c14_din fifo_data_in 1 32 }  { batch_size_c14_num_data_valid fifo_status_num_data_valid 0 3 }  { batch_size_c14_fifo_cap fifo_update 0 3 }  { batch_size_c14_full_n fifo_status 0 1 }  { batch_size_c14_write fifo_port_we 1 1 } } }
}
