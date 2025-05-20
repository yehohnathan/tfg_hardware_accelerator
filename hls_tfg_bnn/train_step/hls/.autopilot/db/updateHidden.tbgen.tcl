set moduleName updateHidden
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
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
set C_modelName {updateHidden}
set C_modelType { void 0 }
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
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 int 8 regular {pointer 0} {global 0}  }
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 int 8 regular {pointer 0} {global 0}  }
	{ W1_0_0 int 2 regular {pointer 2} {global 2}  }
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 int 8 regular {pointer 0} {global 0}  }
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 int 8 regular {pointer 0} {global 0}  }
	{ train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed int 8 regular {pointer 0} {global 0}  }
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 int 8 regular {pointer 0} {global 0}  }
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 int 8 regular {pointer 0} {global 0}  }
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 int 8 regular {pointer 0} {global 0}  }
	{ W1_1_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_2_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_3_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_4_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_5_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_6_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_7_0 int 2 regular {pointer 2} {global 2}  }
	{ W1_0_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_1_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_2_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_3_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_4_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_5_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_6_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_7_1 int 2 regular {pointer 2} {global 2}  }
	{ W1_0_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_1_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_2_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_3_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_4_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_5_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_6_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_7_2 int 2 regular {pointer 2} {global 2}  }
	{ W1_0_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_1_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_2_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_3_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_4_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_5_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_6_3 int 2 regular {pointer 2} {global 2}  }
	{ W1_7_3 int 2 regular {pointer 2} {global 2}  }
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
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_0_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W1_1_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_2_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_3_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_4_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_5_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_6_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_7_0", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_0_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_1_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_2_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_3_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_4_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_5_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_6_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_7_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_0_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_1_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_2_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_3_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_4_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_5_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_6_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_7_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_0_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_1_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_2_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_3_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_4_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_5_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_6_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "W1_7_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_val sc_in sc_lv 8 signal 0 } 
	{ input_1_val sc_in sc_lv 8 signal 1 } 
	{ input_2_val sc_in sc_lv 8 signal 2 } 
	{ input_3_val sc_in sc_lv 8 signal 3 } 
	{ input_4_val sc_in sc_lv 8 signal 4 } 
	{ input_5_val sc_in sc_lv 8 signal 5 } 
	{ input_6_val sc_in sc_lv 8 signal 6 } 
	{ input_7_val sc_in sc_lv 8 signal 7 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 sc_in sc_lv 8 signal 8 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 sc_in sc_lv 8 signal 9 } 
	{ W1_0_0_i sc_in sc_lv 2 signal 10 } 
	{ W1_0_0_o sc_out sc_lv 2 signal 10 } 
	{ W1_0_0_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 sc_in sc_lv 8 signal 11 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 sc_in sc_lv 8 signal 12 } 
	{ train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed sc_in sc_lv 8 signal 13 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 sc_in sc_lv 8 signal 14 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 sc_in sc_lv 8 signal 15 } 
	{ train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 sc_in sc_lv 8 signal 16 } 
	{ W1_1_0_i sc_in sc_lv 2 signal 17 } 
	{ W1_1_0_o sc_out sc_lv 2 signal 17 } 
	{ W1_1_0_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ W1_2_0_i sc_in sc_lv 2 signal 18 } 
	{ W1_2_0_o sc_out sc_lv 2 signal 18 } 
	{ W1_2_0_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ W1_3_0_i sc_in sc_lv 2 signal 19 } 
	{ W1_3_0_o sc_out sc_lv 2 signal 19 } 
	{ W1_3_0_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ W1_4_0_i sc_in sc_lv 2 signal 20 } 
	{ W1_4_0_o sc_out sc_lv 2 signal 20 } 
	{ W1_4_0_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ W1_5_0_i sc_in sc_lv 2 signal 21 } 
	{ W1_5_0_o sc_out sc_lv 2 signal 21 } 
	{ W1_5_0_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ W1_6_0_i sc_in sc_lv 2 signal 22 } 
	{ W1_6_0_o sc_out sc_lv 2 signal 22 } 
	{ W1_6_0_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ W1_7_0_i sc_in sc_lv 2 signal 23 } 
	{ W1_7_0_o sc_out sc_lv 2 signal 23 } 
	{ W1_7_0_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ W1_0_1_i sc_in sc_lv 2 signal 24 } 
	{ W1_0_1_o sc_out sc_lv 2 signal 24 } 
	{ W1_0_1_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ W1_1_1_i sc_in sc_lv 2 signal 25 } 
	{ W1_1_1_o sc_out sc_lv 2 signal 25 } 
	{ W1_1_1_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ W1_2_1_i sc_in sc_lv 2 signal 26 } 
	{ W1_2_1_o sc_out sc_lv 2 signal 26 } 
	{ W1_2_1_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ W1_3_1_i sc_in sc_lv 2 signal 27 } 
	{ W1_3_1_o sc_out sc_lv 2 signal 27 } 
	{ W1_3_1_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ W1_4_1_i sc_in sc_lv 2 signal 28 } 
	{ W1_4_1_o sc_out sc_lv 2 signal 28 } 
	{ W1_4_1_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ W1_5_1_i sc_in sc_lv 2 signal 29 } 
	{ W1_5_1_o sc_out sc_lv 2 signal 29 } 
	{ W1_5_1_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ W1_6_1_i sc_in sc_lv 2 signal 30 } 
	{ W1_6_1_o sc_out sc_lv 2 signal 30 } 
	{ W1_6_1_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ W1_7_1_i sc_in sc_lv 2 signal 31 } 
	{ W1_7_1_o sc_out sc_lv 2 signal 31 } 
	{ W1_7_1_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ W1_0_2_i sc_in sc_lv 2 signal 32 } 
	{ W1_0_2_o sc_out sc_lv 2 signal 32 } 
	{ W1_0_2_o_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ W1_1_2_i sc_in sc_lv 2 signal 33 } 
	{ W1_1_2_o sc_out sc_lv 2 signal 33 } 
	{ W1_1_2_o_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ W1_2_2_i sc_in sc_lv 2 signal 34 } 
	{ W1_2_2_o sc_out sc_lv 2 signal 34 } 
	{ W1_2_2_o_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ W1_3_2_i sc_in sc_lv 2 signal 35 } 
	{ W1_3_2_o sc_out sc_lv 2 signal 35 } 
	{ W1_3_2_o_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ W1_4_2_i sc_in sc_lv 2 signal 36 } 
	{ W1_4_2_o sc_out sc_lv 2 signal 36 } 
	{ W1_4_2_o_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ W1_5_2_i sc_in sc_lv 2 signal 37 } 
	{ W1_5_2_o sc_out sc_lv 2 signal 37 } 
	{ W1_5_2_o_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ W1_6_2_i sc_in sc_lv 2 signal 38 } 
	{ W1_6_2_o sc_out sc_lv 2 signal 38 } 
	{ W1_6_2_o_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ W1_7_2_i sc_in sc_lv 2 signal 39 } 
	{ W1_7_2_o sc_out sc_lv 2 signal 39 } 
	{ W1_7_2_o_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ W1_0_3_i sc_in sc_lv 2 signal 40 } 
	{ W1_0_3_o sc_out sc_lv 2 signal 40 } 
	{ W1_0_3_o_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ W1_1_3_i sc_in sc_lv 2 signal 41 } 
	{ W1_1_3_o sc_out sc_lv 2 signal 41 } 
	{ W1_1_3_o_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ W1_2_3_i sc_in sc_lv 2 signal 42 } 
	{ W1_2_3_o sc_out sc_lv 2 signal 42 } 
	{ W1_2_3_o_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ W1_3_3_i sc_in sc_lv 2 signal 43 } 
	{ W1_3_3_o sc_out sc_lv 2 signal 43 } 
	{ W1_3_3_o_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ W1_4_3_i sc_in sc_lv 2 signal 44 } 
	{ W1_4_3_o sc_out sc_lv 2 signal 44 } 
	{ W1_4_3_o_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ W1_5_3_i sc_in sc_lv 2 signal 45 } 
	{ W1_5_3_o sc_out sc_lv 2 signal 45 } 
	{ W1_5_3_o_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ W1_6_3_i sc_in sc_lv 2 signal 46 } 
	{ W1_6_3_o sc_out sc_lv 2 signal 46 } 
	{ W1_6_3_o_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ W1_7_3_i sc_in sc_lv 2 signal 47 } 
	{ W1_7_3_o sc_out sc_lv 2 signal 47 } 
	{ W1_7_3_o_ap_vld sc_out sc_logic 1 outvld 47 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0_val", "role": "default" }} , 
 	{ "name": "input_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1_val", "role": "default" }} , 
 	{ "name": "input_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2_val", "role": "default" }} , 
 	{ "name": "input_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3_val", "role": "default" }} , 
 	{ "name": "input_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4_val", "role": "default" }} , 
 	{ "name": "input_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5_val", "role": "default" }} , 
 	{ "name": "input_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6_val", "role": "default" }} , 
 	{ "name": "input_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7_val", "role": "default" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3", "role": "default" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7", "role": "default" }} , 
 	{ "name": "W1_0_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_0", "role": "i" }} , 
 	{ "name": "W1_0_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_0", "role": "o" }} , 
 	{ "name": "W1_0_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_0_0", "role": "o_ap_vld" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2", "role": "default" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1", "role": "default" }} , 
 	{ "name": "train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed", "role": "default" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6", "role": "default" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5", "role": "default" }} , 
 	{ "name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4", "role": "default" }} , 
 	{ "name": "W1_1_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_0", "role": "i" }} , 
 	{ "name": "W1_1_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_0", "role": "o" }} , 
 	{ "name": "W1_1_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_1_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_2_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_0", "role": "i" }} , 
 	{ "name": "W1_2_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_0", "role": "o" }} , 
 	{ "name": "W1_2_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_2_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_3_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_0", "role": "i" }} , 
 	{ "name": "W1_3_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_0", "role": "o" }} , 
 	{ "name": "W1_3_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_3_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_4_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_0", "role": "i" }} , 
 	{ "name": "W1_4_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_0", "role": "o" }} , 
 	{ "name": "W1_4_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_4_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_5_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_0", "role": "i" }} , 
 	{ "name": "W1_5_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_0", "role": "o" }} , 
 	{ "name": "W1_5_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_5_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_6_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_0", "role": "i" }} , 
 	{ "name": "W1_6_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_0", "role": "o" }} , 
 	{ "name": "W1_6_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_6_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_7_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_0", "role": "i" }} , 
 	{ "name": "W1_7_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_0", "role": "o" }} , 
 	{ "name": "W1_7_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_7_0", "role": "o_ap_vld" }} , 
 	{ "name": "W1_0_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_1", "role": "i" }} , 
 	{ "name": "W1_0_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_1", "role": "o" }} , 
 	{ "name": "W1_0_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_0_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_1_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_1", "role": "i" }} , 
 	{ "name": "W1_1_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_1", "role": "o" }} , 
 	{ "name": "W1_1_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_1_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_2_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_1", "role": "i" }} , 
 	{ "name": "W1_2_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_1", "role": "o" }} , 
 	{ "name": "W1_2_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_2_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_3_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_1", "role": "i" }} , 
 	{ "name": "W1_3_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_1", "role": "o" }} , 
 	{ "name": "W1_3_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_3_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_4_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_1", "role": "i" }} , 
 	{ "name": "W1_4_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_1", "role": "o" }} , 
 	{ "name": "W1_4_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_4_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_5_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_1", "role": "i" }} , 
 	{ "name": "W1_5_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_1", "role": "o" }} , 
 	{ "name": "W1_5_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_5_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_6_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_1", "role": "i" }} , 
 	{ "name": "W1_6_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_1", "role": "o" }} , 
 	{ "name": "W1_6_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_6_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_7_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_1", "role": "i" }} , 
 	{ "name": "W1_7_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_1", "role": "o" }} , 
 	{ "name": "W1_7_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_7_1", "role": "o_ap_vld" }} , 
 	{ "name": "W1_0_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_2", "role": "i" }} , 
 	{ "name": "W1_0_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_2", "role": "o" }} , 
 	{ "name": "W1_0_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_0_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_1_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_2", "role": "i" }} , 
 	{ "name": "W1_1_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_2", "role": "o" }} , 
 	{ "name": "W1_1_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_1_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_2_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_2", "role": "i" }} , 
 	{ "name": "W1_2_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_2", "role": "o" }} , 
 	{ "name": "W1_2_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_2_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_3_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_2", "role": "i" }} , 
 	{ "name": "W1_3_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_2", "role": "o" }} , 
 	{ "name": "W1_3_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_3_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_4_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_2", "role": "i" }} , 
 	{ "name": "W1_4_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_2", "role": "o" }} , 
 	{ "name": "W1_4_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_4_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_5_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_2", "role": "i" }} , 
 	{ "name": "W1_5_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_2", "role": "o" }} , 
 	{ "name": "W1_5_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_5_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_6_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_2", "role": "i" }} , 
 	{ "name": "W1_6_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_2", "role": "o" }} , 
 	{ "name": "W1_6_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_6_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_7_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_2", "role": "i" }} , 
 	{ "name": "W1_7_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_2", "role": "o" }} , 
 	{ "name": "W1_7_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_7_2", "role": "o_ap_vld" }} , 
 	{ "name": "W1_0_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_3", "role": "i" }} , 
 	{ "name": "W1_0_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_0_3", "role": "o" }} , 
 	{ "name": "W1_0_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_0_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_1_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_3", "role": "i" }} , 
 	{ "name": "W1_1_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_1_3", "role": "o" }} , 
 	{ "name": "W1_1_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_1_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_2_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_3", "role": "i" }} , 
 	{ "name": "W1_2_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_2_3", "role": "o" }} , 
 	{ "name": "W1_2_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_2_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_3_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_3", "role": "i" }} , 
 	{ "name": "W1_3_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_3_3", "role": "o" }} , 
 	{ "name": "W1_3_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_3_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_4_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_3", "role": "i" }} , 
 	{ "name": "W1_4_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_4_3", "role": "o" }} , 
 	{ "name": "W1_4_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_4_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_5_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_3", "role": "i" }} , 
 	{ "name": "W1_5_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_5_3", "role": "o" }} , 
 	{ "name": "W1_5_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_5_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_6_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_3", "role": "i" }} , 
 	{ "name": "W1_6_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_6_3", "role": "o" }} , 
 	{ "name": "W1_6_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_6_3", "role": "o_ap_vld" }} , 
 	{ "name": "W1_7_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_3", "role": "i" }} , 
 	{ "name": "W1_7_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1_7_3", "role": "o" }} , 
 	{ "name": "W1_7_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1_7_3", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U75", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U76", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U77", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U78", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U79", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U80", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U81", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U82", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U83", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U84", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U85", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U86", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U87", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U88", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U89", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U90", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U91", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U92", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U93", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U94", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U95", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U96", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U97", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U98", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U99", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U100", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U101", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U102", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U103", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U104", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U105", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_2s_12_4_1_U106", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		W1_7_3 {Type IO LastRead 2 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
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
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 in_data 0 8 } } }
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 in_data 0 8 } } }
	W1_0_0 { ap_ovld {  { W1_0_0_i in_data 0 2 }  { W1_0_0_o out_data 1 2 }  { W1_0_0_o_ap_vld out_vld 1 1 } } }
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 in_data 0 8 } } }
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 in_data 0 8 } } }
	train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed { ap_none {  { train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed in_data 0 8 } } }
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 in_data 0 8 } } }
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 in_data 0 8 } } }
	train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 { ap_none {  { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 in_data 0 8 } } }
	W1_1_0 { ap_ovld {  { W1_1_0_i in_data 0 2 }  { W1_1_0_o out_data 1 2 }  { W1_1_0_o_ap_vld out_vld 1 1 } } }
	W1_2_0 { ap_ovld {  { W1_2_0_i in_data 0 2 }  { W1_2_0_o out_data 1 2 }  { W1_2_0_o_ap_vld out_vld 1 1 } } }
	W1_3_0 { ap_ovld {  { W1_3_0_i in_data 0 2 }  { W1_3_0_o out_data 1 2 }  { W1_3_0_o_ap_vld out_vld 1 1 } } }
	W1_4_0 { ap_ovld {  { W1_4_0_i in_data 0 2 }  { W1_4_0_o out_data 1 2 }  { W1_4_0_o_ap_vld out_vld 1 1 } } }
	W1_5_0 { ap_ovld {  { W1_5_0_i in_data 0 2 }  { W1_5_0_o out_data 1 2 }  { W1_5_0_o_ap_vld out_vld 1 1 } } }
	W1_6_0 { ap_ovld {  { W1_6_0_i in_data 0 2 }  { W1_6_0_o out_data 1 2 }  { W1_6_0_o_ap_vld out_vld 1 1 } } }
	W1_7_0 { ap_ovld {  { W1_7_0_i in_data 0 2 }  { W1_7_0_o out_data 1 2 }  { W1_7_0_o_ap_vld out_vld 1 1 } } }
	W1_0_1 { ap_ovld {  { W1_0_1_i in_data 0 2 }  { W1_0_1_o out_data 1 2 }  { W1_0_1_o_ap_vld out_vld 1 1 } } }
	W1_1_1 { ap_ovld {  { W1_1_1_i in_data 0 2 }  { W1_1_1_o out_data 1 2 }  { W1_1_1_o_ap_vld out_vld 1 1 } } }
	W1_2_1 { ap_ovld {  { W1_2_1_i in_data 0 2 }  { W1_2_1_o out_data 1 2 }  { W1_2_1_o_ap_vld out_vld 1 1 } } }
	W1_3_1 { ap_ovld {  { W1_3_1_i in_data 0 2 }  { W1_3_1_o out_data 1 2 }  { W1_3_1_o_ap_vld out_vld 1 1 } } }
	W1_4_1 { ap_ovld {  { W1_4_1_i in_data 0 2 }  { W1_4_1_o out_data 1 2 }  { W1_4_1_o_ap_vld out_vld 1 1 } } }
	W1_5_1 { ap_ovld {  { W1_5_1_i in_data 0 2 }  { W1_5_1_o out_data 1 2 }  { W1_5_1_o_ap_vld out_vld 1 1 } } }
	W1_6_1 { ap_ovld {  { W1_6_1_i in_data 0 2 }  { W1_6_1_o out_data 1 2 }  { W1_6_1_o_ap_vld out_vld 1 1 } } }
	W1_7_1 { ap_ovld {  { W1_7_1_i in_data 0 2 }  { W1_7_1_o out_data 1 2 }  { W1_7_1_o_ap_vld out_vld 1 1 } } }
	W1_0_2 { ap_ovld {  { W1_0_2_i in_data 0 2 }  { W1_0_2_o out_data 1 2 }  { W1_0_2_o_ap_vld out_vld 1 1 } } }
	W1_1_2 { ap_ovld {  { W1_1_2_i in_data 0 2 }  { W1_1_2_o out_data 1 2 }  { W1_1_2_o_ap_vld out_vld 1 1 } } }
	W1_2_2 { ap_ovld {  { W1_2_2_i in_data 0 2 }  { W1_2_2_o out_data 1 2 }  { W1_2_2_o_ap_vld out_vld 1 1 } } }
	W1_3_2 { ap_ovld {  { W1_3_2_i in_data 0 2 }  { W1_3_2_o out_data 1 2 }  { W1_3_2_o_ap_vld out_vld 1 1 } } }
	W1_4_2 { ap_ovld {  { W1_4_2_i in_data 0 2 }  { W1_4_2_o out_data 1 2 }  { W1_4_2_o_ap_vld out_vld 1 1 } } }
	W1_5_2 { ap_ovld {  { W1_5_2_i in_data 0 2 }  { W1_5_2_o out_data 1 2 }  { W1_5_2_o_ap_vld out_vld 1 1 } } }
	W1_6_2 { ap_ovld {  { W1_6_2_i in_data 0 2 }  { W1_6_2_o out_data 1 2 }  { W1_6_2_o_ap_vld out_vld 1 1 } } }
	W1_7_2 { ap_ovld {  { W1_7_2_i in_data 0 2 }  { W1_7_2_o out_data 1 2 }  { W1_7_2_o_ap_vld out_vld 1 1 } } }
	W1_0_3 { ap_ovld {  { W1_0_3_i in_data 0 2 }  { W1_0_3_o out_data 1 2 }  { W1_0_3_o_ap_vld out_vld 1 1 } } }
	W1_1_3 { ap_ovld {  { W1_1_3_i in_data 0 2 }  { W1_1_3_o out_data 1 2 }  { W1_1_3_o_ap_vld out_vld 1 1 } } }
	W1_2_3 { ap_ovld {  { W1_2_3_i in_data 0 2 }  { W1_2_3_o out_data 1 2 }  { W1_2_3_o_ap_vld out_vld 1 1 } } }
	W1_3_3 { ap_ovld {  { W1_3_3_i in_data 0 2 }  { W1_3_3_o out_data 1 2 }  { W1_3_3_o_ap_vld out_vld 1 1 } } }
	W1_4_3 { ap_ovld {  { W1_4_3_i in_data 0 2 }  { W1_4_3_o out_data 1 2 }  { W1_4_3_o_ap_vld out_vld 1 1 } } }
	W1_5_3 { ap_ovld {  { W1_5_3_i in_data 0 2 }  { W1_5_3_o out_data 1 2 }  { W1_5_3_o_ap_vld out_vld 1 1 } } }
	W1_6_3 { ap_ovld {  { W1_6_3_i in_data 0 2 }  { W1_6_3_o out_data 1 2 }  { W1_6_3_o_ap_vld out_vld 1 1 } } }
	W1_7_3 { ap_ovld {  { W1_7_3_i in_data 0 2 }  { W1_7_3_o out_data 1 2 }  { W1_7_3_o_ap_vld out_vld 1 1 } } }
}
