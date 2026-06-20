set moduleName inv_all
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
set C_modelName {inv_all}
set C_modelType { void 0 }
set C_modelArgList {
	{ sC0 int 192 regular {fifo 0 volatile }  }
	{ sC1 int 192 regular {fifo 1 volatile }  }
	{ batch int 32 regular {fifo 0}  }
	{ batch_size_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "sC0", "interface" : "fifo", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "sC1", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch_size_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sC0_dout sc_in sc_lv 192 signal 0 } 
	{ sC0_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ sC0_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ sC0_empty_n sc_in sc_logic 1 signal 0 } 
	{ sC0_read sc_out sc_logic 1 signal 0 } 
	{ sC1_din sc_out sc_lv 192 signal 1 } 
	{ sC1_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ sC1_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ sC1_full_n sc_in sc_logic 1 signal 1 } 
	{ sC1_write sc_out sc_logic 1 signal 1 } 
	{ batch_dout sc_in sc_lv 32 signal 2 } 
	{ batch_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ batch_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ batch_empty_n sc_in sc_logic 1 signal 2 } 
	{ batch_read sc_out sc_logic 1 signal 2 } 
	{ batch_size_c_din sc_out sc_lv 32 signal 3 } 
	{ batch_size_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ batch_size_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ batch_size_c_full_n sc_in sc_logic 1 signal 3 } 
	{ batch_size_c_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sC0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sC0", "role": "dout" }} , 
 	{ "name": "sC0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC0", "role": "num_data_valid" }} , 
 	{ "name": "sC0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC0", "role": "fifo_cap" }} , 
 	{ "name": "sC0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC0", "role": "empty_n" }} , 
 	{ "name": "sC0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC0", "role": "read" }} , 
 	{ "name": "sC1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "sC1", "role": "din" }} , 
 	{ "name": "sC1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC1", "role": "num_data_valid" }} , 
 	{ "name": "sC1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sC1", "role": "fifo_cap" }} , 
 	{ "name": "sC1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC1", "role": "full_n" }} , 
 	{ "name": "sC1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sC1", "role": "write" }} , 
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch", "role": "num_data_valid" }} , 
 	{ "name": "batch_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch", "role": "fifo_cap" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "batch_size_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_size_c", "role": "din" }} , 
 	{ "name": "batch_size_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch_size_c", "role": "num_data_valid" }} , 
 	{ "name": "batch_size_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "batch_size_c", "role": "fifo_cap" }} , 
 	{ "name": "batch_size_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_c", "role": "full_n" }} , 
 	{ "name": "batch_size_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_size_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "182"],
		"CDFG" : "inv_all",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "490", "EstimateLatencyMax" : "7825",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sC0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_inv_all_Pipeline_IN_RD_fu_252", "Port" : "sC0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sC1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_inv_all_Pipeline_IN_WR_fu_406", "Port" : "sC1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_size_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL5INV_W_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_0_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_0_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_1_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_1_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_2_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_2_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL5INV_W_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL5INV_W_3_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL6INV_MW_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_inv_ntt_fu_274", "Port" : "p_ZL6INV_MW_3_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "IN_BLK", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_all_Pipeline_IN_RD_fu_252", "Parent" : "0", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_all_Pipeline_IN_RD_fu_252.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "54", "72", "90", "108", "126", "144", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181"],
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
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_2", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_2", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_2", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_2", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_2", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_3", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_3", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_3", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_3", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_3", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_4", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_4", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_4", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_4", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_4", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_5", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_5", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_5", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_5", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_5", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_5", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_6", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_6", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_6", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_6", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_6", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_6", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_7", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_7", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_7", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_7", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_7", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_7", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_8", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_8", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_8", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_8", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_8", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_8", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_8", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_9", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_9", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_9", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_9", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_9", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_9", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_9", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_10", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_10", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_10", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_10", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_10", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_10", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_10", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_11", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_11", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_11", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_11", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_11", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_11", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_11", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_12", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_12", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_12", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_12", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_12", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_12", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_12", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_13", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_13", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_13", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_13", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_13", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_13", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_13", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_14", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_14", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_14", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_14", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_14", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_14", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "src_15", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "dst_15", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "src_15", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "src_15", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "dst_15", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "dst_15", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "src_15", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL5INV_W_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL6INV_MW_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_inv_stage_t_2_s_fu_728", "Port" : "p_ZL6INV_MW_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL5INV_W_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL5INV_W_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL6INV_MW_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_inv_stage_t_4_s_fu_812", "Port" : "p_ZL6INV_MW_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_ZL5INV_W_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL5INV_W_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL6INV_MW_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_inv_stage_t_8_s_fu_880", "Port" : "p_ZL6INV_MW_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZL5INV_W_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_0_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_0_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_2_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_2_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL5INV_W_3_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL6INV_MW_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_inv_stage_t_16_s_fu_948", "Port" : "p_ZL6INV_MW_3_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_ZL5INV_W_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_0_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_0_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_1_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_1_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_2_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_2_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL5INV_W_3_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL6INV_MW_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_inv_stage_t_32_s_fu_1016", "Port" : "p_ZL6INV_MW_3_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_ZL5INV_W_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_0_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_0_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_1_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_1_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_2_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_2_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL5INV_W_3_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL6INV_MW_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_inv_stage_t_64_s_fu_1084", "Port" : "p_ZL6INV_MW_3_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p_ZL5INV_W_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_0_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_0_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_1_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_1_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL5INV_W_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL5INV_W_3_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_ZL6INV_MW_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_inv_stage_t_128_s_fu_1152", "Port" : "p_ZL6INV_MW_3_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "SCALE", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state14"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state23"]}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_1_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_2_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_3_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_4_U", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_5_U", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_6_U", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_7_U", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_8_U", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_9_U", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_10_U", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_11_U", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_12_U", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_13_U", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_14_U", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.tmp_15_U", "Parent" : "19"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728", "Parent" : "19", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_0_0_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_0_0_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_1_0_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_1_0_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_2_0_U", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_2_0_U", "Parent" : "36"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL5INV_W_3_0_U", "Parent" : "36"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.p_ZL6INV_MW_3_0_U", "Parent" : "36"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1200", "Parent" : "36"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1201", "Parent" : "36"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1202", "Parent" : "36"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1203", "Parent" : "36"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1204", "Parent" : "36"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1205", "Parent" : "36"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1206", "Parent" : "36"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.mac_mul_sub_14s_12ns_32s_32_3_1_U1207", "Parent" : "36"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_2_s_fu_728.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812", "Parent" : "19", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_0_1_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_0_1_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_1_1_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_1_1_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_2_1_U", "Parent" : "54"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_2_1_U", "Parent" : "54"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL5INV_W_3_1_U", "Parent" : "54"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.p_ZL6INV_MW_3_1_U", "Parent" : "54"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1261", "Parent" : "54"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1262", "Parent" : "54"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1263", "Parent" : "54"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1264", "Parent" : "54"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1265", "Parent" : "54"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1266", "Parent" : "54"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1267", "Parent" : "54"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.mac_mul_sub_14s_12ns_32s_32_3_1_U1268", "Parent" : "54"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_4_s_fu_812.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880", "Parent" : "19", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_0_2_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_0_2_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_1_2_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_1_2_U", "Parent" : "72"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_2_2_U", "Parent" : "72"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_2_2_U", "Parent" : "72"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL5INV_W_3_2_U", "Parent" : "72"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.p_ZL6INV_MW_3_2_U", "Parent" : "72"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1319", "Parent" : "72"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1320", "Parent" : "72"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1321", "Parent" : "72"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1322", "Parent" : "72"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1323", "Parent" : "72"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1324", "Parent" : "72"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1325", "Parent" : "72"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.mac_mul_sub_14s_12ns_32s_32_3_1_U1326", "Parent" : "72"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_8_s_fu_880.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948", "Parent" : "19", "Child" : ["91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107"],
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
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_0_3_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_0_3_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_1_3_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_1_3_U", "Parent" : "90"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_2_3_U", "Parent" : "90"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_2_3_U", "Parent" : "90"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL5INV_W_3_3_U", "Parent" : "90"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.p_ZL6INV_MW_3_3_U", "Parent" : "90"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1369", "Parent" : "90"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1370", "Parent" : "90"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1371", "Parent" : "90"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1372", "Parent" : "90"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1373", "Parent" : "90"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1374", "Parent" : "90"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1375", "Parent" : "90"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.mac_mul_sub_14s_12ns_32s_32_3_1_U1376", "Parent" : "90"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_16_s_fu_948.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016", "Parent" : "19", "Child" : ["109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_0_4_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_0_4_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_1_4_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_1_4_U", "Parent" : "108"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_2_4_U", "Parent" : "108"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_2_4_U", "Parent" : "108"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL5INV_W_3_4_U", "Parent" : "108"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.p_ZL6INV_MW_3_4_U", "Parent" : "108"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1427", "Parent" : "108"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1428", "Parent" : "108"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1429", "Parent" : "108"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1430", "Parent" : "108"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1431", "Parent" : "108"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1432", "Parent" : "108"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1433", "Parent" : "108"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.mac_mul_sub_14s_12ns_32s_32_3_1_U1434", "Parent" : "108"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_32_s_fu_1016.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084", "Parent" : "19", "Child" : ["127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"],
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_0_5_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_0_5_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_1_5_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_1_5_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_2_5_U", "Parent" : "126"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_2_5_U", "Parent" : "126"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL5INV_W_3_5_U", "Parent" : "126"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.p_ZL6INV_MW_3_5_U", "Parent" : "126"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1485", "Parent" : "126"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1486", "Parent" : "126"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1487", "Parent" : "126"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1488", "Parent" : "126"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1489", "Parent" : "126"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1490", "Parent" : "126"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1491", "Parent" : "126"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.mac_mul_sub_14s_12ns_32s_32_3_1_U1492", "Parent" : "126"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_64_s_fu_1084.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152", "Parent" : "19", "Child" : ["145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161"],
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
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_0_6_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_0_6_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_1_6_U", "Parent" : "144"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_1_6_U", "Parent" : "144"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_2_6_U", "Parent" : "144"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_2_6_U", "Parent" : "144"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL5INV_W_3_6_U", "Parent" : "144"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.p_ZL6INV_MW_3_6_U", "Parent" : "144"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1543", "Parent" : "144"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1544", "Parent" : "144"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1545", "Parent" : "144"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1546", "Parent" : "144"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1547", "Parent" : "144"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1548", "Parent" : "144"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1549", "Parent" : "144"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.mac_mul_sub_14s_11ns_32s_32_3_1_U1550", "Parent" : "144"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.grp_inv_stage_t_128_s_fu_1152.flow_control_loop_pipe_sequential_init_U", "Parent" : "144"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.sparsemux_33_4_12_1_1_U1584", "Parent" : "19"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_12ns_13ns_24_3_1_U1585", "Parent" : "19"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_24ns_14ns_37_3_1_U1586", "Parent" : "19"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mac_mulsub_12ns_12ns_24ns_25_3_1_U1587", "Parent" : "19"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1588", "Parent" : "19"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1589", "Parent" : "19"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1590", "Parent" : "19"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1591", "Parent" : "19"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1592", "Parent" : "19"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1593", "Parent" : "19"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1594", "Parent" : "19"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32ns_16ns_48_3_1_U1595", "Parent" : "19"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1596", "Parent" : "19"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1597", "Parent" : "19"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1598", "Parent" : "19"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1599", "Parent" : "19"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1600", "Parent" : "19"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1601", "Parent" : "19"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1602", "Parent" : "19"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_ntt_fu_274.mul_32s_13ns_32_3_1_U1603", "Parent" : "19"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_inv_all_Pipeline_IN_WR_fu_406", "Parent" : "0", "Child" : ["183"],
		"CDFG" : "inv_all_Pipeline_IN_WR",
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
			{"Name" : "sC1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sC1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "IN_WR", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_inv_all_Pipeline_IN_WR_fu_406.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"}]}


