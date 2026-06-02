set moduleName ntt_kernel_Pipeline_PERMUTE_LOOP
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
set C_modelName {ntt_kernel_Pipeline_PERMUTE_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ n int 31 regular  }
	{ local_psi int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ burst_buffer int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ ping int 32 regular {array 4096 { 3 0 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "local_psi", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "burst_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n sc_in sc_lv 31 signal 0 } 
	{ local_psi_address0 sc_out sc_lv 12 signal 1 } 
	{ local_psi_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_psi_q0 sc_in sc_lv 12 signal 1 } 
	{ burst_buffer_address0 sc_out sc_lv 12 signal 2 } 
	{ burst_buffer_ce0 sc_out sc_logic 1 signal 2 } 
	{ burst_buffer_q0 sc_in sc_lv 32 signal 2 } 
	{ ping_address1 sc_out sc_lv 12 signal 3 } 
	{ ping_ce1 sc_out sc_logic 1 signal 3 } 
	{ ping_we1 sc_out sc_logic 1 signal 3 } 
	{ ping_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "local_psi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_psi", "role": "address0" }} , 
 	{ "name": "local_psi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_psi", "role": "ce0" }} , 
 	{ "name": "local_psi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_psi", "role": "q0" }} , 
 	{ "name": "burst_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "burst_buffer", "role": "address0" }} , 
 	{ "name": "burst_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burst_buffer", "role": "ce0" }} , 
 	{ "name": "burst_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "burst_buffer", "role": "q0" }} , 
 	{ "name": "ping_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ping", "role": "address1" }} , 
 	{ "name": "ping_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "ce1" }} , 
 	{ "name": "ping_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "we1" }} , 
 	{ "name": "ping_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ping", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ntt_kernel_Pipeline_PERMUTE_LOOP",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_psi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "burst_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ping", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "PERMUTE_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ntt_kernel_Pipeline_PERMUTE_LOOP {
		n {Type I LastRead 0 FirstWrite -1}
		local_psi {Type I LastRead 0 FirstWrite -1}
		burst_buffer {Type I LastRead 1 FirstWrite -1}
		ping {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "259", "Max" : "4099"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 31 } } }
	local_psi { ap_memory {  { local_psi_address0 mem_address 1 12 }  { local_psi_ce0 mem_ce 1 1 }  { local_psi_q0 in_data 0 12 } } }
	burst_buffer { ap_memory {  { burst_buffer_address0 mem_address 1 12 }  { burst_buffer_ce0 mem_ce 1 1 }  { burst_buffer_q0 in_data 0 32 } } }
	ping { ap_memory {  { ping_address1 MemPortADDR2 1 12 }  { ping_ce1 MemPortCE2 1 1 }  { ping_we1 MemPortWE2 1 1 }  { ping_d1 MemPortDIN2 1 32 } } }
}
