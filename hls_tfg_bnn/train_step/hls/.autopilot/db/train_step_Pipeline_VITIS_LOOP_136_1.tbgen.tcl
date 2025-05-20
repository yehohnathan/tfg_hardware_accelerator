set moduleName train_step_Pipeline_VITIS_LOOP_136_1
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
set cdfgNum 7
set C_modelName {train_step_Pipeline_VITIS_LOOP_136_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict W1_out { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ W1_out int 8 regular {array 32 { 0 0 } 0 1 }  }
	{ W1_0_0_load int 2 regular  }
	{ W1_0_1_load int 2 regular  }
	{ W1_0_2_load int 2 regular  }
	{ W1_0_3_load int 2 regular  }
	{ W1_1_0_load int 2 regular  }
	{ W1_1_1_load int 2 regular  }
	{ W1_1_2_load int 2 regular  }
	{ W1_1_3_load int 2 regular  }
	{ W1_2_0_load int 2 regular  }
	{ W1_2_1_load int 2 regular  }
	{ W1_2_2_load int 2 regular  }
	{ W1_2_3_load int 2 regular  }
	{ W1_3_0_load int 2 regular  }
	{ W1_3_1_load int 2 regular  }
	{ W1_3_2_load int 2 regular  }
	{ W1_3_3_load int 2 regular  }
	{ W1_4_0_load int 2 regular  }
	{ W1_4_1_load int 2 regular  }
	{ W1_4_2_load int 2 regular  }
	{ W1_4_3_load int 2 regular  }
	{ W1_5_0_load int 2 regular  }
	{ W1_5_1_load int 2 regular  }
	{ W1_5_2_load int 2 regular  }
	{ W1_5_3_load int 2 regular  }
	{ W1_6_0_load int 2 regular  }
	{ W1_6_1_load int 2 regular  }
	{ W1_6_2_load int 2 regular  }
	{ W1_6_3_load int 2 regular  }
	{ W1_7_0_load int 2 regular  }
	{ W1_7_1_load int 2 regular  }
	{ W1_7_2_load int 2 regular  }
	{ W1_7_3_load int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "W1_out", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W1_0_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_0_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_0_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_0_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_1_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_1_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_1_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_1_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_2_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_2_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_2_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_2_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_3_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_3_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_3_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_3_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_4_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_4_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_4_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_4_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_5_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_5_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_5_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_5_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_6_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_6_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_6_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_6_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_7_0_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_7_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_7_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1_7_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ W1_out_address0 sc_out sc_lv 5 signal 0 } 
	{ W1_out_ce0 sc_out sc_logic 1 signal 0 } 
	{ W1_out_we0 sc_out sc_logic 1 signal 0 } 
	{ W1_out_d0 sc_out sc_lv 8 signal 0 } 
	{ W1_out_address1 sc_out sc_lv 5 signal 0 } 
	{ W1_out_ce1 sc_out sc_logic 1 signal 0 } 
	{ W1_out_we1 sc_out sc_logic 1 signal 0 } 
	{ W1_out_d1 sc_out sc_lv 8 signal 0 } 
	{ W1_0_0_load sc_in sc_lv 2 signal 1 } 
	{ W1_0_1_load sc_in sc_lv 2 signal 2 } 
	{ W1_0_2_load sc_in sc_lv 2 signal 3 } 
	{ W1_0_3_load sc_in sc_lv 2 signal 4 } 
	{ W1_1_0_load sc_in sc_lv 2 signal 5 } 
	{ W1_1_1_load sc_in sc_lv 2 signal 6 } 
	{ W1_1_2_load sc_in sc_lv 2 signal 7 } 
	{ W1_1_3_load sc_in sc_lv 2 signal 8 } 
	{ W1_2_0_load sc_in sc_lv 2 signal 9 } 
	{ W1_2_1_load sc_in sc_lv 2 signal 10 } 
	{ W1_2_2_load sc_in sc_lv 2 signal 11 } 
	{ W1_2_3_load sc_in sc_lv 2 signal 12 } 
	{ W1_3_0_load sc_in sc_lv 2 signal 13 } 
	{ W1_3_1_load sc_in sc_lv 2 signal 14 } 
	{ W1_3_2_load sc_in sc_lv 2 signal 15 } 
	{ W1_3_3_load sc_in sc_lv 2 signal 16 } 
	{ W1_4_0_load sc_in sc_lv 2 signal 17 } 
	{ W1_4_1_load sc_in sc_lv 2 signal 18 } 
	{ W1_4_2_load sc_in sc_lv 2 signal 19 } 
	{ W1_4_3_load sc_in sc_lv 2 signal 20 } 
	{ W1_5_0_load sc_in sc_lv 2 signal 21 } 
	{ W1_5_1_load sc_in sc_lv 2 signal 22 } 
	{ W1_5_2_load sc_in sc_lv 2 signal 23 } 
	{ W1_5_3_load sc_in sc_lv 2 signal 24 } 
	{ W1_6_0_load sc_in sc_lv 2 signal 25 } 
	{ W1_6_1_load sc_in sc_lv 2 signal 26 } 
	{ W1_6_2_load sc_in sc_lv 2 signal 27 } 
	{ W1_6_3_load sc_in sc_lv 2 signal 28 } 
	{ W1_7_0_load sc_in sc_lv 2 signal 29 } 
	{ W1_7_1_load sc_in sc_lv 2 signal 30 } 
	{ W1_7_2_load sc_in sc_lv 2 signal 31 } 
	{ W1_7_3_load sc_in sc_lv 2 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "W1_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "W1_out", "role": "address0" }} , 
 	{ "name": "W1_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "ce0" }} , 
 	{ "name": "W1_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "we0" }} , 
 	{ "name": "W1_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W1_out", "role": "d0" }} , 
 	{ "name": "W1_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "W1_out", "role": "address1" }} , 
 	{ "name": "W1_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "ce1" }} , 
 	{ "name": "W1_out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "we1" }} , 
 	{ "name": "W1_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W1_out", "role": "d1" }} , 
 	{ "name": "W1_0_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_0_load", "role": "default" }} , 
 	{ "name": "W1_0_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_1_load", "role": "default" }} , 
 	{ "name": "W1_0_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_2_load", "role": "default" }} , 
 	{ "name": "W1_0_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_3_load", "role": "default" }} , 
 	{ "name": "W1_1_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_0_load", "role": "default" }} , 
 	{ "name": "W1_1_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_1_load", "role": "default" }} , 
 	{ "name": "W1_1_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_2_load", "role": "default" }} , 
 	{ "name": "W1_1_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_3_load", "role": "default" }} , 
 	{ "name": "W1_2_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_0_load", "role": "default" }} , 
 	{ "name": "W1_2_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_1_load", "role": "default" }} , 
 	{ "name": "W1_2_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_2_load", "role": "default" }} , 
 	{ "name": "W1_2_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_3_load", "role": "default" }} , 
 	{ "name": "W1_3_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_0_load", "role": "default" }} , 
 	{ "name": "W1_3_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_1_load", "role": "default" }} , 
 	{ "name": "W1_3_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_2_load", "role": "default" }} , 
 	{ "name": "W1_3_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_3_load", "role": "default" }} , 
 	{ "name": "W1_4_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_0_load", "role": "default" }} , 
 	{ "name": "W1_4_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_1_load", "role": "default" }} , 
 	{ "name": "W1_4_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_2_load", "role": "default" }} , 
 	{ "name": "W1_4_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_3_load", "role": "default" }} , 
 	{ "name": "W1_5_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_0_load", "role": "default" }} , 
 	{ "name": "W1_5_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_1_load", "role": "default" }} , 
 	{ "name": "W1_5_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_2_load", "role": "default" }} , 
 	{ "name": "W1_5_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_3_load", "role": "default" }} , 
 	{ "name": "W1_6_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_0_load", "role": "default" }} , 
 	{ "name": "W1_6_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_1_load", "role": "default" }} , 
 	{ "name": "W1_6_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_2_load", "role": "default" }} , 
 	{ "name": "W1_6_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_3_load", "role": "default" }} , 
 	{ "name": "W1_7_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_0_load", "role": "default" }} , 
 	{ "name": "W1_7_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_1_load", "role": "default" }} , 
 	{ "name": "W1_7_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_2_load", "role": "default" }} , 
 	{ "name": "W1_7_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_3_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_136_1",
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
			{"Name" : "W1_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W1_0_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_3_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state4", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state4_blk", "QuitState" : "ap_ST_fsm_state4", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state4_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U156", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U157", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U158", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U159", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U160", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U161", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U162", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_2_1_1_U163", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step_Pipeline_VITIS_LOOP_136_1 {
		W1_out {Type O LastRead -1 FirstWrite 0}
		W1_0_0_load {Type I LastRead 0 FirstWrite -1}
		W1_0_1_load {Type I LastRead 0 FirstWrite -1}
		W1_0_2_load {Type I LastRead 0 FirstWrite -1}
		W1_0_3_load {Type I LastRead 0 FirstWrite -1}
		W1_1_0_load {Type I LastRead 0 FirstWrite -1}
		W1_1_1_load {Type I LastRead 0 FirstWrite -1}
		W1_1_2_load {Type I LastRead 0 FirstWrite -1}
		W1_1_3_load {Type I LastRead 0 FirstWrite -1}
		W1_2_0_load {Type I LastRead 0 FirstWrite -1}
		W1_2_1_load {Type I LastRead 0 FirstWrite -1}
		W1_2_2_load {Type I LastRead 0 FirstWrite -1}
		W1_2_3_load {Type I LastRead 0 FirstWrite -1}
		W1_3_0_load {Type I LastRead 0 FirstWrite -1}
		W1_3_1_load {Type I LastRead 0 FirstWrite -1}
		W1_3_2_load {Type I LastRead 0 FirstWrite -1}
		W1_3_3_load {Type I LastRead 0 FirstWrite -1}
		W1_4_0_load {Type I LastRead 0 FirstWrite -1}
		W1_4_1_load {Type I LastRead 0 FirstWrite -1}
		W1_4_2_load {Type I LastRead 0 FirstWrite -1}
		W1_4_3_load {Type I LastRead 0 FirstWrite -1}
		W1_5_0_load {Type I LastRead 0 FirstWrite -1}
		W1_5_1_load {Type I LastRead 0 FirstWrite -1}
		W1_5_2_load {Type I LastRead 0 FirstWrite -1}
		W1_5_3_load {Type I LastRead 0 FirstWrite -1}
		W1_6_0_load {Type I LastRead 0 FirstWrite -1}
		W1_6_1_load {Type I LastRead 0 FirstWrite -1}
		W1_6_2_load {Type I LastRead 0 FirstWrite -1}
		W1_6_3_load {Type I LastRead 0 FirstWrite -1}
		W1_7_0_load {Type I LastRead 0 FirstWrite -1}
		W1_7_1_load {Type I LastRead 0 FirstWrite -1}
		W1_7_2_load {Type I LastRead 0 FirstWrite -1}
		W1_7_3_load {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	W1_out { ap_memory {  { W1_out_address0 mem_address 1 5 }  { W1_out_ce0 mem_ce 1 1 }  { W1_out_we0 mem_we 1 1 }  { W1_out_d0 mem_din 1 8 }  { W1_out_address1 MemPortADDR2 1 5 }  { W1_out_ce1 MemPortCE2 1 1 }  { W1_out_we1 MemPortWE2 1 1 }  { W1_out_d1 MemPortDIN2 1 8 } } }
	W1_0_0_load { ap_none {  { W1_0_0_load in_data 0 2 } } }
	W1_0_1_load { ap_none {  { W1_0_1_load in_data 0 2 } } }
	W1_0_2_load { ap_none {  { W1_0_2_load in_data 0 2 } } }
	W1_0_3_load { ap_none {  { W1_0_3_load in_data 0 2 } } }
	W1_1_0_load { ap_none {  { W1_1_0_load in_data 0 2 } } }
	W1_1_1_load { ap_none {  { W1_1_1_load in_data 0 2 } } }
	W1_1_2_load { ap_none {  { W1_1_2_load in_data 0 2 } } }
	W1_1_3_load { ap_none {  { W1_1_3_load in_data 0 2 } } }
	W1_2_0_load { ap_none {  { W1_2_0_load in_data 0 2 } } }
	W1_2_1_load { ap_none {  { W1_2_1_load in_data 0 2 } } }
	W1_2_2_load { ap_none {  { W1_2_2_load in_data 0 2 } } }
	W1_2_3_load { ap_none {  { W1_2_3_load in_data 0 2 } } }
	W1_3_0_load { ap_none {  { W1_3_0_load in_data 0 2 } } }
	W1_3_1_load { ap_none {  { W1_3_1_load in_data 0 2 } } }
	W1_3_2_load { ap_none {  { W1_3_2_load in_data 0 2 } } }
	W1_3_3_load { ap_none {  { W1_3_3_load in_data 0 2 } } }
	W1_4_0_load { ap_none {  { W1_4_0_load in_data 0 2 } } }
	W1_4_1_load { ap_none {  { W1_4_1_load in_data 0 2 } } }
	W1_4_2_load { ap_none {  { W1_4_2_load in_data 0 2 } } }
	W1_4_3_load { ap_none {  { W1_4_3_load in_data 0 2 } } }
	W1_5_0_load { ap_none {  { W1_5_0_load in_data 0 2 } } }
	W1_5_1_load { ap_none {  { W1_5_1_load in_data 0 2 } } }
	W1_5_2_load { ap_none {  { W1_5_2_load in_data 0 2 } } }
	W1_5_3_load { ap_none {  { W1_5_3_load in_data 0 2 } } }
	W1_6_0_load { ap_none {  { W1_6_0_load in_data 0 2 } } }
	W1_6_1_load { ap_none {  { W1_6_1_load in_data 0 2 } } }
	W1_6_2_load { ap_none {  { W1_6_2_load in_data 0 2 } } }
	W1_6_3_load { ap_none {  { W1_6_3_load in_data 0 2 } } }
	W1_7_0_load { ap_none {  { W1_7_0_load in_data 0 2 } } }
	W1_7_1_load { ap_none {  { W1_7_1_load in_data 0 2 } } }
	W1_7_2_load { ap_none {  { W1_7_2_load in_data 0 2 } } }
	W1_7_3_load { ap_none {  { W1_7_3_load in_data 0 2 } } }
}
