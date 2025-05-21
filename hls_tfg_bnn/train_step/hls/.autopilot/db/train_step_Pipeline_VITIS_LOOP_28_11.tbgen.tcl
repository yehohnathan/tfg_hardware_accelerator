set moduleName train_step_Pipeline_VITIS_LOOP_28_11
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
set C_modelName {train_step_Pipeline_VITIS_LOOP_28_11}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict hidden_neg { MEM_WIDTH 2 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 0}  }
	{ W1 int 64 regular  }
	{ input_1_load_cast int 2 regular  }
	{ input_1_load_1_cast int 2 regular  }
	{ input_1_load_2_cast int 2 regular  }
	{ input_1_load_3_cast int 2 regular  }
	{ input_1_load_4_cast int 2 regular  }
	{ input_1_load_5_cast int 2 regular  }
	{ input_1_load_6_cast int 2 regular  }
	{ input_1_load_7_cast int 2 regular  }
	{ input_1_load_8_cast int 2 regular  }
	{ input_1_load_9_cast int 2 regular  }
	{ input_1_load_10_cast int 2 regular  }
	{ input_1_load_11_cast int 2 regular  }
	{ input_1_load_12_cast int 2 regular  }
	{ input_1_load_13_cast int 2 regular  }
	{ input_1_load_14_cast int 2 regular  }
	{ input_1_load_15_cast int 2 regular  }
	{ input_1_load_16_cast int 2 regular  }
	{ input_1_load_17_cast int 2 regular  }
	{ input_1_load_18_cast int 2 regular  }
	{ input_1_load_19_cast int 2 regular  }
	{ input_1_load_20_cast int 2 regular  }
	{ input_1_load_21_cast int 2 regular  }
	{ input_1_load_22_cast int 2 regular  }
	{ input_1_load_23_cast int 2 regular  }
	{ input_1_load_24_cast int 2 regular  }
	{ input_1_load_25_cast int 2 regular  }
	{ input_1_load_26_cast int 2 regular  }
	{ input_1_load_27_cast int 2 regular  }
	{ input_1_load_28_cast int 2 regular  }
	{ input_1_load_29_cast int 2 regular  }
	{ input_1_load_30_cast int 2 regular  }
	{ input_1_load_31_cast int 2 regular  }
	{ input_1_load_32_cast int 2 regular  }
	{ input_1_load_33_cast int 2 regular  }
	{ input_1_load_34_cast int 2 regular  }
	{ input_1_load_35_cast int 2 regular  }
	{ input_1_load_36_cast int 2 regular  }
	{ input_1_load_37_cast int 2 regular  }
	{ input_1_load_38_cast int 2 regular  }
	{ input_1_load_39_cast int 2 regular  }
	{ input_1_load_40_cast int 2 regular  }
	{ input_1_load_41_cast int 2 regular  }
	{ input_1_load_42_cast int 2 regular  }
	{ input_1_load_43_cast int 2 regular  }
	{ input_1_load_44_cast int 2 regular  }
	{ input_1_load_45_cast int 2 regular  }
	{ input_1_load_46_cast int 2 regular  }
	{ input_1_load_47_cast int 2 regular  }
	{ input_1_load_48_cast int 2 regular  }
	{ input_1_load_49_cast int 2 regular  }
	{ input_1_load_50_cast int 2 regular  }
	{ input_1_load_51_cast int 2 regular  }
	{ input_1_load_52_cast int 2 regular  }
	{ input_1_load_53_cast int 2 regular  }
	{ input_1_load_54_cast int 2 regular  }
	{ input_1_load_55_cast int 2 regular  }
	{ input_1_load_56_cast int 2 regular  }
	{ input_1_load_57_cast int 2 regular  }
	{ input_1_load_58_cast int 2 regular  }
	{ input_1_load_59_cast int 2 regular  }
	{ input_1_load_60_cast int 2 regular  }
	{ input_1_load_61_cast int 2 regular  }
	{ input_1_load_62_cast int 2 regular  }
	{ sext_ln28_2 int 2 regular  }
	{ hidden_neg int 2 regular {array 32 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "W1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_1_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_2_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_3_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_4_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_5_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_6_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_7_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_8_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_9_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_10_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_11_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_12_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_13_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_14_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_15_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_16_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_17_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_18_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_19_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_20_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_21_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_22_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_23_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_24_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_25_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_26_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_27_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_28_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_29_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_30_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_31_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_32_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_33_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_34_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_35_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_36_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_37_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_38_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_39_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_40_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_41_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_42_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_43_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_44_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_45_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_46_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_47_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_48_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_49_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_50_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_51_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_52_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_53_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_54_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_55_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_56_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_57_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_58_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_59_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_60_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_61_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_load_62_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln28_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_neg", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 121
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_WEIGHTS_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_WEIGHTS_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_WEIGHTS_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_WEIGHTS_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_WEIGHTS_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_WEIGHTS_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_WEIGHTS_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_WEIGHTS_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ W1 sc_in sc_lv 64 signal 1 } 
	{ input_1_load_cast sc_in sc_lv 2 signal 2 } 
	{ input_1_load_1_cast sc_in sc_lv 2 signal 3 } 
	{ input_1_load_2_cast sc_in sc_lv 2 signal 4 } 
	{ input_1_load_3_cast sc_in sc_lv 2 signal 5 } 
	{ input_1_load_4_cast sc_in sc_lv 2 signal 6 } 
	{ input_1_load_5_cast sc_in sc_lv 2 signal 7 } 
	{ input_1_load_6_cast sc_in sc_lv 2 signal 8 } 
	{ input_1_load_7_cast sc_in sc_lv 2 signal 9 } 
	{ input_1_load_8_cast sc_in sc_lv 2 signal 10 } 
	{ input_1_load_9_cast sc_in sc_lv 2 signal 11 } 
	{ input_1_load_10_cast sc_in sc_lv 2 signal 12 } 
	{ input_1_load_11_cast sc_in sc_lv 2 signal 13 } 
	{ input_1_load_12_cast sc_in sc_lv 2 signal 14 } 
	{ input_1_load_13_cast sc_in sc_lv 2 signal 15 } 
	{ input_1_load_14_cast sc_in sc_lv 2 signal 16 } 
	{ input_1_load_15_cast sc_in sc_lv 2 signal 17 } 
	{ input_1_load_16_cast sc_in sc_lv 2 signal 18 } 
	{ input_1_load_17_cast sc_in sc_lv 2 signal 19 } 
	{ input_1_load_18_cast sc_in sc_lv 2 signal 20 } 
	{ input_1_load_19_cast sc_in sc_lv 2 signal 21 } 
	{ input_1_load_20_cast sc_in sc_lv 2 signal 22 } 
	{ input_1_load_21_cast sc_in sc_lv 2 signal 23 } 
	{ input_1_load_22_cast sc_in sc_lv 2 signal 24 } 
	{ input_1_load_23_cast sc_in sc_lv 2 signal 25 } 
	{ input_1_load_24_cast sc_in sc_lv 2 signal 26 } 
	{ input_1_load_25_cast sc_in sc_lv 2 signal 27 } 
	{ input_1_load_26_cast sc_in sc_lv 2 signal 28 } 
	{ input_1_load_27_cast sc_in sc_lv 2 signal 29 } 
	{ input_1_load_28_cast sc_in sc_lv 2 signal 30 } 
	{ input_1_load_29_cast sc_in sc_lv 2 signal 31 } 
	{ input_1_load_30_cast sc_in sc_lv 2 signal 32 } 
	{ input_1_load_31_cast sc_in sc_lv 2 signal 33 } 
	{ input_1_load_32_cast sc_in sc_lv 2 signal 34 } 
	{ input_1_load_33_cast sc_in sc_lv 2 signal 35 } 
	{ input_1_load_34_cast sc_in sc_lv 2 signal 36 } 
	{ input_1_load_35_cast sc_in sc_lv 2 signal 37 } 
	{ input_1_load_36_cast sc_in sc_lv 2 signal 38 } 
	{ input_1_load_37_cast sc_in sc_lv 2 signal 39 } 
	{ input_1_load_38_cast sc_in sc_lv 2 signal 40 } 
	{ input_1_load_39_cast sc_in sc_lv 2 signal 41 } 
	{ input_1_load_40_cast sc_in sc_lv 2 signal 42 } 
	{ input_1_load_41_cast sc_in sc_lv 2 signal 43 } 
	{ input_1_load_42_cast sc_in sc_lv 2 signal 44 } 
	{ input_1_load_43_cast sc_in sc_lv 2 signal 45 } 
	{ input_1_load_44_cast sc_in sc_lv 2 signal 46 } 
	{ input_1_load_45_cast sc_in sc_lv 2 signal 47 } 
	{ input_1_load_46_cast sc_in sc_lv 2 signal 48 } 
	{ input_1_load_47_cast sc_in sc_lv 2 signal 49 } 
	{ input_1_load_48_cast sc_in sc_lv 2 signal 50 } 
	{ input_1_load_49_cast sc_in sc_lv 2 signal 51 } 
	{ input_1_load_50_cast sc_in sc_lv 2 signal 52 } 
	{ input_1_load_51_cast sc_in sc_lv 2 signal 53 } 
	{ input_1_load_52_cast sc_in sc_lv 2 signal 54 } 
	{ input_1_load_53_cast sc_in sc_lv 2 signal 55 } 
	{ input_1_load_54_cast sc_in sc_lv 2 signal 56 } 
	{ input_1_load_55_cast sc_in sc_lv 2 signal 57 } 
	{ input_1_load_56_cast sc_in sc_lv 2 signal 58 } 
	{ input_1_load_57_cast sc_in sc_lv 2 signal 59 } 
	{ input_1_load_58_cast sc_in sc_lv 2 signal 60 } 
	{ input_1_load_59_cast sc_in sc_lv 2 signal 61 } 
	{ input_1_load_60_cast sc_in sc_lv 2 signal 62 } 
	{ input_1_load_61_cast sc_in sc_lv 2 signal 63 } 
	{ input_1_load_62_cast sc_in sc_lv 2 signal 64 } 
	{ sext_ln28_2 sc_in sc_lv 2 signal 65 } 
	{ hidden_neg_address0 sc_out sc_lv 5 signal 66 } 
	{ hidden_neg_ce0 sc_out sc_logic 1 signal 66 } 
	{ hidden_neg_we0 sc_out sc_logic 1 signal 66 } 
	{ hidden_neg_d0 sc_out sc_lv 2 signal 66 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "W1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1", "role": "default" }} , 
 	{ "name": "input_1_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_cast", "role": "default" }} , 
 	{ "name": "input_1_load_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_1_cast", "role": "default" }} , 
 	{ "name": "input_1_load_2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_2_cast", "role": "default" }} , 
 	{ "name": "input_1_load_3_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_3_cast", "role": "default" }} , 
 	{ "name": "input_1_load_4_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_4_cast", "role": "default" }} , 
 	{ "name": "input_1_load_5_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_5_cast", "role": "default" }} , 
 	{ "name": "input_1_load_6_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_6_cast", "role": "default" }} , 
 	{ "name": "input_1_load_7_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_7_cast", "role": "default" }} , 
 	{ "name": "input_1_load_8_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_8_cast", "role": "default" }} , 
 	{ "name": "input_1_load_9_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_9_cast", "role": "default" }} , 
 	{ "name": "input_1_load_10_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_10_cast", "role": "default" }} , 
 	{ "name": "input_1_load_11_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_11_cast", "role": "default" }} , 
 	{ "name": "input_1_load_12_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_12_cast", "role": "default" }} , 
 	{ "name": "input_1_load_13_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_13_cast", "role": "default" }} , 
 	{ "name": "input_1_load_14_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_14_cast", "role": "default" }} , 
 	{ "name": "input_1_load_15_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_15_cast", "role": "default" }} , 
 	{ "name": "input_1_load_16_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_16_cast", "role": "default" }} , 
 	{ "name": "input_1_load_17_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_17_cast", "role": "default" }} , 
 	{ "name": "input_1_load_18_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_18_cast", "role": "default" }} , 
 	{ "name": "input_1_load_19_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_19_cast", "role": "default" }} , 
 	{ "name": "input_1_load_20_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_20_cast", "role": "default" }} , 
 	{ "name": "input_1_load_21_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_21_cast", "role": "default" }} , 
 	{ "name": "input_1_load_22_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_22_cast", "role": "default" }} , 
 	{ "name": "input_1_load_23_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_23_cast", "role": "default" }} , 
 	{ "name": "input_1_load_24_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_24_cast", "role": "default" }} , 
 	{ "name": "input_1_load_25_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_25_cast", "role": "default" }} , 
 	{ "name": "input_1_load_26_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_26_cast", "role": "default" }} , 
 	{ "name": "input_1_load_27_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_27_cast", "role": "default" }} , 
 	{ "name": "input_1_load_28_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_28_cast", "role": "default" }} , 
 	{ "name": "input_1_load_29_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_29_cast", "role": "default" }} , 
 	{ "name": "input_1_load_30_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_30_cast", "role": "default" }} , 
 	{ "name": "input_1_load_31_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_31_cast", "role": "default" }} , 
 	{ "name": "input_1_load_32_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_32_cast", "role": "default" }} , 
 	{ "name": "input_1_load_33_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_33_cast", "role": "default" }} , 
 	{ "name": "input_1_load_34_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_34_cast", "role": "default" }} , 
 	{ "name": "input_1_load_35_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_35_cast", "role": "default" }} , 
 	{ "name": "input_1_load_36_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_36_cast", "role": "default" }} , 
 	{ "name": "input_1_load_37_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_37_cast", "role": "default" }} , 
 	{ "name": "input_1_load_38_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_38_cast", "role": "default" }} , 
 	{ "name": "input_1_load_39_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_39_cast", "role": "default" }} , 
 	{ "name": "input_1_load_40_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_40_cast", "role": "default" }} , 
 	{ "name": "input_1_load_41_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_41_cast", "role": "default" }} , 
 	{ "name": "input_1_load_42_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_42_cast", "role": "default" }} , 
 	{ "name": "input_1_load_43_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_43_cast", "role": "default" }} , 
 	{ "name": "input_1_load_44_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_44_cast", "role": "default" }} , 
 	{ "name": "input_1_load_45_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_45_cast", "role": "default" }} , 
 	{ "name": "input_1_load_46_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_46_cast", "role": "default" }} , 
 	{ "name": "input_1_load_47_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_47_cast", "role": "default" }} , 
 	{ "name": "input_1_load_48_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_48_cast", "role": "default" }} , 
 	{ "name": "input_1_load_49_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_49_cast", "role": "default" }} , 
 	{ "name": "input_1_load_50_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_50_cast", "role": "default" }} , 
 	{ "name": "input_1_load_51_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_51_cast", "role": "default" }} , 
 	{ "name": "input_1_load_52_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_52_cast", "role": "default" }} , 
 	{ "name": "input_1_load_53_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_53_cast", "role": "default" }} , 
 	{ "name": "input_1_load_54_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_54_cast", "role": "default" }} , 
 	{ "name": "input_1_load_55_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_55_cast", "role": "default" }} , 
 	{ "name": "input_1_load_56_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_56_cast", "role": "default" }} , 
 	{ "name": "input_1_load_57_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_57_cast", "role": "default" }} , 
 	{ "name": "input_1_load_58_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_58_cast", "role": "default" }} , 
 	{ "name": "input_1_load_59_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_59_cast", "role": "default" }} , 
 	{ "name": "input_1_load_60_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_60_cast", "role": "default" }} , 
 	{ "name": "input_1_load_61_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_61_cast", "role": "default" }} , 
 	{ "name": "input_1_load_62_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1_load_62_cast", "role": "default" }} , 
 	{ "name": "sext_ln28_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln28_2", "role": "default" }} , 
 	{ "name": "hidden_neg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hidden_neg", "role": "address0" }} , 
 	{ "name": "hidden_neg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hidden_neg", "role": "ce0" }} , 
 	{ "name": "hidden_neg_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hidden_neg", "role": "we0" }} , 
 	{ "name": "hidden_neg_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_neg", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_28_11",
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
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_30_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_31_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_32_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_33_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_34_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_35_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_36_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_37_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_38_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_39_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_40_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_41_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_42_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_43_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_44_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_45_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_46_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_47_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_48_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_49_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_50_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_51_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_52_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_53_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_54_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_55_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_57_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_58_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_59_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_60_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_61_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_load_62_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln28_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U205", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U206", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U207", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U208", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U209", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U210", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U211", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U212", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U213", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U214", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U215", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U216", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U217", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U218", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U219", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U220", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U221", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U222", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U223", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U224", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U225", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U226", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U227", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U228", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U229", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U230", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U231", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U232", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U233", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U234", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U235", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U236", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U237", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U238", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U239", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U240", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U241", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U242", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U243", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U244", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U245", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U246", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U247", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U248", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U249", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U250", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U251", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U252", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U253", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U254", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U255", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U256", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U257", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U258", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U259", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U260", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U261", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U262", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U263", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U264", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U265", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U266", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U267", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U268", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step_Pipeline_VITIS_LOOP_28_11 {
		WEIGHTS {Type I LastRead 64 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}
		input_1_load_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_1_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_2_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_3_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_4_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_5_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_6_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_7_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_8_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_9_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_10_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_11_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_12_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_13_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_14_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_15_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_16_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_17_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_18_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_19_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_20_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_21_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_22_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_23_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_24_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_25_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_26_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_27_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_28_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_29_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_30_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_31_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_32_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_33_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_34_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_35_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_36_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_37_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_38_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_39_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_40_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_41_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_42_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_43_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_44_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_45_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_46_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_47_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_48_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_49_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_50_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_51_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_52_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_53_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_54_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_55_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_56_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_57_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_58_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_59_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_60_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_61_cast {Type I LastRead 0 FirstWrite -1}
		input_1_load_62_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln28_2 {Type I LastRead 0 FirstWrite -1}
		hidden_neg {Type O LastRead -1 FirstWrite 71}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2057", "Max" : "2057"}
	, {"Name" : "Interval", "Min" : "2057", "Max" : "2057"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	W1 { ap_none {  { W1 in_data 0 64 } } }
	input_1_load_cast { ap_none {  { input_1_load_cast in_data 0 2 } } }
	input_1_load_1_cast { ap_none {  { input_1_load_1_cast in_data 0 2 } } }
	input_1_load_2_cast { ap_none {  { input_1_load_2_cast in_data 0 2 } } }
	input_1_load_3_cast { ap_none {  { input_1_load_3_cast in_data 0 2 } } }
	input_1_load_4_cast { ap_none {  { input_1_load_4_cast in_data 0 2 } } }
	input_1_load_5_cast { ap_none {  { input_1_load_5_cast in_data 0 2 } } }
	input_1_load_6_cast { ap_none {  { input_1_load_6_cast in_data 0 2 } } }
	input_1_load_7_cast { ap_none {  { input_1_load_7_cast in_data 0 2 } } }
	input_1_load_8_cast { ap_none {  { input_1_load_8_cast in_data 0 2 } } }
	input_1_load_9_cast { ap_none {  { input_1_load_9_cast in_data 0 2 } } }
	input_1_load_10_cast { ap_none {  { input_1_load_10_cast in_data 0 2 } } }
	input_1_load_11_cast { ap_none {  { input_1_load_11_cast in_data 0 2 } } }
	input_1_load_12_cast { ap_none {  { input_1_load_12_cast in_data 0 2 } } }
	input_1_load_13_cast { ap_none {  { input_1_load_13_cast in_data 0 2 } } }
	input_1_load_14_cast { ap_none {  { input_1_load_14_cast in_data 0 2 } } }
	input_1_load_15_cast { ap_none {  { input_1_load_15_cast in_data 0 2 } } }
	input_1_load_16_cast { ap_none {  { input_1_load_16_cast in_data 0 2 } } }
	input_1_load_17_cast { ap_none {  { input_1_load_17_cast in_data 0 2 } } }
	input_1_load_18_cast { ap_none {  { input_1_load_18_cast in_data 0 2 } } }
	input_1_load_19_cast { ap_none {  { input_1_load_19_cast in_data 0 2 } } }
	input_1_load_20_cast { ap_none {  { input_1_load_20_cast in_data 0 2 } } }
	input_1_load_21_cast { ap_none {  { input_1_load_21_cast in_data 0 2 } } }
	input_1_load_22_cast { ap_none {  { input_1_load_22_cast in_data 0 2 } } }
	input_1_load_23_cast { ap_none {  { input_1_load_23_cast in_data 0 2 } } }
	input_1_load_24_cast { ap_none {  { input_1_load_24_cast in_data 0 2 } } }
	input_1_load_25_cast { ap_none {  { input_1_load_25_cast in_data 0 2 } } }
	input_1_load_26_cast { ap_none {  { input_1_load_26_cast in_data 0 2 } } }
	input_1_load_27_cast { ap_none {  { input_1_load_27_cast in_data 0 2 } } }
	input_1_load_28_cast { ap_none {  { input_1_load_28_cast in_data 0 2 } } }
	input_1_load_29_cast { ap_none {  { input_1_load_29_cast in_data 0 2 } } }
	input_1_load_30_cast { ap_none {  { input_1_load_30_cast in_data 0 2 } } }
	input_1_load_31_cast { ap_none {  { input_1_load_31_cast in_data 0 2 } } }
	input_1_load_32_cast { ap_none {  { input_1_load_32_cast in_data 0 2 } } }
	input_1_load_33_cast { ap_none {  { input_1_load_33_cast in_data 0 2 } } }
	input_1_load_34_cast { ap_none {  { input_1_load_34_cast in_data 0 2 } } }
	input_1_load_35_cast { ap_none {  { input_1_load_35_cast in_data 0 2 } } }
	input_1_load_36_cast { ap_none {  { input_1_load_36_cast in_data 0 2 } } }
	input_1_load_37_cast { ap_none {  { input_1_load_37_cast in_data 0 2 } } }
	input_1_load_38_cast { ap_none {  { input_1_load_38_cast in_data 0 2 } } }
	input_1_load_39_cast { ap_none {  { input_1_load_39_cast in_data 0 2 } } }
	input_1_load_40_cast { ap_none {  { input_1_load_40_cast in_data 0 2 } } }
	input_1_load_41_cast { ap_none {  { input_1_load_41_cast in_data 0 2 } } }
	input_1_load_42_cast { ap_none {  { input_1_load_42_cast in_data 0 2 } } }
	input_1_load_43_cast { ap_none {  { input_1_load_43_cast in_data 0 2 } } }
	input_1_load_44_cast { ap_none {  { input_1_load_44_cast in_data 0 2 } } }
	input_1_load_45_cast { ap_none {  { input_1_load_45_cast in_data 0 2 } } }
	input_1_load_46_cast { ap_none {  { input_1_load_46_cast in_data 0 2 } } }
	input_1_load_47_cast { ap_none {  { input_1_load_47_cast in_data 0 2 } } }
	input_1_load_48_cast { ap_none {  { input_1_load_48_cast in_data 0 2 } } }
	input_1_load_49_cast { ap_none {  { input_1_load_49_cast in_data 0 2 } } }
	input_1_load_50_cast { ap_none {  { input_1_load_50_cast in_data 0 2 } } }
	input_1_load_51_cast { ap_none {  { input_1_load_51_cast in_data 0 2 } } }
	input_1_load_52_cast { ap_none {  { input_1_load_52_cast in_data 0 2 } } }
	input_1_load_53_cast { ap_none {  { input_1_load_53_cast in_data 0 2 } } }
	input_1_load_54_cast { ap_none {  { input_1_load_54_cast in_data 0 2 } } }
	input_1_load_55_cast { ap_none {  { input_1_load_55_cast in_data 0 2 } } }
	input_1_load_56_cast { ap_none {  { input_1_load_56_cast in_data 0 2 } } }
	input_1_load_57_cast { ap_none {  { input_1_load_57_cast in_data 0 2 } } }
	input_1_load_58_cast { ap_none {  { input_1_load_58_cast in_data 0 2 } } }
	input_1_load_59_cast { ap_none {  { input_1_load_59_cast in_data 0 2 } } }
	input_1_load_60_cast { ap_none {  { input_1_load_60_cast in_data 0 2 } } }
	input_1_load_61_cast { ap_none {  { input_1_load_61_cast in_data 0 2 } } }
	input_1_load_62_cast { ap_none {  { input_1_load_62_cast in_data 0 2 } } }
	sext_ln28_2 { ap_none {  { sext_ln28_2 in_data 0 2 } } }
	hidden_neg { ap_memory {  { hidden_neg_address0 mem_address 1 5 }  { hidden_neg_ce0 mem_ce 1 1 }  { hidden_neg_we0 mem_we 1 1 }  { hidden_neg_d0 mem_din 1 2 } } }
}
