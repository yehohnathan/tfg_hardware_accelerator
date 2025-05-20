set moduleName train_step
set isTopModule 1
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
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {train_step}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict W1_out { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict W2_out { MEM_WIDTH 8 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ img_pos_0 int 8 regular {axi_slave 0}  }
	{ img_pos_1 int 8 regular {axi_slave 0}  }
	{ img_pos_2 int 8 regular {axi_slave 0}  }
	{ img_pos_3 int 8 regular {axi_slave 0}  }
	{ img_pos_4 int 8 regular {axi_slave 0}  }
	{ img_pos_5 int 8 regular {axi_slave 0}  }
	{ img_pos_6 int 8 regular {axi_slave 0}  }
	{ img_pos_7 int 8 regular {axi_slave 0}  }
	{ img_neg_0 int 8 regular {axi_slave 0}  }
	{ img_neg_1 int 8 regular {axi_slave 0}  }
	{ img_neg_2 int 8 regular {axi_slave 0}  }
	{ img_neg_3 int 8 regular {axi_slave 0}  }
	{ img_neg_4 int 8 regular {axi_slave 0}  }
	{ img_neg_5 int 8 regular {axi_slave 0}  }
	{ img_neg_6 int 8 regular {axi_slave 0}  }
	{ img_neg_7 int 8 regular {axi_slave 0}  }
	{ last_sample int 32 regular {axi_slave 0}  }
	{ sample_idx int 32 regular {axi_slave 0}  }
	{ leds_port int 4 regular {pointer 1 volatile }  }
	{ W1_out int 8 regular {array 32 { 0 0 } 0 1 }  }
	{ W2_out int 8 regular {array 4 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "img_pos_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "img_pos_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "img_pos_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "img_pos_3", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "img_pos_4", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "img_pos_5", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "img_pos_6", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "img_pos_7", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "img_neg_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "img_neg_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "img_neg_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "img_neg_3", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "img_neg_4", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "img_neg_5", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "img_neg_6", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "img_neg_7", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "last_sample", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "sample_idx", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "leds_port", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W1_out", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W2_out", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ leds_port sc_out sc_lv 4 signal 18 } 
	{ leds_port_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ W1_out_address0 sc_out sc_lv 5 signal 19 } 
	{ W1_out_ce0 sc_out sc_logic 1 signal 19 } 
	{ W1_out_we0 sc_out sc_logic 1 signal 19 } 
	{ W1_out_d0 sc_out sc_lv 8 signal 19 } 
	{ W1_out_address1 sc_out sc_lv 5 signal 19 } 
	{ W1_out_ce1 sc_out sc_logic 1 signal 19 } 
	{ W1_out_we1 sc_out sc_logic 1 signal 19 } 
	{ W1_out_d1 sc_out sc_lv 8 signal 19 } 
	{ W2_out_address0 sc_out sc_lv 2 signal 20 } 
	{ W2_out_ce0 sc_out sc_logic 1 signal 20 } 
	{ W2_out_we0 sc_out sc_logic 1 signal 20 } 
	{ W2_out_d0 sc_out sc_lv 8 signal 20 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"train_step","role":"start","value":"0","valid_bit":"0"},{"name":"train_step","role":"continue","value":"0","valid_bit":"4"},{"name":"train_step","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_pos_0","role":"data","value":"16"},{"name":"img_pos_1","role":"data","value":"24"},{"name":"img_pos_2","role":"data","value":"32"},{"name":"img_pos_3","role":"data","value":"40"},{"name":"img_pos_4","role":"data","value":"48"},{"name":"img_pos_5","role":"data","value":"56"},{"name":"img_pos_6","role":"data","value":"64"},{"name":"img_pos_7","role":"data","value":"72"},{"name":"img_neg_0","role":"data","value":"80"},{"name":"img_neg_1","role":"data","value":"88"},{"name":"img_neg_2","role":"data","value":"96"},{"name":"img_neg_3","role":"data","value":"104"},{"name":"img_neg_4","role":"data","value":"112"},{"name":"img_neg_5","role":"data","value":"120"},{"name":"img_neg_6","role":"data","value":"128"},{"name":"img_neg_7","role":"data","value":"136"},{"name":"last_sample","role":"data","value":"144"},{"name":"sample_idx","role":"data","value":"152"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"train_step","role":"start","value":"0","valid_bit":"0"},{"name":"train_step","role":"done","value":"0","valid_bit":"1"},{"name":"train_step","role":"idle","value":"0","valid_bit":"2"},{"name":"train_step","role":"ready","value":"0","valid_bit":"3"},{"name":"train_step","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "leds_port", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "leds_port", "role": "default" }} , 
 	{ "name": "leds_port_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "leds_port", "role": "ap_vld" }} , 
 	{ "name": "W1_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "W1_out", "role": "address0" }} , 
 	{ "name": "W1_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "ce0" }} , 
 	{ "name": "W1_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "we0" }} , 
 	{ "name": "W1_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W1_out", "role": "d0" }} , 
 	{ "name": "W1_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "W1_out", "role": "address1" }} , 
 	{ "name": "W1_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "ce1" }} , 
 	{ "name": "W1_out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1_out", "role": "we1" }} , 
 	{ "name": "W1_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W1_out", "role": "d1" }} , 
 	{ "name": "W2_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2_out", "role": "address0" }} , 
 	{ "name": "W2_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2_out", "role": "ce0" }} , 
 	{ "name": "W2_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2_out", "role": "we0" }} , 
 	{ "name": "W2_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W2_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "34", "67", "100", "110", "112", "113"],
		"CDFG" : "train_step",
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
			{"Name" : "img_pos_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_pos_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_neg_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_sample", "Type" : "None", "Direction" : "I"},
			{"Name" : "sample_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "leds_port", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W1_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585", "Port" : "W1_out", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "W2_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_141_4_fu_623", "Port" : "W2_out", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "W1_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_0_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_0_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_0_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_1_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_1_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_1_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_2_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_2_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_2_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_3_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_3_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_3_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_3_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_4_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_4_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_4_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_4_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_5_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_5_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_5_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_5_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_6_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_6_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_6_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_6_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_7_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_7_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_7_0", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_7_0", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_0_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_0_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_0_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_1_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_1_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_1_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_2_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_2_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_2_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_3_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_3_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_3_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_3_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_4_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_4_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_4_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_4_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_5_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_5_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_5_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_5_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_6_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_6_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_6_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_6_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_7_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_7_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_7_1", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_7_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_0_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_0_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_0_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_1_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_1_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_1_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_2_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_2_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_2_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_3_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_3_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_3_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_3_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_4_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_4_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_4_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_4_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_5_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_5_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_5_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_5_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_6_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_6_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_6_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_6_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_7_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_7_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_7_2", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_7_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_0_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_0_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_0_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_0_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_1_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_1_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_1_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_2_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_2_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_2_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_2_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_3_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_3_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_3_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_3_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_4_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_4_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_4_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_4_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_5_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_5_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_5_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_5_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_6_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_6_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_6_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_6_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "W1_7_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_325", "Port" : "W1_7_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "34", "SubInstance" : "grp_forwardHidden_fu_409", "Port" : "W1_7_3", "Inst_start_state" : "1", "Inst_end_state" : "6"},
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "W1_7_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5", "Inst_start_state" : "7", "Inst_end_state" : "10"}]},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_updateHidden_fu_493", "Port" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4", "Inst_start_state" : "7", "Inst_end_state" : "10"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mul_2s_8s_10_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U28", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U29", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U30", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U31", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_325.mac_muladd_8s_2s_10s_11_4_1_U32", "Parent" : "1"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409", "Parent" : "0", "Child" : ["35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U1", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U2", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U3", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U4", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U5", "Parent" : "34"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U6", "Parent" : "34"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U7", "Parent" : "34"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U8", "Parent" : "34"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U9", "Parent" : "34"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U10", "Parent" : "34"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U11", "Parent" : "34"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U12", "Parent" : "34"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U13", "Parent" : "34"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U14", "Parent" : "34"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U15", "Parent" : "34"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mul_2s_8s_10_1_1_U16", "Parent" : "34"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U17", "Parent" : "34"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U18", "Parent" : "34"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U19", "Parent" : "34"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U20", "Parent" : "34"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U21", "Parent" : "34"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U22", "Parent" : "34"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U23", "Parent" : "34"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U24", "Parent" : "34"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U25", "Parent" : "34"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U26", "Parent" : "34"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U27", "Parent" : "34"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U28", "Parent" : "34"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U29", "Parent" : "34"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U30", "Parent" : "34"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U31", "Parent" : "34"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_409.mac_muladd_8s_2s_10s_11_4_1_U32", "Parent" : "34"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493", "Parent" : "0", "Child" : ["68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"],
		"CDFG" : "updateHidden",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
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
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_0_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_2_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_3_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_4_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_5_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_6_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_7_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_0_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_2_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_3_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_4_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_5_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_6_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_7_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_0_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_2_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_3_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_4_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_5_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_6_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_7_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_0_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_2_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_3_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_4_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_5_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_6_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "W1_7_3", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U75", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U76", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U77", "Parent" : "67"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U78", "Parent" : "67"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U79", "Parent" : "67"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U80", "Parent" : "67"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U81", "Parent" : "67"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U82", "Parent" : "67"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U83", "Parent" : "67"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U84", "Parent" : "67"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U85", "Parent" : "67"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U86", "Parent" : "67"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U87", "Parent" : "67"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U88", "Parent" : "67"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U89", "Parent" : "67"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U90", "Parent" : "67"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U91", "Parent" : "67"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U92", "Parent" : "67"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U93", "Parent" : "67"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U94", "Parent" : "67"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U95", "Parent" : "67"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U96", "Parent" : "67"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U97", "Parent" : "67"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U98", "Parent" : "67"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U99", "Parent" : "67"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U100", "Parent" : "67"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U101", "Parent" : "67"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U102", "Parent" : "67"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U103", "Parent" : "67"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U104", "Parent" : "67"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U105", "Parent" : "67"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateHidden_fu_493.mac_muladd_8s_8s_2s_12_4_1_U106", "Parent" : "67"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585", "Parent" : "0", "Child" : ["101", "102", "103", "104", "105", "106", "107", "108", "109"],
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
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U156", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U157", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U158", "Parent" : "100"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U159", "Parent" : "100"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U160", "Parent" : "100"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U161", "Parent" : "100"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U162", "Parent" : "100"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.sparsemux_9_2_2_1_1_U163", "Parent" : "100"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_141_4_fu_623", "Parent" : "0", "Child" : ["111"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_141_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "W2_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_141_4_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_42_2_1_U199", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step {
		img_pos_0 {Type I LastRead 0 FirstWrite -1}
		img_pos_1 {Type I LastRead 0 FirstWrite -1}
		img_pos_2 {Type I LastRead 0 FirstWrite -1}
		img_pos_3 {Type I LastRead 0 FirstWrite -1}
		img_pos_4 {Type I LastRead 0 FirstWrite -1}
		img_pos_5 {Type I LastRead 0 FirstWrite -1}
		img_pos_6 {Type I LastRead 0 FirstWrite -1}
		img_pos_7 {Type I LastRead 0 FirstWrite -1}
		img_neg_0 {Type I LastRead 0 FirstWrite -1}
		img_neg_1 {Type I LastRead 0 FirstWrite -1}
		img_neg_2 {Type I LastRead 0 FirstWrite -1}
		img_neg_3 {Type I LastRead 0 FirstWrite -1}
		img_neg_4 {Type I LastRead 0 FirstWrite -1}
		img_neg_5 {Type I LastRead 0 FirstWrite -1}
		img_neg_6 {Type I LastRead 0 FirstWrite -1}
		img_neg_7 {Type I LastRead 0 FirstWrite -1}
		last_sample {Type I LastRead 0 FirstWrite -1}
		sample_idx {Type I LastRead 0 FirstWrite -1}
		leds_port {Type O LastRead -1 FirstWrite 3}
		W1_out {Type O LastRead -1 FirstWrite 0}
		W2_out {Type O LastRead -1 FirstWrite 0}
		W1_0_0 {Type IO LastRead -1 FirstWrite -1}
		W1_1_0 {Type IO LastRead -1 FirstWrite -1}
		W1_2_0 {Type IO LastRead -1 FirstWrite -1}
		W1_3_0 {Type IO LastRead -1 FirstWrite -1}
		W1_4_0 {Type IO LastRead -1 FirstWrite -1}
		W1_5_0 {Type IO LastRead -1 FirstWrite -1}
		W1_6_0 {Type IO LastRead -1 FirstWrite -1}
		W1_7_0 {Type IO LastRead -1 FirstWrite -1}
		W1_0_1 {Type IO LastRead -1 FirstWrite -1}
		W1_1_1 {Type IO LastRead -1 FirstWrite -1}
		W1_2_1 {Type IO LastRead -1 FirstWrite -1}
		W1_3_1 {Type IO LastRead -1 FirstWrite -1}
		W1_4_1 {Type IO LastRead -1 FirstWrite -1}
		W1_5_1 {Type IO LastRead -1 FirstWrite -1}
		W1_6_1 {Type IO LastRead -1 FirstWrite -1}
		W1_7_1 {Type IO LastRead -1 FirstWrite -1}
		W1_0_2 {Type IO LastRead -1 FirstWrite -1}
		W1_1_2 {Type IO LastRead -1 FirstWrite -1}
		W1_2_2 {Type IO LastRead -1 FirstWrite -1}
		W1_3_2 {Type IO LastRead -1 FirstWrite -1}
		W1_4_2 {Type IO LastRead -1 FirstWrite -1}
		W1_5_2 {Type IO LastRead -1 FirstWrite -1}
		W1_6_2 {Type IO LastRead -1 FirstWrite -1}
		W1_7_2 {Type IO LastRead -1 FirstWrite -1}
		W1_0_3 {Type IO LastRead -1 FirstWrite -1}
		W1_1_3 {Type IO LastRead -1 FirstWrite -1}
		W1_2_3 {Type IO LastRead -1 FirstWrite -1}
		W1_3_3 {Type IO LastRead -1 FirstWrite -1}
		W1_4_3 {Type IO LastRead -1 FirstWrite -1}
		W1_5_3 {Type IO LastRead -1 FirstWrite -1}
		W1_6_3 {Type IO LastRead -1 FirstWrite -1}
		W1_7_3 {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 {Type IO LastRead -1 FirstWrite -1}
		train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 {Type IO LastRead -1 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 {Type IO LastRead -1 FirstWrite -1}}
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
		W1_7_3 {Type I LastRead 0 FirstWrite -1}}
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
		W1_7_3 {Type I LastRead 0 FirstWrite -1}}
	updateHidden {
		input_0_val {Type I LastRead 0 FirstWrite -1}
		input_1_val {Type I LastRead 0 FirstWrite -1}
		input_2_val {Type I LastRead 0 FirstWrite -1}
		input_3_val {Type I LastRead 0 FirstWrite -1}
		input_4_val {Type I LastRead 0 FirstWrite -1}
		input_5_val {Type I LastRead 0 FirstWrite -1}
		input_6_val {Type I LastRead 0 FirstWrite -1}
		input_7_val {Type I LastRead 0 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 {Type I LastRead 0 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 {Type I LastRead 0 FirstWrite -1}
		W1_0_0 {Type IO LastRead 2 FirstWrite 3}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 {Type I LastRead 0 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 {Type I LastRead 0 FirstWrite -1}
		train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed {Type I LastRead 0 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 {Type I LastRead 0 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 {Type I LastRead 0 FirstWrite -1}
		train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 {Type I LastRead 0 FirstWrite -1}
		W1_1_0 {Type IO LastRead 2 FirstWrite 3}
		W1_2_0 {Type IO LastRead 2 FirstWrite 3}
		W1_3_0 {Type IO LastRead 2 FirstWrite 3}
		W1_4_0 {Type IO LastRead 2 FirstWrite 3}
		W1_5_0 {Type IO LastRead 2 FirstWrite 3}
		W1_6_0 {Type IO LastRead 2 FirstWrite 3}
		W1_7_0 {Type IO LastRead 2 FirstWrite 3}
		W1_0_1 {Type IO LastRead 2 FirstWrite 3}
		W1_1_1 {Type IO LastRead 2 FirstWrite 3}
		W1_2_1 {Type IO LastRead 2 FirstWrite 3}
		W1_3_1 {Type IO LastRead 2 FirstWrite 3}
		W1_4_1 {Type IO LastRead 2 FirstWrite 3}
		W1_5_1 {Type IO LastRead 2 FirstWrite 3}
		W1_6_1 {Type IO LastRead 2 FirstWrite 3}
		W1_7_1 {Type IO LastRead 2 FirstWrite 3}
		W1_0_2 {Type IO LastRead 2 FirstWrite 3}
		W1_1_2 {Type IO LastRead 2 FirstWrite 3}
		W1_2_2 {Type IO LastRead 2 FirstWrite 3}
		W1_3_2 {Type IO LastRead 2 FirstWrite 3}
		W1_4_2 {Type IO LastRead 2 FirstWrite 3}
		W1_5_2 {Type IO LastRead 2 FirstWrite 3}
		W1_6_2 {Type IO LastRead 2 FirstWrite 3}
		W1_7_2 {Type IO LastRead 2 FirstWrite 3}
		W1_0_3 {Type IO LastRead 2 FirstWrite 3}
		W1_1_3 {Type IO LastRead 2 FirstWrite 3}
		W1_2_3 {Type IO LastRead 2 FirstWrite 3}
		W1_3_3 {Type IO LastRead 2 FirstWrite 3}
		W1_4_3 {Type IO LastRead 2 FirstWrite 3}
		W1_5_3 {Type IO LastRead 2 FirstWrite 3}
		W1_6_3 {Type IO LastRead 2 FirstWrite 3}
		W1_7_3 {Type IO LastRead 2 FirstWrite 3}}
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
		W1_7_3_load {Type I LastRead 0 FirstWrite -1}}
	train_step_Pipeline_VITIS_LOOP_141_4 {
		W2_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "30"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	leds_port { ap_vld {  { leds_port out_data 1 4 }  { leds_port_ap_vld out_vld 1 1 } } }
	W1_out { ap_memory {  { W1_out_address0 mem_address 1 5 }  { W1_out_ce0 mem_ce 1 1 }  { W1_out_we0 mem_we 1 1 }  { W1_out_d0 mem_din 1 8 }  { W1_out_address1 MemPortADDR2 1 5 }  { W1_out_ce1 MemPortCE2 1 1 }  { W1_out_we1 MemPortWE2 1 1 }  { W1_out_d1 MemPortDIN2 1 8 } } }
	W2_out { ap_memory {  { W2_out_address0 mem_address 1 2 }  { W2_out_ce0 mem_ce 1 1 }  { W2_out_we0 mem_we 1 1 }  { W2_out_d0 mem_din 1 8 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
