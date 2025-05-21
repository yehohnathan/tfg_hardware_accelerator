set moduleName train_step_Pipeline_VITIS_LOOP_118_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 10
set C_modelName {train_step_Pipeline_VITIS_LOOP_118_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict img_pos { MEM_WIDTH 8 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_pos { MEM_WIDTH 2 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict img_neg { MEM_WIDTH 8 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_neg { MEM_WIDTH 2 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ img_pos int 8 regular {array 64 { 1 3 } 1 1 }  }
	{ in_pos int 2 regular {array 64 { 0 3 } 0 1 }  }
	{ img_neg int 8 regular {array 64 { 1 3 } 1 1 }  }
	{ in_neg int 2 regular {array 64 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "img_pos", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_neg", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_neg", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_pos_address0 sc_out sc_lv 6 signal 0 } 
	{ img_pos_ce0 sc_out sc_logic 1 signal 0 } 
	{ img_pos_q0 sc_in sc_lv 8 signal 0 } 
	{ in_pos_address0 sc_out sc_lv 6 signal 1 } 
	{ in_pos_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_pos_we0 sc_out sc_logic 1 signal 1 } 
	{ in_pos_d0 sc_out sc_lv 2 signal 1 } 
	{ img_neg_address0 sc_out sc_lv 6 signal 2 } 
	{ img_neg_ce0 sc_out sc_logic 1 signal 2 } 
	{ img_neg_q0 sc_in sc_lv 8 signal 2 } 
	{ in_neg_address0 sc_out sc_lv 6 signal 3 } 
	{ in_neg_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_neg_we0 sc_out sc_logic 1 signal 3 } 
	{ in_neg_d0 sc_out sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_pos", "role": "address0" }} , 
 	{ "name": "img_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_pos", "role": "ce0" }} , 
 	{ "name": "img_pos_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_pos", "role": "q0" }} , 
 	{ "name": "in_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_pos", "role": "address0" }} , 
 	{ "name": "in_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_pos", "role": "ce0" }} , 
 	{ "name": "in_pos_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_pos", "role": "we0" }} , 
 	{ "name": "in_pos_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos", "role": "d0" }} , 
 	{ "name": "img_neg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_neg", "role": "address0" }} , 
 	{ "name": "img_neg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_neg", "role": "ce0" }} , 
 	{ "name": "img_neg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_neg", "role": "q0" }} , 
 	{ "name": "in_neg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_neg", "role": "address0" }} , 
 	{ "name": "in_neg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_neg", "role": "ce0" }} , 
 	{ "name": "in_neg_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_neg", "role": "we0" }} , 
 	{ "name": "in_neg_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_neg", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_118_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_pos", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_pos", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "img_neg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_neg", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step_Pipeline_VITIS_LOOP_118_1 {
		img_pos {Type I LastRead 0 FirstWrite -1}
		in_pos {Type O LastRead -1 FirstWrite 1}
		img_neg {Type I LastRead 0 FirstWrite -1}
		in_neg {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_pos { ap_memory {  { img_pos_address0 mem_address 1 6 }  { img_pos_ce0 mem_ce 1 1 }  { img_pos_q0 mem_dout 0 8 } } }
	in_pos { ap_memory {  { in_pos_address0 mem_address 1 6 }  { in_pos_ce0 mem_ce 1 1 }  { in_pos_we0 mem_we 1 1 }  { in_pos_d0 mem_din 1 2 } } }
	img_neg { ap_memory {  { img_neg_address0 mem_address 1 6 }  { img_neg_ce0 mem_ce 1 1 }  { img_neg_q0 mem_dout 0 8 } } }
	in_neg { ap_memory {  { in_neg_address0 mem_address 1 6 }  { in_neg_ce0 mem_ce 1 1 }  { in_neg_we0 mem_we 1 1 }  { in_neg_d0 mem_din 1 2 } } }
}
