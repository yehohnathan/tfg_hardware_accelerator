set moduleName forwardHidden
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
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
set C_modelName {forwardHidden}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_0_val int 8 regular  }
	{ input_1_val int 8 regular  }
	{ input_2_val int 8 regular  }
	{ input_3_val int 8 regular  }
	{ input_4_val int 8 regular  }
	{ input_5_val int 8 regular  }
	{ input_6_val int 8 regular  }
	{ input_7_val int 8 regular  }
	{ W1_0_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_1_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_2_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_3_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_4_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_5_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_6_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_7_0 int 2 regular {pointer 0} {global 0}  }
	{ W1_0_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_1_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_2_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_3_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_4_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_5_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_6_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_7_1 int 2 regular {pointer 0} {global 0}  }
	{ W1_0_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_1_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_2_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_3_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_4_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_5_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_6_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_7_2 int 2 regular {pointer 0} {global 0}  }
	{ W1_0_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_1_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_2_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_3_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_4_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_5_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_6_3 int 2 regular {pointer 0} {global 0}  }
	{ W1_7_3 int 2 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "W1_0_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_1_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_2_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_3_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_4_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_5_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_6_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_7_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_0_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_1_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_2_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_3_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_4_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_5_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_6_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_7_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_0_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_1_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_2_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_3_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_4_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_5_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_6_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_7_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_0_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_1_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_2_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_3_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_4_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_5_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_6_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_7_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_0_val sc_in sc_lv 8 signal 0 } 
	{ input_1_val sc_in sc_lv 8 signal 1 } 
	{ input_2_val sc_in sc_lv 8 signal 2 } 
	{ input_3_val sc_in sc_lv 8 signal 3 } 
	{ input_4_val sc_in sc_lv 8 signal 4 } 
	{ input_5_val sc_in sc_lv 8 signal 5 } 
	{ input_6_val sc_in sc_lv 8 signal 6 } 
	{ input_7_val sc_in sc_lv 8 signal 7 } 
	{ W1_0_0 sc_in sc_lv 2 signal 8 } 
	{ W1_1_0 sc_in sc_lv 2 signal 9 } 
	{ W1_2_0 sc_in sc_lv 2 signal 10 } 
	{ W1_3_0 sc_in sc_lv 2 signal 11 } 
	{ W1_4_0 sc_in sc_lv 2 signal 12 } 
	{ W1_5_0 sc_in sc_lv 2 signal 13 } 
	{ W1_6_0 sc_in sc_lv 2 signal 14 } 
	{ W1_7_0 sc_in sc_lv 2 signal 15 } 
	{ W1_0_1 sc_in sc_lv 2 signal 16 } 
	{ W1_1_1 sc_in sc_lv 2 signal 17 } 
	{ W1_2_1 sc_in sc_lv 2 signal 18 } 
	{ W1_3_1 sc_in sc_lv 2 signal 19 } 
	{ W1_4_1 sc_in sc_lv 2 signal 20 } 
	{ W1_5_1 sc_in sc_lv 2 signal 21 } 
	{ W1_6_1 sc_in sc_lv 2 signal 22 } 
	{ W1_7_1 sc_in sc_lv 2 signal 23 } 
	{ W1_0_2 sc_in sc_lv 2 signal 24 } 
	{ W1_1_2 sc_in sc_lv 2 signal 25 } 
	{ W1_2_2 sc_in sc_lv 2 signal 26 } 
	{ W1_3_2 sc_in sc_lv 2 signal 27 } 
	{ W1_4_2 sc_in sc_lv 2 signal 28 } 
	{ W1_5_2 sc_in sc_lv 2 signal 29 } 
	{ W1_6_2 sc_in sc_lv 2 signal 30 } 
	{ W1_7_2 sc_in sc_lv 2 signal 31 } 
	{ W1_0_3 sc_in sc_lv 2 signal 32 } 
	{ W1_1_3 sc_in sc_lv 2 signal 33 } 
	{ W1_2_3 sc_in sc_lv 2 signal 34 } 
	{ W1_3_3 sc_in sc_lv 2 signal 35 } 
	{ W1_4_3 sc_in sc_lv 2 signal 36 } 
	{ W1_5_3 sc_in sc_lv 2 signal 37 } 
	{ W1_6_3 sc_in sc_lv 2 signal 38 } 
	{ W1_7_3 sc_in sc_lv 2 signal 39 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0_val", "role": "default" }} , 
 	{ "name": "input_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1_val", "role": "default" }} , 
 	{ "name": "input_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2_val", "role": "default" }} , 
 	{ "name": "input_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3_val", "role": "default" }} , 
 	{ "name": "input_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4_val", "role": "default" }} , 
 	{ "name": "input_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5_val", "role": "default" }} , 
 	{ "name": "input_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6_val", "role": "default" }} , 
 	{ "name": "input_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7_val", "role": "default" }} , 
 	{ "name": "W1_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_0", "role": "default" }} , 
 	{ "name": "W1_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_0", "role": "default" }} , 
 	{ "name": "W1_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_0", "role": "default" }} , 
 	{ "name": "W1_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_0", "role": "default" }} , 
 	{ "name": "W1_4_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_0", "role": "default" }} , 
 	{ "name": "W1_5_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_0", "role": "default" }} , 
 	{ "name": "W1_6_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_0", "role": "default" }} , 
 	{ "name": "W1_7_0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_0", "role": "default" }} , 
 	{ "name": "W1_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_1", "role": "default" }} , 
 	{ "name": "W1_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_1", "role": "default" }} , 
 	{ "name": "W1_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_1", "role": "default" }} , 
 	{ "name": "W1_3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_1", "role": "default" }} , 
 	{ "name": "W1_4_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_1", "role": "default" }} , 
 	{ "name": "W1_5_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_1", "role": "default" }} , 
 	{ "name": "W1_6_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_1", "role": "default" }} , 
 	{ "name": "W1_7_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_1", "role": "default" }} , 
 	{ "name": "W1_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_2", "role": "default" }} , 
 	{ "name": "W1_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_2", "role": "default" }} , 
 	{ "name": "W1_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_2", "role": "default" }} , 
 	{ "name": "W1_3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_2", "role": "default" }} , 
 	{ "name": "W1_4_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_2", "role": "default" }} , 
 	{ "name": "W1_5_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_2", "role": "default" }} , 
 	{ "name": "W1_6_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_2", "role": "default" }} , 
 	{ "name": "W1_7_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_2", "role": "default" }} , 
 	{ "name": "W1_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_3", "role": "default" }} , 
 	{ "name": "W1_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_3", "role": "default" }} , 
 	{ "name": "W1_2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_3", "role": "default" }} , 
 	{ "name": "W1_3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_3", "role": "default" }} , 
 	{ "name": "W1_4_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_3", "role": "default" }} , 
 	{ "name": "W1_5_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_3", "role": "default" }} , 
 	{ "name": "W1_6_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_3", "role": "default" }} , 
 	{ "name": "W1_7_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_3", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "forwardHidden",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_4_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_5_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_6_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_7_3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_8s_10_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	forwardHidden {
		input_0_val {Type I LastRead 0 FirstWrite -1}
		input_1_val {Type I LastRead 0 FirstWrite -1}
		input_2_val {Type I LastRead 0 FirstWrite -1}
		input_3_val {Type I LastRead 0 FirstWrite -1}
		input_4_val {Type I LastRead 0 FirstWrite -1}
		input_5_val {Type I LastRead 0 FirstWrite -1}
		input_6_val {Type I LastRead 0 FirstWrite -1}
		input_7_val {Type I LastRead 0 FirstWrite -1}
		W1_0_0 {Type I LastRead 0 FirstWrite -1}
		W1_1_0 {Type I LastRead 2 FirstWrite -1}
		W1_2_0 {Type I LastRead 2 FirstWrite -1}
		W1_3_0 {Type I LastRead 0 FirstWrite -1}
		W1_4_0 {Type I LastRead 2 FirstWrite -1}
		W1_5_0 {Type I LastRead 0 FirstWrite -1}
		W1_6_0 {Type I LastRead 2 FirstWrite -1}
		W1_7_0 {Type I LastRead 0 FirstWrite -1}
		W1_0_1 {Type I LastRead 0 FirstWrite -1}
		W1_1_1 {Type I LastRead 2 FirstWrite -1}
		W1_2_1 {Type I LastRead 2 FirstWrite -1}
		W1_3_1 {Type I LastRead 0 FirstWrite -1}
		W1_4_1 {Type I LastRead 2 FirstWrite -1}
		W1_5_1 {Type I LastRead 0 FirstWrite -1}
		W1_6_1 {Type I LastRead 2 FirstWrite -1}
		W1_7_1 {Type I LastRead 0 FirstWrite -1}
		W1_0_2 {Type I LastRead 0 FirstWrite -1}
		W1_1_2 {Type I LastRead 2 FirstWrite -1}
		W1_2_2 {Type I LastRead 2 FirstWrite -1}
		W1_3_2 {Type I LastRead 0 FirstWrite -1}
		W1_4_2 {Type I LastRead 2 FirstWrite -1}
		W1_5_2 {Type I LastRead 0 FirstWrite -1}
		W1_6_2 {Type I LastRead 2 FirstWrite -1}
		W1_7_2 {Type I LastRead 0 FirstWrite -1}
		W1_0_3 {Type I LastRead 0 FirstWrite -1}
		W1_1_3 {Type I LastRead 2 FirstWrite -1}
		W1_2_3 {Type I LastRead 2 FirstWrite -1}
		W1_3_3 {Type I LastRead 0 FirstWrite -1}
		W1_4_3 {Type I LastRead 2 FirstWrite -1}
		W1_5_3 {Type I LastRead 0 FirstWrite -1}
		W1_6_3 {Type I LastRead 2 FirstWrite -1}
		W1_7_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0_val { ap_none {  { input_0_val in_data 0 8 } } }
	input_1_val { ap_none {  { input_1_val in_data 0 8 } } }
	input_2_val { ap_none {  { input_2_val in_data 0 8 } } }
	input_3_val { ap_none {  { input_3_val in_data 0 8 } } }
	input_4_val { ap_none {  { input_4_val in_data 0 8 } } }
	input_5_val { ap_none {  { input_5_val in_data 0 8 } } }
	input_6_val { ap_none {  { input_6_val in_data 0 8 } } }
	input_7_val { ap_none {  { input_7_val in_data 0 8 } } }
	W1_0_0 { ap_none {  { W1_0_0 in_data 0 2 } } }
	W1_1_0 { ap_none {  { W1_1_0 in_data 0 2 } } }
	W1_2_0 { ap_none {  { W1_2_0 in_data 0 2 } } }
	W1_3_0 { ap_none {  { W1_3_0 in_data 0 2 } } }
	W1_4_0 { ap_none {  { W1_4_0 in_data 0 2 } } }
	W1_5_0 { ap_none {  { W1_5_0 in_data 0 2 } } }
	W1_6_0 { ap_none {  { W1_6_0 in_data 0 2 } } }
	W1_7_0 { ap_none {  { W1_7_0 in_data 0 2 } } }
	W1_0_1 { ap_none {  { W1_0_1 in_data 0 2 } } }
	W1_1_1 { ap_none {  { W1_1_1 in_data 0 2 } } }
	W1_2_1 { ap_none {  { W1_2_1 in_data 0 2 } } }
	W1_3_1 { ap_none {  { W1_3_1 in_data 0 2 } } }
	W1_4_1 { ap_none {  { W1_4_1 in_data 0 2 } } }
	W1_5_1 { ap_none {  { W1_5_1 in_data 0 2 } } }
	W1_6_1 { ap_none {  { W1_6_1 in_data 0 2 } } }
	W1_7_1 { ap_none {  { W1_7_1 in_data 0 2 } } }
	W1_0_2 { ap_none {  { W1_0_2 in_data 0 2 } } }
	W1_1_2 { ap_none {  { W1_1_2 in_data 0 2 } } }
	W1_2_2 { ap_none {  { W1_2_2 in_data 0 2 } } }
	W1_3_2 { ap_none {  { W1_3_2 in_data 0 2 } } }
	W1_4_2 { ap_none {  { W1_4_2 in_data 0 2 } } }
	W1_5_2 { ap_none {  { W1_5_2 in_data 0 2 } } }
	W1_6_2 { ap_none {  { W1_6_2 in_data 0 2 } } }
	W1_7_2 { ap_none {  { W1_7_2 in_data 0 2 } } }
	W1_0_3 { ap_none {  { W1_0_3 in_data 0 2 } } }
	W1_1_3 { ap_none {  { W1_1_3 in_data 0 2 } } }
	W1_2_3 { ap_none {  { W1_2_3 in_data 0 2 } } }
	W1_3_3 { ap_none {  { W1_3_3 in_data 0 2 } } }
	W1_4_3 { ap_none {  { W1_4_3 in_data 0 2 } } }
	W1_5_3 { ap_none {  { W1_5_3 in_data 0 2 } } }
	W1_6_3 { ap_none {  { W1_6_3 in_data 0 2 } } }
	W1_7_3 { ap_none {  { W1_7_3 in_data 0 2 } } }
}