set ArgLastReadFirstWriteLatency {
	inv_all {
		sC0 {Type I LastRead 1 FirstWrite -1}
		sC1 {Type O LastRead -1 FirstWrite 1}
		batch {Type I LastRead 0 FirstWrite -1}
		batch_size_c {Type O LastRead -1 FirstWrite 0}
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
		sC0 {Type I LastRead 1 FirstWrite -1}}
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
		p_ZL6INV_MW_3_6 {Type I LastRead -1 FirstWrite -1}}
	inv_all_Pipeline_IN_WR {
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
		sC1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "490", "Max" : "7825"}
	, {"Name" : "Interval", "Min" : "490", "Max" : "7825"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sC0 { ap_fifo {  { sC0_dout fifo_data_in 0 192 }  { sC0_num_data_valid fifo_status_num_data_valid 0 6 }  { sC0_fifo_cap fifo_update 0 6 }  { sC0_empty_n fifo_status 0 1 }  { sC0_read fifo_port_we 1 1 } } }
	sC1 { ap_fifo {  { sC1_din fifo_data_in 1 192 }  { sC1_num_data_valid fifo_status_num_data_valid 0 6 }  { sC1_fifo_cap fifo_update 0 6 }  { sC1_full_n fifo_status 0 1 }  { sC1_write fifo_port_we 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data_in 0 32 }  { batch_num_data_valid fifo_status_num_data_valid 0 3 }  { batch_fifo_cap fifo_update 0 3 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_port_we 1 1 } } }
	batch_size_c { ap_fifo {  { batch_size_c_din fifo_data_in 1 32 }  { batch_size_c_num_data_valid fifo_status_num_data_valid 0 3 }  { batch_size_c_fifo_cap fifo_update 0 3 }  { batch_size_c_full_n fifo_status 0 1 }  { batch_size_c_write fifo_port_we 1 1 } } }
}
