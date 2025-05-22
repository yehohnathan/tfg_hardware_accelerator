set moduleName forwardHidden
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
set svuvm_can_support 1
set cdfgNum 9
set C_modelName {forwardHidden}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_0_val int 2 regular  }
	{ input_1_val int 2 regular  }
	{ input_2_val int 2 regular  }
	{ input_3_val int 2 regular  }
	{ input_4_val int 2 regular  }
	{ input_5_val int 2 regular  }
	{ input_6_val int 2 regular  }
	{ input_7_val int 2 regular  }
	{ input_8_val int 2 regular  }
	{ input_9_val int 2 regular  }
	{ input_10_val int 2 regular  }
	{ input_11_val int 2 regular  }
	{ input_12_val int 2 regular  }
	{ input_13_val int 2 regular  }
	{ input_14_val int 2 regular  }
	{ input_15_val int 2 regular  }
	{ input_16_val int 2 regular  }
	{ input_17_val int 2 regular  }
	{ input_18_val int 2 regular  }
	{ input_19_val int 2 regular  }
	{ input_20_val int 2 regular  }
	{ input_21_val int 2 regular  }
	{ input_22_val int 2 regular  }
	{ input_23_val int 2 regular  }
	{ input_24_val int 2 regular  }
	{ input_25_val int 2 regular  }
	{ input_26_val int 2 regular  }
	{ input_27_val int 2 regular  }
	{ input_28_val int 2 regular  }
	{ input_29_val int 2 regular  }
	{ input_30_val int 2 regular  }
	{ input_31_val int 2 regular  }
	{ input_32_val int 2 regular  }
	{ input_33_val int 2 regular  }
	{ input_34_val int 2 regular  }
	{ input_35_val int 2 regular  }
	{ input_36_val int 2 regular  }
	{ input_37_val int 2 regular  }
	{ input_38_val int 2 regular  }
	{ input_39_val int 2 regular  }
	{ input_40_val int 2 regular  }
	{ input_41_val int 2 regular  }
	{ input_42_val int 2 regular  }
	{ input_43_val int 2 regular  }
	{ input_44_val int 2 regular  }
	{ input_45_val int 2 regular  }
	{ input_46_val int 2 regular  }
	{ input_47_val int 2 regular  }
	{ input_48_val int 2 regular  }
	{ input_49_val int 2 regular  }
	{ input_50_val int 2 regular  }
	{ input_51_val int 2 regular  }
	{ input_52_val int 2 regular  }
	{ input_53_val int 2 regular  }
	{ input_54_val int 2 regular  }
	{ input_55_val int 2 regular  }
	{ input_56_val int 2 regular  }
	{ input_57_val int 2 regular  }
	{ input_58_val int 2 regular  }
	{ input_59_val int 2 regular  }
	{ input_60_val int 2 regular  }
	{ input_61_val int 2 regular  }
	{ input_62_val int 2 regular  }
	{ input_63_val int 2 regular  }
	{ hidden_0 int 2 regular {pointer 1}  }
	{ hidden_1 int 2 regular {pointer 1}  }
	{ hidden_2 int 2 regular {pointer 1}  }
	{ hidden_3 int 2 regular {pointer 1}  }
	{ hidden_4 int 2 regular {pointer 1}  }
	{ hidden_5 int 2 regular {pointer 1}  }
	{ hidden_6 int 2 regular {pointer 1}  }
	{ hidden_7 int 2 regular {pointer 1}  }
	{ hidden_8 int 2 regular {pointer 1}  }
	{ hidden_9 int 2 regular {pointer 1}  }
	{ hidden_10 int 2 regular {pointer 1}  }
	{ hidden_11 int 2 regular {pointer 1}  }
	{ hidden_12 int 2 regular {pointer 1}  }
	{ hidden_13 int 2 regular {pointer 1}  }
	{ hidden_14 int 2 regular {pointer 1}  }
	{ hidden_15 int 2 regular {pointer 1}  }
	{ hidden_16 int 2 regular {pointer 1}  }
	{ hidden_17 int 2 regular {pointer 1}  }
	{ hidden_18 int 2 regular {pointer 1}  }
	{ hidden_19 int 2 regular {pointer 1}  }
	{ hidden_20 int 2 regular {pointer 1}  }
	{ hidden_21 int 2 regular {pointer 1}  }
	{ hidden_22 int 2 regular {pointer 1}  }
	{ hidden_23 int 2 regular {pointer 1}  }
	{ hidden_24 int 2 regular {pointer 1}  }
	{ hidden_25 int 2 regular {pointer 1}  }
	{ hidden_26 int 2 regular {pointer 1}  }
	{ hidden_27 int 2 regular {pointer 1}  }
	{ hidden_28 int 2 regular {pointer 1}  }
	{ hidden_29 int 2 regular {pointer 1}  }
	{ hidden_30 int 2 regular {pointer 1}  }
	{ hidden_31 int 2 regular {pointer 1}  }
	{ WEIGHTS int 8 regular {axi_master 0}  }
	{ W1 int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_8_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_9_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_10_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_11_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_12_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_13_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_14_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_15_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_16_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_17_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_18_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_19_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_20_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_21_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_22_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_23_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_24_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_25_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_26_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_27_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_28_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_29_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_30_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_31_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_32_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_33_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_34_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_35_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_36_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_37_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_38_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_39_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_40_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_41_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_42_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_43_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_44_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_45_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_46_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_47_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_48_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_49_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_50_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_51_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_52_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_53_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_54_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_55_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_56_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_57_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_58_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_59_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_60_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_61_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_62_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_63_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_0", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_1", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_2", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_3", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_4", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_5", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_6", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_7", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_8", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_9", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_10", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_11", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_12", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_13", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_14", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_15", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_16", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_17", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_18", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_19", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_20", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_21", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_22", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_23", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_24", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_25", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_26", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_27", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_28", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_29", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_30", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hidden_31", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "W1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_val sc_in sc_lv 2 signal 0 } 
	{ input_1_val sc_in sc_lv 2 signal 1 } 
	{ input_2_val sc_in sc_lv 2 signal 2 } 
	{ input_3_val sc_in sc_lv 2 signal 3 } 
	{ input_4_val sc_in sc_lv 2 signal 4 } 
	{ input_5_val sc_in sc_lv 2 signal 5 } 
	{ input_6_val sc_in sc_lv 2 signal 6 } 
	{ input_7_val sc_in sc_lv 2 signal 7 } 
	{ input_8_val sc_in sc_lv 2 signal 8 } 
	{ input_9_val sc_in sc_lv 2 signal 9 } 
	{ input_10_val sc_in sc_lv 2 signal 10 } 
	{ input_11_val sc_in sc_lv 2 signal 11 } 
	{ input_12_val sc_in sc_lv 2 signal 12 } 
	{ input_13_val sc_in sc_lv 2 signal 13 } 
	{ input_14_val sc_in sc_lv 2 signal 14 } 
	{ input_15_val sc_in sc_lv 2 signal 15 } 
	{ input_16_val sc_in sc_lv 2 signal 16 } 
	{ input_17_val sc_in sc_lv 2 signal 17 } 
	{ input_18_val sc_in sc_lv 2 signal 18 } 
	{ input_19_val sc_in sc_lv 2 signal 19 } 
	{ input_20_val sc_in sc_lv 2 signal 20 } 
	{ input_21_val sc_in sc_lv 2 signal 21 } 
	{ input_22_val sc_in sc_lv 2 signal 22 } 
	{ input_23_val sc_in sc_lv 2 signal 23 } 
	{ input_24_val sc_in sc_lv 2 signal 24 } 
	{ input_25_val sc_in sc_lv 2 signal 25 } 
	{ input_26_val sc_in sc_lv 2 signal 26 } 
	{ input_27_val sc_in sc_lv 2 signal 27 } 
	{ input_28_val sc_in sc_lv 2 signal 28 } 
	{ input_29_val sc_in sc_lv 2 signal 29 } 
	{ input_30_val sc_in sc_lv 2 signal 30 } 
	{ input_31_val sc_in sc_lv 2 signal 31 } 
	{ input_32_val sc_in sc_lv 2 signal 32 } 
	{ input_33_val sc_in sc_lv 2 signal 33 } 
	{ input_34_val sc_in sc_lv 2 signal 34 } 
	{ input_35_val sc_in sc_lv 2 signal 35 } 
	{ input_36_val sc_in sc_lv 2 signal 36 } 
	{ input_37_val sc_in sc_lv 2 signal 37 } 
	{ input_38_val sc_in sc_lv 2 signal 38 } 
	{ input_39_val sc_in sc_lv 2 signal 39 } 
	{ input_40_val sc_in sc_lv 2 signal 40 } 
	{ input_41_val sc_in sc_lv 2 signal 41 } 
	{ input_42_val sc_in sc_lv 2 signal 42 } 
	{ input_43_val sc_in sc_lv 2 signal 43 } 
	{ input_44_val sc_in sc_lv 2 signal 44 } 
	{ input_45_val sc_in sc_lv 2 signal 45 } 
	{ input_46_val sc_in sc_lv 2 signal 46 } 
	{ input_47_val sc_in sc_lv 2 signal 47 } 
	{ input_48_val sc_in sc_lv 2 signal 48 } 
	{ input_49_val sc_in sc_lv 2 signal 49 } 
	{ input_50_val sc_in sc_lv 2 signal 50 } 
	{ input_51_val sc_in sc_lv 2 signal 51 } 
	{ input_52_val sc_in sc_lv 2 signal 52 } 
	{ input_53_val sc_in sc_lv 2 signal 53 } 
	{ input_54_val sc_in sc_lv 2 signal 54 } 
	{ input_55_val sc_in sc_lv 2 signal 55 } 
	{ input_56_val sc_in sc_lv 2 signal 56 } 
	{ input_57_val sc_in sc_lv 2 signal 57 } 
	{ input_58_val sc_in sc_lv 2 signal 58 } 
	{ input_59_val sc_in sc_lv 2 signal 59 } 
	{ input_60_val sc_in sc_lv 2 signal 60 } 
	{ input_61_val sc_in sc_lv 2 signal 61 } 
	{ input_62_val sc_in sc_lv 2 signal 62 } 
	{ input_63_val sc_in sc_lv 2 signal 63 } 
	{ hidden_0 sc_out sc_lv 2 signal 64 } 
	{ hidden_0_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ hidden_1 sc_out sc_lv 2 signal 65 } 
	{ hidden_1_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ hidden_2 sc_out sc_lv 2 signal 66 } 
	{ hidden_2_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ hidden_3 sc_out sc_lv 2 signal 67 } 
	{ hidden_3_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ hidden_4 sc_out sc_lv 2 signal 68 } 
	{ hidden_4_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ hidden_5 sc_out sc_lv 2 signal 69 } 
	{ hidden_5_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ hidden_6 sc_out sc_lv 2 signal 70 } 
	{ hidden_6_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ hidden_7 sc_out sc_lv 2 signal 71 } 
	{ hidden_7_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ hidden_8 sc_out sc_lv 2 signal 72 } 
	{ hidden_8_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ hidden_9 sc_out sc_lv 2 signal 73 } 
	{ hidden_9_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ hidden_10 sc_out sc_lv 2 signal 74 } 
	{ hidden_10_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ hidden_11 sc_out sc_lv 2 signal 75 } 
	{ hidden_11_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ hidden_12 sc_out sc_lv 2 signal 76 } 
	{ hidden_12_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ hidden_13 sc_out sc_lv 2 signal 77 } 
	{ hidden_13_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ hidden_14 sc_out sc_lv 2 signal 78 } 
	{ hidden_14_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ hidden_15 sc_out sc_lv 2 signal 79 } 
	{ hidden_15_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ hidden_16 sc_out sc_lv 2 signal 80 } 
	{ hidden_16_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ hidden_17 sc_out sc_lv 2 signal 81 } 
	{ hidden_17_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ hidden_18 sc_out sc_lv 2 signal 82 } 
	{ hidden_18_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ hidden_19 sc_out sc_lv 2 signal 83 } 
	{ hidden_19_ap_vld sc_out sc_logic 1 outvld 83 } 
	{ hidden_20 sc_out sc_lv 2 signal 84 } 
	{ hidden_20_ap_vld sc_out sc_logic 1 outvld 84 } 
	{ hidden_21 sc_out sc_lv 2 signal 85 } 
	{ hidden_21_ap_vld sc_out sc_logic 1 outvld 85 } 
	{ hidden_22 sc_out sc_lv 2 signal 86 } 
	{ hidden_22_ap_vld sc_out sc_logic 1 outvld 86 } 
	{ hidden_23 sc_out sc_lv 2 signal 87 } 
	{ hidden_23_ap_vld sc_out sc_logic 1 outvld 87 } 
	{ hidden_24 sc_out sc_lv 2 signal 88 } 
	{ hidden_24_ap_vld sc_out sc_logic 1 outvld 88 } 
	{ hidden_25 sc_out sc_lv 2 signal 89 } 
	{ hidden_25_ap_vld sc_out sc_logic 1 outvld 89 } 
	{ hidden_26 sc_out sc_lv 2 signal 90 } 
	{ hidden_26_ap_vld sc_out sc_logic 1 outvld 90 } 
	{ hidden_27 sc_out sc_lv 2 signal 91 } 
	{ hidden_27_ap_vld sc_out sc_logic 1 outvld 91 } 
	{ hidden_28 sc_out sc_lv 2 signal 92 } 
	{ hidden_28_ap_vld sc_out sc_logic 1 outvld 92 } 
	{ hidden_29 sc_out sc_lv 2 signal 93 } 
	{ hidden_29_ap_vld sc_out sc_logic 1 outvld 93 } 
	{ hidden_30 sc_out sc_lv 2 signal 94 } 
	{ hidden_30_ap_vld sc_out sc_logic 1 outvld 94 } 
	{ hidden_31 sc_out sc_lv 2 signal 95 } 
	{ hidden_31_ap_vld sc_out sc_logic 1 outvld 95 } 
	{ m_axi_WEIGHTS_0_AWVALID sc_out sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_AWREADY sc_in sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_AWADDR sc_out sc_lv 64 signal 96 } 
	{ m_axi_WEIGHTS_0_AWID sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_AWLEN sc_out sc_lv 32 signal 96 } 
	{ m_axi_WEIGHTS_0_AWSIZE sc_out sc_lv 3 signal 96 } 
	{ m_axi_WEIGHTS_0_AWBURST sc_out sc_lv 2 signal 96 } 
	{ m_axi_WEIGHTS_0_AWLOCK sc_out sc_lv 2 signal 96 } 
	{ m_axi_WEIGHTS_0_AWCACHE sc_out sc_lv 4 signal 96 } 
	{ m_axi_WEIGHTS_0_AWPROT sc_out sc_lv 3 signal 96 } 
	{ m_axi_WEIGHTS_0_AWQOS sc_out sc_lv 4 signal 96 } 
	{ m_axi_WEIGHTS_0_AWREGION sc_out sc_lv 4 signal 96 } 
	{ m_axi_WEIGHTS_0_AWUSER sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_WVALID sc_out sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_WREADY sc_in sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_WDATA sc_out sc_lv 8 signal 96 } 
	{ m_axi_WEIGHTS_0_WSTRB sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_WLAST sc_out sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_WID sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_WUSER sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_ARVALID sc_out sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_ARREADY sc_in sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_ARADDR sc_out sc_lv 64 signal 96 } 
	{ m_axi_WEIGHTS_0_ARID sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_ARLEN sc_out sc_lv 32 signal 96 } 
	{ m_axi_WEIGHTS_0_ARSIZE sc_out sc_lv 3 signal 96 } 
	{ m_axi_WEIGHTS_0_ARBURST sc_out sc_lv 2 signal 96 } 
	{ m_axi_WEIGHTS_0_ARLOCK sc_out sc_lv 2 signal 96 } 
	{ m_axi_WEIGHTS_0_ARCACHE sc_out sc_lv 4 signal 96 } 
	{ m_axi_WEIGHTS_0_ARPROT sc_out sc_lv 3 signal 96 } 
	{ m_axi_WEIGHTS_0_ARQOS sc_out sc_lv 4 signal 96 } 
	{ m_axi_WEIGHTS_0_ARREGION sc_out sc_lv 4 signal 96 } 
	{ m_axi_WEIGHTS_0_ARUSER sc_out sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_RVALID sc_in sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_RREADY sc_out sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_RDATA sc_in sc_lv 8 signal 96 } 
	{ m_axi_WEIGHTS_0_RLAST sc_in sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_RID sc_in sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_RFIFONUM sc_in sc_lv 11 signal 96 } 
	{ m_axi_WEIGHTS_0_RUSER sc_in sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_RRESP sc_in sc_lv 2 signal 96 } 
	{ m_axi_WEIGHTS_0_BVALID sc_in sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_BREADY sc_out sc_logic 1 signal 96 } 
	{ m_axi_WEIGHTS_0_BRESP sc_in sc_lv 2 signal 96 } 
	{ m_axi_WEIGHTS_0_BID sc_in sc_lv 1 signal 96 } 
	{ m_axi_WEIGHTS_0_BUSER sc_in sc_lv 1 signal 96 } 
	{ W1 sc_in sc_lv 64 signal 97 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0_val", "role": "default" }} , 
 	{ "name": "input_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_val", "role": "default" }} , 
 	{ "name": "input_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_2_val", "role": "default" }} , 
 	{ "name": "input_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_3_val", "role": "default" }} , 
 	{ "name": "input_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_4_val", "role": "default" }} , 
 	{ "name": "input_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_5_val", "role": "default" }} , 
 	{ "name": "input_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_6_val", "role": "default" }} , 
 	{ "name": "input_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_7_val", "role": "default" }} , 
 	{ "name": "input_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_8_val", "role": "default" }} , 
 	{ "name": "input_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_9_val", "role": "default" }} , 
 	{ "name": "input_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_10_val", "role": "default" }} , 
 	{ "name": "input_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_11_val", "role": "default" }} , 
 	{ "name": "input_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_12_val", "role": "default" }} , 
 	{ "name": "input_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_13_val", "role": "default" }} , 
 	{ "name": "input_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_14_val", "role": "default" }} , 
 	{ "name": "input_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_15_val", "role": "default" }} , 
 	{ "name": "input_16_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_16_val", "role": "default" }} , 
 	{ "name": "input_17_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_17_val", "role": "default" }} , 
 	{ "name": "input_18_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_18_val", "role": "default" }} , 
 	{ "name": "input_19_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_19_val", "role": "default" }} , 
 	{ "name": "input_20_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_20_val", "role": "default" }} , 
 	{ "name": "input_21_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_21_val", "role": "default" }} , 
 	{ "name": "input_22_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_22_val", "role": "default" }} , 
 	{ "name": "input_23_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_23_val", "role": "default" }} , 
 	{ "name": "input_24_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_24_val", "role": "default" }} , 
 	{ "name": "input_25_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_25_val", "role": "default" }} , 
 	{ "name": "input_26_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_26_val", "role": "default" }} , 
 	{ "name": "input_27_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_27_val", "role": "default" }} , 
 	{ "name": "input_28_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_28_val", "role": "default" }} , 
 	{ "name": "input_29_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_29_val", "role": "default" }} , 
 	{ "name": "input_30_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_30_val", "role": "default" }} , 
 	{ "name": "input_31_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_31_val", "role": "default" }} , 
 	{ "name": "input_32_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_32_val", "role": "default" }} , 
 	{ "name": "input_33_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_33_val", "role": "default" }} , 
 	{ "name": "input_34_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_34_val", "role": "default" }} , 
 	{ "name": "input_35_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_35_val", "role": "default" }} , 
 	{ "name": "input_36_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_36_val", "role": "default" }} , 
 	{ "name": "input_37_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_37_val", "role": "default" }} , 
 	{ "name": "input_38_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_38_val", "role": "default" }} , 
 	{ "name": "input_39_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_39_val", "role": "default" }} , 
 	{ "name": "input_40_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_40_val", "role": "default" }} , 
 	{ "name": "input_41_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_41_val", "role": "default" }} , 
 	{ "name": "input_42_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_42_val", "role": "default" }} , 
 	{ "name": "input_43_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_43_val", "role": "default" }} , 
 	{ "name": "input_44_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_44_val", "role": "default" }} , 
 	{ "name": "input_45_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_45_val", "role": "default" }} , 
 	{ "name": "input_46_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_46_val", "role": "default" }} , 
 	{ "name": "input_47_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_47_val", "role": "default" }} , 
 	{ "name": "input_48_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_48_val", "role": "default" }} , 
 	{ "name": "input_49_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_49_val", "role": "default" }} , 
 	{ "name": "input_50_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_50_val", "role": "default" }} , 
 	{ "name": "input_51_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_51_val", "role": "default" }} , 
 	{ "name": "input_52_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_52_val", "role": "default" }} , 
 	{ "name": "input_53_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_53_val", "role": "default" }} , 
 	{ "name": "input_54_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_54_val", "role": "default" }} , 
 	{ "name": "input_55_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_55_val", "role": "default" }} , 
 	{ "name": "input_56_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_56_val", "role": "default" }} , 
 	{ "name": "input_57_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_57_val", "role": "default" }} , 
 	{ "name": "input_58_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_58_val", "role": "default" }} , 
 	{ "name": "input_59_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_59_val", "role": "default" }} , 
 	{ "name": "input_60_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_60_val", "role": "default" }} , 
 	{ "name": "input_61_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_61_val", "role": "default" }} , 
 	{ "name": "input_62_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_62_val", "role": "default" }} , 
 	{ "name": "input_63_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_63_val", "role": "default" }} , 
 	{ "name": "hidden_0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_0", "role": "default" }} , 
 	{ "name": "hidden_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_0", "role": "ap_vld" }} , 
 	{ "name": "hidden_1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_1", "role": "default" }} , 
 	{ "name": "hidden_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_1", "role": "ap_vld" }} , 
 	{ "name": "hidden_2", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_2", "role": "default" }} , 
 	{ "name": "hidden_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_2", "role": "ap_vld" }} , 
 	{ "name": "hidden_3", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_3", "role": "default" }} , 
 	{ "name": "hidden_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_3", "role": "ap_vld" }} , 
 	{ "name": "hidden_4", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_4", "role": "default" }} , 
 	{ "name": "hidden_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_4", "role": "ap_vld" }} , 
 	{ "name": "hidden_5", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_5", "role": "default" }} , 
 	{ "name": "hidden_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_5", "role": "ap_vld" }} , 
 	{ "name": "hidden_6", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_6", "role": "default" }} , 
 	{ "name": "hidden_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_6", "role": "ap_vld" }} , 
 	{ "name": "hidden_7", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_7", "role": "default" }} , 
 	{ "name": "hidden_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_7", "role": "ap_vld" }} , 
 	{ "name": "hidden_8", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_8", "role": "default" }} , 
 	{ "name": "hidden_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_8", "role": "ap_vld" }} , 
 	{ "name": "hidden_9", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_9", "role": "default" }} , 
 	{ "name": "hidden_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_9", "role": "ap_vld" }} , 
 	{ "name": "hidden_10", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_10", "role": "default" }} , 
 	{ "name": "hidden_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_10", "role": "ap_vld" }} , 
 	{ "name": "hidden_11", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_11", "role": "default" }} , 
 	{ "name": "hidden_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_11", "role": "ap_vld" }} , 
 	{ "name": "hidden_12", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_12", "role": "default" }} , 
 	{ "name": "hidden_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_12", "role": "ap_vld" }} , 
 	{ "name": "hidden_13", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_13", "role": "default" }} , 
 	{ "name": "hidden_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_13", "role": "ap_vld" }} , 
 	{ "name": "hidden_14", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_14", "role": "default" }} , 
 	{ "name": "hidden_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_14", "role": "ap_vld" }} , 
 	{ "name": "hidden_15", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_15", "role": "default" }} , 
 	{ "name": "hidden_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_15", "role": "ap_vld" }} , 
 	{ "name": "hidden_16", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_16", "role": "default" }} , 
 	{ "name": "hidden_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_16", "role": "ap_vld" }} , 
 	{ "name": "hidden_17", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_17", "role": "default" }} , 
 	{ "name": "hidden_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_17", "role": "ap_vld" }} , 
 	{ "name": "hidden_18", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_18", "role": "default" }} , 
 	{ "name": "hidden_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_18", "role": "ap_vld" }} , 
 	{ "name": "hidden_19", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_19", "role": "default" }} , 
 	{ "name": "hidden_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_19", "role": "ap_vld" }} , 
 	{ "name": "hidden_20", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_20", "role": "default" }} , 
 	{ "name": "hidden_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_20", "role": "ap_vld" }} , 
 	{ "name": "hidden_21", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_21", "role": "default" }} , 
 	{ "name": "hidden_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_21", "role": "ap_vld" }} , 
 	{ "name": "hidden_22", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_22", "role": "default" }} , 
 	{ "name": "hidden_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_22", "role": "ap_vld" }} , 
 	{ "name": "hidden_23", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_23", "role": "default" }} , 
 	{ "name": "hidden_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_23", "role": "ap_vld" }} , 
 	{ "name": "hidden_24", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_24", "role": "default" }} , 
 	{ "name": "hidden_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_24", "role": "ap_vld" }} , 
 	{ "name": "hidden_25", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_25", "role": "default" }} , 
 	{ "name": "hidden_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_25", "role": "ap_vld" }} , 
 	{ "name": "hidden_26", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_26", "role": "default" }} , 
 	{ "name": "hidden_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_26", "role": "ap_vld" }} , 
 	{ "name": "hidden_27", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_27", "role": "default" }} , 
 	{ "name": "hidden_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_27", "role": "ap_vld" }} , 
 	{ "name": "hidden_28", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_28", "role": "default" }} , 
 	{ "name": "hidden_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_28", "role": "ap_vld" }} , 
 	{ "name": "hidden_29", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_29", "role": "default" }} , 
 	{ "name": "hidden_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_29", "role": "ap_vld" }} , 
 	{ "name": "hidden_30", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_30", "role": "default" }} , 
 	{ "name": "hidden_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_30", "role": "ap_vld" }} , 
 	{ "name": "hidden_31", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_31", "role": "default" }} , 
 	{ "name": "hidden_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hidden_31", "role": "ap_vld" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_WEIGHTS_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_WEIGHTS_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_WEIGHTS_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_WEIGHTS_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_BID" }} , 
 	{ "name": "m_axi_WEIGHTS_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "0_BUSER" }} , 
 	{ "name": "W1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "forwardHidden",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2066", "EstimateLatencyMax" : "2066",
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
			{"Name" : "input_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_32_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_33_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_34_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_35_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_36_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_37_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_38_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_39_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_40_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_41_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_42_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_43_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_44_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_45_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_46_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_47_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_48_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_49_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_50_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_51_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_52_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_53_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_54_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_55_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_56_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_57_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_58_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_59_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_60_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_61_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_62_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_63_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_10", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_11", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_12", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_13", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_14", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_15", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_16", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_16", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_17", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_17", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_18", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_18", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_19", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_19", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_20", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_20", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_21", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_21", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_22", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_22", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_23", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_23", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_24", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_24", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_25", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_25", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_26", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_26", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_27", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_27", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_28", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_28", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_29", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_29", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_30", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_30", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_31", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_31", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "WEIGHTS", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "forwardHidden_Pipeline_VITIS_LOOP_36_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2057", "EstimateLatencyMax" : "2057",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hidden_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hidden_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sext_ln41", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln41_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln36", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_36_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U28", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U29", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U30", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U31", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U32", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U33", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U34", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U35", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U36", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U37", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U38", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U39", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U40", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U41", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U42", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U43", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U44", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U45", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U46", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U47", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U48", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U49", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U50", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U51", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U52", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U53", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U54", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U55", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U56", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U57", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U58", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U59", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U60", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U61", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U62", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U63", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U64", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	forwardHidden {
		input_0_val {Type I LastRead 8 FirstWrite -1}
		input_1_val {Type I LastRead 8 FirstWrite -1}
		input_2_val {Type I LastRead 8 FirstWrite -1}
		input_3_val {Type I LastRead 8 FirstWrite -1}
		input_4_val {Type I LastRead 8 FirstWrite -1}
		input_5_val {Type I LastRead 8 FirstWrite -1}
		input_6_val {Type I LastRead 8 FirstWrite -1}
		input_7_val {Type I LastRead 8 FirstWrite -1}
		input_8_val {Type I LastRead 8 FirstWrite -1}
		input_9_val {Type I LastRead 8 FirstWrite -1}
		input_10_val {Type I LastRead 8 FirstWrite -1}
		input_11_val {Type I LastRead 8 FirstWrite -1}
		input_12_val {Type I LastRead 8 FirstWrite -1}
		input_13_val {Type I LastRead 8 FirstWrite -1}
		input_14_val {Type I LastRead 8 FirstWrite -1}
		input_15_val {Type I LastRead 8 FirstWrite -1}
		input_16_val {Type I LastRead 8 FirstWrite -1}
		input_17_val {Type I LastRead 8 FirstWrite -1}
		input_18_val {Type I LastRead 8 FirstWrite -1}
		input_19_val {Type I LastRead 8 FirstWrite -1}
		input_20_val {Type I LastRead 8 FirstWrite -1}
		input_21_val {Type I LastRead 8 FirstWrite -1}
		input_22_val {Type I LastRead 8 FirstWrite -1}
		input_23_val {Type I LastRead 8 FirstWrite -1}
		input_24_val {Type I LastRead 8 FirstWrite -1}
		input_25_val {Type I LastRead 8 FirstWrite -1}
		input_26_val {Type I LastRead 8 FirstWrite -1}
		input_27_val {Type I LastRead 8 FirstWrite -1}
		input_28_val {Type I LastRead 8 FirstWrite -1}
		input_29_val {Type I LastRead 8 FirstWrite -1}
		input_30_val {Type I LastRead 8 FirstWrite -1}
		input_31_val {Type I LastRead 8 FirstWrite -1}
		input_32_val {Type I LastRead 8 FirstWrite -1}
		input_33_val {Type I LastRead 8 FirstWrite -1}
		input_34_val {Type I LastRead 8 FirstWrite -1}
		input_35_val {Type I LastRead 8 FirstWrite -1}
		input_36_val {Type I LastRead 8 FirstWrite -1}
		input_37_val {Type I LastRead 8 FirstWrite -1}
		input_38_val {Type I LastRead 8 FirstWrite -1}
		input_39_val {Type I LastRead 8 FirstWrite -1}
		input_40_val {Type I LastRead 8 FirstWrite -1}
		input_41_val {Type I LastRead 8 FirstWrite -1}
		input_42_val {Type I LastRead 8 FirstWrite -1}
		input_43_val {Type I LastRead 8 FirstWrite -1}
		input_44_val {Type I LastRead 8 FirstWrite -1}
		input_45_val {Type I LastRead 8 FirstWrite -1}
		input_46_val {Type I LastRead 8 FirstWrite -1}
		input_47_val {Type I LastRead 8 FirstWrite -1}
		input_48_val {Type I LastRead 8 FirstWrite -1}
		input_49_val {Type I LastRead 8 FirstWrite -1}
		input_50_val {Type I LastRead 8 FirstWrite -1}
		input_51_val {Type I LastRead 8 FirstWrite -1}
		input_52_val {Type I LastRead 8 FirstWrite -1}
		input_53_val {Type I LastRead 8 FirstWrite -1}
		input_54_val {Type I LastRead 8 FirstWrite -1}
		input_55_val {Type I LastRead 8 FirstWrite -1}
		input_56_val {Type I LastRead 8 FirstWrite -1}
		input_57_val {Type I LastRead 8 FirstWrite -1}
		input_58_val {Type I LastRead 8 FirstWrite -1}
		input_59_val {Type I LastRead 8 FirstWrite -1}
		input_60_val {Type I LastRead 8 FirstWrite -1}
		input_61_val {Type I LastRead 8 FirstWrite -1}
		input_62_val {Type I LastRead 8 FirstWrite -1}
		input_63_val {Type I LastRead 8 FirstWrite -1}
		hidden_0 {Type O LastRead -1 FirstWrite 71}
		hidden_1 {Type O LastRead -1 FirstWrite 71}
		hidden_2 {Type O LastRead -1 FirstWrite 71}
		hidden_3 {Type O LastRead -1 FirstWrite 71}
		hidden_4 {Type O LastRead -1 FirstWrite 71}
		hidden_5 {Type O LastRead -1 FirstWrite 71}
		hidden_6 {Type O LastRead -1 FirstWrite 71}
		hidden_7 {Type O LastRead -1 FirstWrite 71}
		hidden_8 {Type O LastRead -1 FirstWrite 71}
		hidden_9 {Type O LastRead -1 FirstWrite 71}
		hidden_10 {Type O LastRead -1 FirstWrite 71}
		hidden_11 {Type O LastRead -1 FirstWrite 71}
		hidden_12 {Type O LastRead -1 FirstWrite 71}
		hidden_13 {Type O LastRead -1 FirstWrite 71}
		hidden_14 {Type O LastRead -1 FirstWrite 71}
		hidden_15 {Type O LastRead -1 FirstWrite 71}
		hidden_16 {Type O LastRead -1 FirstWrite 71}
		hidden_17 {Type O LastRead -1 FirstWrite 71}
		hidden_18 {Type O LastRead -1 FirstWrite 71}
		hidden_19 {Type O LastRead -1 FirstWrite 71}
		hidden_20 {Type O LastRead -1 FirstWrite 71}
		hidden_21 {Type O LastRead -1 FirstWrite 71}
		hidden_22 {Type O LastRead -1 FirstWrite 71}
		hidden_23 {Type O LastRead -1 FirstWrite 71}
		hidden_24 {Type O LastRead -1 FirstWrite 71}
		hidden_25 {Type O LastRead -1 FirstWrite 71}
		hidden_26 {Type O LastRead -1 FirstWrite 71}
		hidden_27 {Type O LastRead -1 FirstWrite 71}
		hidden_28 {Type O LastRead -1 FirstWrite 71}
		hidden_29 {Type O LastRead -1 FirstWrite 71}
		hidden_30 {Type O LastRead -1 FirstWrite 71}
		hidden_31 {Type O LastRead -1 FirstWrite 71}
		WEIGHTS {Type I LastRead 64 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}}
	forwardHidden_Pipeline_VITIS_LOOP_36_1 {
		hidden_0 {Type O LastRead -1 FirstWrite 71}
		WEIGHTS {Type I LastRead 64 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}
		hidden_31 {Type O LastRead -1 FirstWrite 71}
		hidden_30 {Type O LastRead -1 FirstWrite 71}
		hidden_29 {Type O LastRead -1 FirstWrite 71}
		hidden_28 {Type O LastRead -1 FirstWrite 71}
		hidden_27 {Type O LastRead -1 FirstWrite 71}
		hidden_26 {Type O LastRead -1 FirstWrite 71}
		hidden_25 {Type O LastRead -1 FirstWrite 71}
		hidden_24 {Type O LastRead -1 FirstWrite 71}
		hidden_23 {Type O LastRead -1 FirstWrite 71}
		hidden_22 {Type O LastRead -1 FirstWrite 71}
		hidden_21 {Type O LastRead -1 FirstWrite 71}
		hidden_20 {Type O LastRead -1 FirstWrite 71}
		hidden_19 {Type O LastRead -1 FirstWrite 71}
		hidden_18 {Type O LastRead -1 FirstWrite 71}
		hidden_17 {Type O LastRead -1 FirstWrite 71}
		hidden_16 {Type O LastRead -1 FirstWrite 71}
		hidden_15 {Type O LastRead -1 FirstWrite 71}
		hidden_14 {Type O LastRead -1 FirstWrite 71}
		hidden_13 {Type O LastRead -1 FirstWrite 71}
		hidden_12 {Type O LastRead -1 FirstWrite 71}
		hidden_11 {Type O LastRead -1 FirstWrite 71}
		hidden_10 {Type O LastRead -1 FirstWrite 71}
		hidden_9 {Type O LastRead -1 FirstWrite 71}
		hidden_8 {Type O LastRead -1 FirstWrite 71}
		hidden_7 {Type O LastRead -1 FirstWrite 71}
		hidden_6 {Type O LastRead -1 FirstWrite 71}
		hidden_5 {Type O LastRead -1 FirstWrite 71}
		hidden_4 {Type O LastRead -1 FirstWrite 71}
		hidden_3 {Type O LastRead -1 FirstWrite 71}
		hidden_2 {Type O LastRead -1 FirstWrite 71}
		hidden_1 {Type O LastRead -1 FirstWrite 71}
		sext_ln41 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_25 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_27 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_29 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_31 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_32 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_33 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_34 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_35 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_36 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_37 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_38 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_39 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_40 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_41 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_42 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_43 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_44 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_45 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_46 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_47 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_48 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_49 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_50 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_51 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_52 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_53 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_54 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_55 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_56 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_57 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_58 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_59 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_60 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_61 {Type I LastRead 0 FirstWrite -1}
		sext_ln41_62 {Type I LastRead 0 FirstWrite -1}
		sext_ln36 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2066", "Max" : "2066"}
	, {"Name" : "Interval", "Min" : "2066", "Max" : "2066"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0_val { ap_none {  { input_0_val in_data 0 2 } } }
	input_1_val { ap_none {  { input_1_val in_data 0 2 } } }
	input_2_val { ap_none {  { input_2_val in_data 0 2 } } }
	input_3_val { ap_none {  { input_3_val in_data 0 2 } } }
	input_4_val { ap_none {  { input_4_val in_data 0 2 } } }
	input_5_val { ap_none {  { input_5_val in_data 0 2 } } }
	input_6_val { ap_none {  { input_6_val in_data 0 2 } } }
	input_7_val { ap_none {  { input_7_val in_data 0 2 } } }
	input_8_val { ap_none {  { input_8_val in_data 0 2 } } }
	input_9_val { ap_none {  { input_9_val in_data 0 2 } } }
	input_10_val { ap_none {  { input_10_val in_data 0 2 } } }
	input_11_val { ap_none {  { input_11_val in_data 0 2 } } }
	input_12_val { ap_none {  { input_12_val in_data 0 2 } } }
	input_13_val { ap_none {  { input_13_val in_data 0 2 } } }
	input_14_val { ap_none {  { input_14_val in_data 0 2 } } }
	input_15_val { ap_none {  { input_15_val in_data 0 2 } } }
	input_16_val { ap_none {  { input_16_val in_data 0 2 } } }
	input_17_val { ap_none {  { input_17_val in_data 0 2 } } }
	input_18_val { ap_none {  { input_18_val in_data 0 2 } } }
	input_19_val { ap_none {  { input_19_val in_data 0 2 } } }
	input_20_val { ap_none {  { input_20_val in_data 0 2 } } }
	input_21_val { ap_none {  { input_21_val in_data 0 2 } } }
	input_22_val { ap_none {  { input_22_val in_data 0 2 } } }
	input_23_val { ap_none {  { input_23_val in_data 0 2 } } }
	input_24_val { ap_none {  { input_24_val in_data 0 2 } } }
	input_25_val { ap_none {  { input_25_val in_data 0 2 } } }
	input_26_val { ap_none {  { input_26_val in_data 0 2 } } }
	input_27_val { ap_none {  { input_27_val in_data 0 2 } } }
	input_28_val { ap_none {  { input_28_val in_data 0 2 } } }
	input_29_val { ap_none {  { input_29_val in_data 0 2 } } }
	input_30_val { ap_none {  { input_30_val in_data 0 2 } } }
	input_31_val { ap_none {  { input_31_val in_data 0 2 } } }
	input_32_val { ap_none {  { input_32_val in_data 0 2 } } }
	input_33_val { ap_none {  { input_33_val in_data 0 2 } } }
	input_34_val { ap_none {  { input_34_val in_data 0 2 } } }
	input_35_val { ap_none {  { input_35_val in_data 0 2 } } }
	input_36_val { ap_none {  { input_36_val in_data 0 2 } } }
	input_37_val { ap_none {  { input_37_val in_data 0 2 } } }
	input_38_val { ap_none {  { input_38_val in_data 0 2 } } }
	input_39_val { ap_none {  { input_39_val in_data 0 2 } } }
	input_40_val { ap_none {  { input_40_val in_data 0 2 } } }
	input_41_val { ap_none {  { input_41_val in_data 0 2 } } }
	input_42_val { ap_none {  { input_42_val in_data 0 2 } } }
	input_43_val { ap_none {  { input_43_val in_data 0 2 } } }
	input_44_val { ap_none {  { input_44_val in_data 0 2 } } }
	input_45_val { ap_none {  { input_45_val in_data 0 2 } } }
	input_46_val { ap_none {  { input_46_val in_data 0 2 } } }
	input_47_val { ap_none {  { input_47_val in_data 0 2 } } }
	input_48_val { ap_none {  { input_48_val in_data 0 2 } } }
	input_49_val { ap_none {  { input_49_val in_data 0 2 } } }
	input_50_val { ap_none {  { input_50_val in_data 0 2 } } }
	input_51_val { ap_none {  { input_51_val in_data 0 2 } } }
	input_52_val { ap_none {  { input_52_val in_data 0 2 } } }
	input_53_val { ap_none {  { input_53_val in_data 0 2 } } }
	input_54_val { ap_none {  { input_54_val in_data 0 2 } } }
	input_55_val { ap_none {  { input_55_val in_data 0 2 } } }
	input_56_val { ap_none {  { input_56_val in_data 0 2 } } }
	input_57_val { ap_none {  { input_57_val in_data 0 2 } } }
	input_58_val { ap_none {  { input_58_val in_data 0 2 } } }
	input_59_val { ap_none {  { input_59_val in_data 0 2 } } }
	input_60_val { ap_none {  { input_60_val in_data 0 2 } } }
	input_61_val { ap_none {  { input_61_val in_data 0 2 } } }
	input_62_val { ap_none {  { input_62_val in_data 0 2 } } }
	input_63_val { ap_none {  { input_63_val in_data 0 2 } } }
	hidden_0 { ap_vld {  { hidden_0 out_data 1 2 }  { hidden_0_ap_vld out_vld 1 1 } } }
	hidden_1 { ap_vld {  { hidden_1 out_data 1 2 }  { hidden_1_ap_vld out_vld 1 1 } } }
	hidden_2 { ap_vld {  { hidden_2 out_data 1 2 }  { hidden_2_ap_vld out_vld 1 1 } } }
	hidden_3 { ap_vld {  { hidden_3 out_data 1 2 }  { hidden_3_ap_vld out_vld 1 1 } } }
	hidden_4 { ap_vld {  { hidden_4 out_data 1 2 }  { hidden_4_ap_vld out_vld 1 1 } } }
	hidden_5 { ap_vld {  { hidden_5 out_data 1 2 }  { hidden_5_ap_vld out_vld 1 1 } } }
	hidden_6 { ap_vld {  { hidden_6 out_data 1 2 }  { hidden_6_ap_vld out_vld 1 1 } } }
	hidden_7 { ap_vld {  { hidden_7 out_data 1 2 }  { hidden_7_ap_vld out_vld 1 1 } } }
	hidden_8 { ap_vld {  { hidden_8 out_data 1 2 }  { hidden_8_ap_vld out_vld 1 1 } } }
	hidden_9 { ap_vld {  { hidden_9 out_data 1 2 }  { hidden_9_ap_vld out_vld 1 1 } } }
	hidden_10 { ap_vld {  { hidden_10 out_data 1 2 }  { hidden_10_ap_vld out_vld 1 1 } } }
	hidden_11 { ap_vld {  { hidden_11 out_data 1 2 }  { hidden_11_ap_vld out_vld 1 1 } } }
	hidden_12 { ap_vld {  { hidden_12 out_data 1 2 }  { hidden_12_ap_vld out_vld 1 1 } } }
	hidden_13 { ap_vld {  { hidden_13 out_data 1 2 }  { hidden_13_ap_vld out_vld 1 1 } } }
	hidden_14 { ap_vld {  { hidden_14 out_data 1 2 }  { hidden_14_ap_vld out_vld 1 1 } } }
	hidden_15 { ap_vld {  { hidden_15 out_data 1 2 }  { hidden_15_ap_vld out_vld 1 1 } } }
	hidden_16 { ap_vld {  { hidden_16 out_data 1 2 }  { hidden_16_ap_vld out_vld 1 1 } } }
	hidden_17 { ap_vld {  { hidden_17 out_data 1 2 }  { hidden_17_ap_vld out_vld 1 1 } } }
	hidden_18 { ap_vld {  { hidden_18 out_data 1 2 }  { hidden_18_ap_vld out_vld 1 1 } } }
	hidden_19 { ap_vld {  { hidden_19 out_data 1 2 }  { hidden_19_ap_vld out_vld 1 1 } } }
	hidden_20 { ap_vld {  { hidden_20 out_data 1 2 }  { hidden_20_ap_vld out_vld 1 1 } } }
	hidden_21 { ap_vld {  { hidden_21 out_data 1 2 }  { hidden_21_ap_vld out_vld 1 1 } } }
	hidden_22 { ap_vld {  { hidden_22 out_data 1 2 }  { hidden_22_ap_vld out_vld 1 1 } } }
	hidden_23 { ap_vld {  { hidden_23 out_data 1 2 }  { hidden_23_ap_vld out_vld 1 1 } } }
	hidden_24 { ap_vld {  { hidden_24 out_data 1 2 }  { hidden_24_ap_vld out_vld 1 1 } } }
	hidden_25 { ap_vld {  { hidden_25 out_data 1 2 }  { hidden_25_ap_vld out_vld 1 1 } } }
	hidden_26 { ap_vld {  { hidden_26 out_data 1 2 }  { hidden_26_ap_vld out_vld 1 1 } } }
	hidden_27 { ap_vld {  { hidden_27 out_data 1 2 }  { hidden_27_ap_vld out_vld 1 1 } } }
	hidden_28 { ap_vld {  { hidden_28 out_data 1 2 }  { hidden_28_ap_vld out_vld 1 1 } } }
	hidden_29 { ap_vld {  { hidden_29 out_data 1 2 }  { hidden_29_ap_vld out_vld 1 1 } } }
	hidden_30 { ap_vld {  { hidden_30 out_data 1 2 }  { hidden_30_ap_vld out_vld 1 1 } } }
	hidden_31 { ap_vld {  { hidden_31 out_data 1 2 }  { hidden_31_ap_vld out_vld 1 1 } } }
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	W1 { ap_none {  { W1 in_data 0 64 } } }
}
