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
	{ sub53 int 12 regular  }
	{ stage int 32 regular  }
	{ stage_1 int 32 regular  }
	{ empty_29 int 12 regular  }
	{ empty int 12 regular  }
	{ local_twiddles int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ ping int 32 regular {array 4096 { 1 2 } 1 1 }  }
	{ pong int 32 regular {array 4096 { 1 2 } 1 1 }  }
	{ use_ping_as_input int 1 regular  }
	{ q_inv int 32 regular  }
	{ conv5_i int 32 regular  }
	{ q int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "half_n", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "sub53", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "stage", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stage_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_29", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_twiddles", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pong", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "use_ping_as_input", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "q_inv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv5_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "q", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ half_n sc_in sc_lv 31 signal 0 } 
	{ sub53 sc_in sc_lv 12 signal 1 } 
	{ stage sc_in sc_lv 32 signal 2 } 
	{ stage_1 sc_in sc_lv 32 signal 3 } 
	{ empty_29 sc_in sc_lv 12 signal 4 } 
	{ empty sc_in sc_lv 12 signal 5 } 
	{ local_twiddles_address0 sc_out sc_lv 12 signal 6 } 
	{ local_twiddles_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_twiddles_q0 sc_in sc_lv 32 signal 6 } 
	{ ping_address0 sc_out sc_lv 12 signal 7 } 
	{ ping_ce0 sc_out sc_logic 1 signal 7 } 
	{ ping_q0 sc_in sc_lv 32 signal 7 } 
	{ ping_address1 sc_out sc_lv 12 signal 7 } 
	{ ping_ce1 sc_out sc_logic 1 signal 7 } 
	{ ping_we1 sc_out sc_logic 1 signal 7 } 
	{ ping_d1 sc_out sc_lv 32 signal 7 } 
	{ ping_q1 sc_in sc_lv 32 signal 7 } 
	{ pong_address0 sc_out sc_lv 12 signal 8 } 
	{ pong_ce0 sc_out sc_logic 1 signal 8 } 
	{ pong_q0 sc_in sc_lv 32 signal 8 } 
	{ pong_address1 sc_out sc_lv 12 signal 8 } 
	{ pong_ce1 sc_out sc_logic 1 signal 8 } 
	{ pong_we1 sc_out sc_logic 1 signal 8 } 
	{ pong_d1 sc_out sc_lv 32 signal 8 } 
	{ pong_q1 sc_in sc_lv 32 signal 8 } 
	{ use_ping_as_input sc_in sc_lv 1 signal 9 } 
	{ q_inv sc_in sc_lv 32 signal 10 } 
	{ conv5_i sc_in sc_lv 32 signal 11 } 
	{ q sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "half_n", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "half_n", "role": "default" }} , 
 	{ "name": "sub53", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sub53", "role": "default" }} , 
 	{ "name": "stage", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stage", "role": "default" }} , 
 	{ "name": "stage_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stage_1", "role": "default" }} , 
 	{ "name": "empty_29", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "empty_29", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "local_twiddles_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_twiddles", "role": "address0" }} , 
 	{ "name": "local_twiddles_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_twiddles", "role": "ce0" }} , 
 	{ "name": "local_twiddles_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_twiddles", "role": "q0" }} , 
 	{ "name": "ping_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ping", "role": "address0" }} , 
 	{ "name": "ping_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "ce0" }} , 
 	{ "name": "ping_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "q0" }} , 
 	{ "name": "ping_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ping", "role": "address1" }} , 
 	{ "name": "ping_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "ce1" }} , 
 	{ "name": "ping_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "we1" }} , 
 	{ "name": "ping_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "d1" }} , 
 	{ "name": "ping_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "q1" }} , 
 	{ "name": "pong_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "pong", "role": "address0" }} , 
 	{ "name": "pong_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "ce0" }} , 
 	{ "name": "pong_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "q0" }} , 
 	{ "name": "pong_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "pong", "role": "address1" }} , 
 	{ "name": "pong_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "ce1" }} , 
 	{ "name": "pong_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "we1" }} , 
 	{ "name": "pong_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "d1" }} , 
 	{ "name": "pong_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pong", "role": "q1" }} , 
 	{ "name": "use_ping_as_input", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "use_ping_as_input", "role": "default" }} , 
 	{ "name": "q_inv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q_inv", "role": "default" }} , 
 	{ "name": "conv5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv5_i", "role": "default" }} , 
 	{ "name": "q", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1666", "EstimateLatencyMax" : "26626",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "half_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub53", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "stage_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_twiddles", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pong", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "use_ping_as_input", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_inv", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv5_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FLATTENED_BUTTERFLY_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_4_1_U17", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_2_1_U19", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP {
		half_n {Type I LastRead 0 FirstWrite -1}
		sub53 {Type I LastRead 0 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		stage_1 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		local_twiddles {Type I LastRead 0 FirstWrite -1}
		ping {Type IO LastRead 2 FirstWrite 12}
		pong {Type IO LastRead 2 FirstWrite 12}
		use_ping_as_input {Type I LastRead 0 FirstWrite -1}
		q_inv {Type I LastRead 0 FirstWrite -1}
		conv5_i {Type I LastRead 0 FirstWrite -1}
		q {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1666", "Max" : "26626"}
	, {"Name" : "Interval", "Min" : "1666", "Max" : "26626"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	half_n { ap_none {  { half_n in_data 0 31 } } }
	sub53 { ap_none {  { sub53 in_data 0 12 } } }
	stage { ap_none {  { stage in_data 0 32 } } }
	stage_1 { ap_none {  { stage_1 in_data 0 32 } } }
	empty_29 { ap_none {  { empty_29 in_data 0 12 } } }
	empty { ap_none {  { empty in_data 0 12 } } }
	local_twiddles { ap_memory {  { local_twiddles_address0 mem_address 1 12 }  { local_twiddles_ce0 mem_ce 1 1 }  { local_twiddles_q0 mem_dout 0 32 } } }
	ping { ap_memory {  { ping_address0 mem_address 1 12 }  { ping_ce0 mem_ce 1 1 }  { ping_q0 in_data 0 32 }  { ping_address1 MemPortADDR2 1 12 }  { ping_ce1 MemPortCE2 1 1 }  { ping_we1 MemPortWE2 1 1 }  { ping_d1 MemPortDIN2 1 32 }  { ping_q1 MemPortDOUT2 0 32 } } }
	pong { ap_memory {  { pong_address0 mem_address 1 12 }  { pong_ce0 mem_ce 1 1 }  { pong_q0 in_data 0 32 }  { pong_address1 MemPortADDR2 1 12 }  { pong_ce1 MemPortCE2 1 1 }  { pong_we1 MemPortWE2 1 1 }  { pong_d1 MemPortDIN2 1 32 }  { pong_q1 MemPortDOUT2 0 32 } } }
	use_ping_as_input { ap_none {  { use_ping_as_input in_data 0 1 } } }
	q_inv { ap_none {  { q_inv in_data 0 32 } } }
	conv5_i { ap_none {  { conv5_i in_data 0 32 } } }
	q { ap_none {  { q in_data 0 32 } } }
}
