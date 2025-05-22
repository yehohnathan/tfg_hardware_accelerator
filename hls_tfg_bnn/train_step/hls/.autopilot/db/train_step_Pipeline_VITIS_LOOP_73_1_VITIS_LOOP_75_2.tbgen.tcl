set moduleName train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2
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
set cdfgNum 9
set C_modelName {train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 2}  }
	{ out_pos_load int 2 regular  }
	{ out_pos_1_load int 2 regular  }
	{ out_pos_2_load int 2 regular  }
	{ out_pos_3_load int 2 regular  }
	{ out_pos_4_load int 2 regular  }
	{ out_pos_5_load int 2 regular  }
	{ out_pos_6_load int 2 regular  }
	{ out_pos_7_load int 2 regular  }
	{ out_pos_8_load int 2 regular  }
	{ out_pos_9_load int 2 regular  }
	{ out_neg_load int 2 regular  }
	{ out_neg_1_load int 2 regular  }
	{ out_neg_2_load int 2 regular  }
	{ out_neg_3_load int 2 regular  }
	{ out_neg_4_load int 2 regular  }
	{ out_neg_5_load int 2 regular  }
	{ out_neg_6_load int 2 regular  }
	{ out_neg_7_load int 2 regular  }
	{ out_neg_8_load int 2 regular  }
	{ out_neg_9_load int 2 regular  }
	{ W1 int 64 regular  }
	{ in_pos int 2 regular  }
	{ in_pos_1 int 2 regular  }
	{ in_pos_2 int 2 regular  }
	{ in_pos_3 int 2 regular  }
	{ in_pos_4 int 2 regular  }
	{ in_pos_5 int 2 regular  }
	{ in_pos_6 int 2 regular  }
	{ in_pos_7 int 2 regular  }
	{ in_pos_8 int 2 regular  }
	{ in_pos_9 int 2 regular  }
	{ in_pos_10 int 2 regular  }
	{ in_pos_11 int 2 regular  }
	{ in_pos_12 int 2 regular  }
	{ in_pos_13 int 2 regular  }
	{ in_pos_14 int 2 regular  }
	{ in_pos_15 int 2 regular  }
	{ in_pos_16 int 2 regular  }
	{ in_pos_17 int 2 regular  }
	{ in_pos_18 int 2 regular  }
	{ in_pos_19 int 2 regular  }
	{ in_pos_20 int 2 regular  }
	{ in_pos_21 int 2 regular  }
	{ in_pos_22 int 2 regular  }
	{ in_pos_23 int 2 regular  }
	{ in_pos_24 int 2 regular  }
	{ in_pos_25 int 2 regular  }
	{ in_pos_26 int 2 regular  }
	{ in_pos_27 int 2 regular  }
	{ in_pos_28 int 2 regular  }
	{ in_pos_29 int 2 regular  }
	{ in_pos_30 int 2 regular  }
	{ in_pos_31 int 2 regular  }
	{ in_pos_32 int 2 regular  }
	{ in_pos_33 int 2 regular  }
	{ in_pos_34 int 2 regular  }
	{ in_pos_35 int 2 regular  }
	{ in_pos_36 int 2 regular  }
	{ in_pos_37 int 2 regular  }
	{ in_pos_38 int 2 regular  }
	{ in_pos_39 int 2 regular  }
	{ in_pos_40 int 2 regular  }
	{ in_pos_41 int 2 regular  }
	{ in_pos_42 int 2 regular  }
	{ in_pos_43 int 2 regular  }
	{ in_pos_44 int 2 regular  }
	{ in_pos_45 int 2 regular  }
	{ in_pos_46 int 2 regular  }
	{ in_pos_47 int 2 regular  }
	{ in_pos_48 int 2 regular  }
	{ in_pos_49 int 2 regular  }
	{ in_pos_50 int 2 regular  }
	{ in_pos_51 int 2 regular  }
	{ in_pos_52 int 2 regular  }
	{ in_pos_53 int 2 regular  }
	{ in_pos_54 int 2 regular  }
	{ in_pos_55 int 2 regular  }
	{ in_pos_56 int 2 regular  }
	{ in_pos_57 int 2 regular  }
	{ in_pos_58 int 2 regular  }
	{ in_pos_59 int 2 regular  }
	{ in_pos_60 int 2 regular  }
	{ in_pos_61 int 2 regular  }
	{ in_pos_62 int 2 regular  }
	{ in_pos_63 int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "out_pos_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_4_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_5_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_6_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_7_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_8_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_9_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_1_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_2_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_3_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_4_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_5_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_6_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_7_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_8_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_9_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_4", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_5", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_6", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_7", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_8", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_9", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_10", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_11", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_12", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_13", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_14", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_15", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_16", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_17", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_18", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_19", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_20", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_21", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_22", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_23", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_24", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_25", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_26", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_27", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_28", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_29", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_30", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_31", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_32", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_33", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_34", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_35", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_36", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_37", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_38", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_39", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_40", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_41", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_42", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_43", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_44", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_45", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_46", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_47", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_48", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_49", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_50", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_51", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_52", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_53", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_54", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_55", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_56", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_57", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_58", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_59", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_60", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_61", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_62", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_pos_63", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 137
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
	{ out_pos_load sc_in sc_lv 2 signal 1 } 
	{ out_pos_1_load sc_in sc_lv 2 signal 2 } 
	{ out_pos_2_load sc_in sc_lv 2 signal 3 } 
	{ out_pos_3_load sc_in sc_lv 2 signal 4 } 
	{ out_pos_4_load sc_in sc_lv 2 signal 5 } 
	{ out_pos_5_load sc_in sc_lv 2 signal 6 } 
	{ out_pos_6_load sc_in sc_lv 2 signal 7 } 
	{ out_pos_7_load sc_in sc_lv 2 signal 8 } 
	{ out_pos_8_load sc_in sc_lv 2 signal 9 } 
	{ out_pos_9_load sc_in sc_lv 2 signal 10 } 
	{ out_neg_load sc_in sc_lv 2 signal 11 } 
	{ out_neg_1_load sc_in sc_lv 2 signal 12 } 
	{ out_neg_2_load sc_in sc_lv 2 signal 13 } 
	{ out_neg_3_load sc_in sc_lv 2 signal 14 } 
	{ out_neg_4_load sc_in sc_lv 2 signal 15 } 
	{ out_neg_5_load sc_in sc_lv 2 signal 16 } 
	{ out_neg_6_load sc_in sc_lv 2 signal 17 } 
	{ out_neg_7_load sc_in sc_lv 2 signal 18 } 
	{ out_neg_8_load sc_in sc_lv 2 signal 19 } 
	{ out_neg_9_load sc_in sc_lv 2 signal 20 } 
	{ W1 sc_in sc_lv 64 signal 21 } 
	{ in_pos sc_in sc_lv 2 signal 22 } 
	{ in_pos_1 sc_in sc_lv 2 signal 23 } 
	{ in_pos_2 sc_in sc_lv 2 signal 24 } 
	{ in_pos_3 sc_in sc_lv 2 signal 25 } 
	{ in_pos_4 sc_in sc_lv 2 signal 26 } 
	{ in_pos_5 sc_in sc_lv 2 signal 27 } 
	{ in_pos_6 sc_in sc_lv 2 signal 28 } 
	{ in_pos_7 sc_in sc_lv 2 signal 29 } 
	{ in_pos_8 sc_in sc_lv 2 signal 30 } 
	{ in_pos_9 sc_in sc_lv 2 signal 31 } 
	{ in_pos_10 sc_in sc_lv 2 signal 32 } 
	{ in_pos_11 sc_in sc_lv 2 signal 33 } 
	{ in_pos_12 sc_in sc_lv 2 signal 34 } 
	{ in_pos_13 sc_in sc_lv 2 signal 35 } 
	{ in_pos_14 sc_in sc_lv 2 signal 36 } 
	{ in_pos_15 sc_in sc_lv 2 signal 37 } 
	{ in_pos_16 sc_in sc_lv 2 signal 38 } 
	{ in_pos_17 sc_in sc_lv 2 signal 39 } 
	{ in_pos_18 sc_in sc_lv 2 signal 40 } 
	{ in_pos_19 sc_in sc_lv 2 signal 41 } 
	{ in_pos_20 sc_in sc_lv 2 signal 42 } 
	{ in_pos_21 sc_in sc_lv 2 signal 43 } 
	{ in_pos_22 sc_in sc_lv 2 signal 44 } 
	{ in_pos_23 sc_in sc_lv 2 signal 45 } 
	{ in_pos_24 sc_in sc_lv 2 signal 46 } 
	{ in_pos_25 sc_in sc_lv 2 signal 47 } 
	{ in_pos_26 sc_in sc_lv 2 signal 48 } 
	{ in_pos_27 sc_in sc_lv 2 signal 49 } 
	{ in_pos_28 sc_in sc_lv 2 signal 50 } 
	{ in_pos_29 sc_in sc_lv 2 signal 51 } 
	{ in_pos_30 sc_in sc_lv 2 signal 52 } 
	{ in_pos_31 sc_in sc_lv 2 signal 53 } 
	{ in_pos_32 sc_in sc_lv 2 signal 54 } 
	{ in_pos_33 sc_in sc_lv 2 signal 55 } 
	{ in_pos_34 sc_in sc_lv 2 signal 56 } 
	{ in_pos_35 sc_in sc_lv 2 signal 57 } 
	{ in_pos_36 sc_in sc_lv 2 signal 58 } 
	{ in_pos_37 sc_in sc_lv 2 signal 59 } 
	{ in_pos_38 sc_in sc_lv 2 signal 60 } 
	{ in_pos_39 sc_in sc_lv 2 signal 61 } 
	{ in_pos_40 sc_in sc_lv 2 signal 62 } 
	{ in_pos_41 sc_in sc_lv 2 signal 63 } 
	{ in_pos_42 sc_in sc_lv 2 signal 64 } 
	{ in_pos_43 sc_in sc_lv 2 signal 65 } 
	{ in_pos_44 sc_in sc_lv 2 signal 66 } 
	{ in_pos_45 sc_in sc_lv 2 signal 67 } 
	{ in_pos_46 sc_in sc_lv 2 signal 68 } 
	{ in_pos_47 sc_in sc_lv 2 signal 69 } 
	{ in_pos_48 sc_in sc_lv 2 signal 70 } 
	{ in_pos_49 sc_in sc_lv 2 signal 71 } 
	{ in_pos_50 sc_in sc_lv 2 signal 72 } 
	{ in_pos_51 sc_in sc_lv 2 signal 73 } 
	{ in_pos_52 sc_in sc_lv 2 signal 74 } 
	{ in_pos_53 sc_in sc_lv 2 signal 75 } 
	{ in_pos_54 sc_in sc_lv 2 signal 76 } 
	{ in_pos_55 sc_in sc_lv 2 signal 77 } 
	{ in_pos_56 sc_in sc_lv 2 signal 78 } 
	{ in_pos_57 sc_in sc_lv 2 signal 79 } 
	{ in_pos_58 sc_in sc_lv 2 signal 80 } 
	{ in_pos_59 sc_in sc_lv 2 signal 81 } 
	{ in_pos_60 sc_in sc_lv 2 signal 82 } 
	{ in_pos_61 sc_in sc_lv 2 signal 83 } 
	{ in_pos_62 sc_in sc_lv 2 signal 84 } 
	{ in_pos_63 sc_in sc_lv 2 signal 85 } 
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
 	{ "name": "out_pos_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_load", "role": "default" }} , 
 	{ "name": "out_pos_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_1_load", "role": "default" }} , 
 	{ "name": "out_pos_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_2_load", "role": "default" }} , 
 	{ "name": "out_pos_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_3_load", "role": "default" }} , 
 	{ "name": "out_pos_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_4_load", "role": "default" }} , 
 	{ "name": "out_pos_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_5_load", "role": "default" }} , 
 	{ "name": "out_pos_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_6_load", "role": "default" }} , 
 	{ "name": "out_pos_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_7_load", "role": "default" }} , 
 	{ "name": "out_pos_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_8_load", "role": "default" }} , 
 	{ "name": "out_pos_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_9_load", "role": "default" }} , 
 	{ "name": "out_neg_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_load", "role": "default" }} , 
 	{ "name": "out_neg_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_1_load", "role": "default" }} , 
 	{ "name": "out_neg_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_2_load", "role": "default" }} , 
 	{ "name": "out_neg_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_3_load", "role": "default" }} , 
 	{ "name": "out_neg_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_4_load", "role": "default" }} , 
 	{ "name": "out_neg_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_5_load", "role": "default" }} , 
 	{ "name": "out_neg_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_6_load", "role": "default" }} , 
 	{ "name": "out_neg_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_7_load", "role": "default" }} , 
 	{ "name": "out_neg_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_8_load", "role": "default" }} , 
 	{ "name": "out_neg_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_9_load", "role": "default" }} , 
 	{ "name": "W1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1", "role": "default" }} , 
 	{ "name": "in_pos", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos", "role": "default" }} , 
 	{ "name": "in_pos_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_1", "role": "default" }} , 
 	{ "name": "in_pos_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_2", "role": "default" }} , 
 	{ "name": "in_pos_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_3", "role": "default" }} , 
 	{ "name": "in_pos_4", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_4", "role": "default" }} , 
 	{ "name": "in_pos_5", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_5", "role": "default" }} , 
 	{ "name": "in_pos_6", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_6", "role": "default" }} , 
 	{ "name": "in_pos_7", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_7", "role": "default" }} , 
 	{ "name": "in_pos_8", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_8", "role": "default" }} , 
 	{ "name": "in_pos_9", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_9", "role": "default" }} , 
 	{ "name": "in_pos_10", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_10", "role": "default" }} , 
 	{ "name": "in_pos_11", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_11", "role": "default" }} , 
 	{ "name": "in_pos_12", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_12", "role": "default" }} , 
 	{ "name": "in_pos_13", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_13", "role": "default" }} , 
 	{ "name": "in_pos_14", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_14", "role": "default" }} , 
 	{ "name": "in_pos_15", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_15", "role": "default" }} , 
 	{ "name": "in_pos_16", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_16", "role": "default" }} , 
 	{ "name": "in_pos_17", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_17", "role": "default" }} , 
 	{ "name": "in_pos_18", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_18", "role": "default" }} , 
 	{ "name": "in_pos_19", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_19", "role": "default" }} , 
 	{ "name": "in_pos_20", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_20", "role": "default" }} , 
 	{ "name": "in_pos_21", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_21", "role": "default" }} , 
 	{ "name": "in_pos_22", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_22", "role": "default" }} , 
 	{ "name": "in_pos_23", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_23", "role": "default" }} , 
 	{ "name": "in_pos_24", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_24", "role": "default" }} , 
 	{ "name": "in_pos_25", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_25", "role": "default" }} , 
 	{ "name": "in_pos_26", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_26", "role": "default" }} , 
 	{ "name": "in_pos_27", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_27", "role": "default" }} , 
 	{ "name": "in_pos_28", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_28", "role": "default" }} , 
 	{ "name": "in_pos_29", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_29", "role": "default" }} , 
 	{ "name": "in_pos_30", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_30", "role": "default" }} , 
 	{ "name": "in_pos_31", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_31", "role": "default" }} , 
 	{ "name": "in_pos_32", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_32", "role": "default" }} , 
 	{ "name": "in_pos_33", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_33", "role": "default" }} , 
 	{ "name": "in_pos_34", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_34", "role": "default" }} , 
 	{ "name": "in_pos_35", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_35", "role": "default" }} , 
 	{ "name": "in_pos_36", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_36", "role": "default" }} , 
 	{ "name": "in_pos_37", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_37", "role": "default" }} , 
 	{ "name": "in_pos_38", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_38", "role": "default" }} , 
 	{ "name": "in_pos_39", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_39", "role": "default" }} , 
 	{ "name": "in_pos_40", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_40", "role": "default" }} , 
 	{ "name": "in_pos_41", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_41", "role": "default" }} , 
 	{ "name": "in_pos_42", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_42", "role": "default" }} , 
 	{ "name": "in_pos_43", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_43", "role": "default" }} , 
 	{ "name": "in_pos_44", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_44", "role": "default" }} , 
 	{ "name": "in_pos_45", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_45", "role": "default" }} , 
 	{ "name": "in_pos_46", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_46", "role": "default" }} , 
 	{ "name": "in_pos_47", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_47", "role": "default" }} , 
 	{ "name": "in_pos_48", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_48", "role": "default" }} , 
 	{ "name": "in_pos_49", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_49", "role": "default" }} , 
 	{ "name": "in_pos_50", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_50", "role": "default" }} , 
 	{ "name": "in_pos_51", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_51", "role": "default" }} , 
 	{ "name": "in_pos_52", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_52", "role": "default" }} , 
 	{ "name": "in_pos_53", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_53", "role": "default" }} , 
 	{ "name": "in_pos_54", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_54", "role": "default" }} , 
 	{ "name": "in_pos_55", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_55", "role": "default" }} , 
 	{ "name": "in_pos_56", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_56", "role": "default" }} , 
 	{ "name": "in_pos_57", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_57", "role": "default" }} , 
 	{ "name": "in_pos_58", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_58", "role": "default" }} , 
 	{ "name": "in_pos_59", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_59", "role": "default" }} , 
 	{ "name": "in_pos_60", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_60", "role": "default" }} , 
 	{ "name": "in_pos_61", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_61", "role": "default" }} , 
 	{ "name": "in_pos_62", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_62", "role": "default" }} , 
 	{ "name": "in_pos_63", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_pos_63", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2067", "EstimateLatencyMax" : "2067",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_pos_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_pos_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_1_VITIS_LOOP_75_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_21_4_2_1_1_U384", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_21_4_2_1_1_U385", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_129_6_2_1_1_U386", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_3s_4_1_1_U387", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2 {
		WEIGHTS {Type IO LastRead 14 FirstWrite 13}
		out_pos_load {Type I LastRead 0 FirstWrite -1}
		out_pos_1_load {Type I LastRead 0 FirstWrite -1}
		out_pos_2_load {Type I LastRead 0 FirstWrite -1}
		out_pos_3_load {Type I LastRead 0 FirstWrite -1}
		out_pos_4_load {Type I LastRead 0 FirstWrite -1}
		out_pos_5_load {Type I LastRead 0 FirstWrite -1}
		out_pos_6_load {Type I LastRead 0 FirstWrite -1}
		out_pos_7_load {Type I LastRead 0 FirstWrite -1}
		out_pos_8_load {Type I LastRead 0 FirstWrite -1}
		out_pos_9_load {Type I LastRead 0 FirstWrite -1}
		out_neg_load {Type I LastRead 0 FirstWrite -1}
		out_neg_1_load {Type I LastRead 0 FirstWrite -1}
		out_neg_2_load {Type I LastRead 0 FirstWrite -1}
		out_neg_3_load {Type I LastRead 0 FirstWrite -1}
		out_neg_4_load {Type I LastRead 0 FirstWrite -1}
		out_neg_5_load {Type I LastRead 0 FirstWrite -1}
		out_neg_6_load {Type I LastRead 0 FirstWrite -1}
		out_neg_7_load {Type I LastRead 0 FirstWrite -1}
		out_neg_8_load {Type I LastRead 0 FirstWrite -1}
		out_neg_9_load {Type I LastRead 0 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}
		in_pos {Type I LastRead 0 FirstWrite -1}
		in_pos_1 {Type I LastRead 0 FirstWrite -1}
		in_pos_2 {Type I LastRead 0 FirstWrite -1}
		in_pos_3 {Type I LastRead 0 FirstWrite -1}
		in_pos_4 {Type I LastRead 0 FirstWrite -1}
		in_pos_5 {Type I LastRead 0 FirstWrite -1}
		in_pos_6 {Type I LastRead 0 FirstWrite -1}
		in_pos_7 {Type I LastRead 0 FirstWrite -1}
		in_pos_8 {Type I LastRead 0 FirstWrite -1}
		in_pos_9 {Type I LastRead 0 FirstWrite -1}
		in_pos_10 {Type I LastRead 0 FirstWrite -1}
		in_pos_11 {Type I LastRead 0 FirstWrite -1}
		in_pos_12 {Type I LastRead 0 FirstWrite -1}
		in_pos_13 {Type I LastRead 0 FirstWrite -1}
		in_pos_14 {Type I LastRead 0 FirstWrite -1}
		in_pos_15 {Type I LastRead 0 FirstWrite -1}
		in_pos_16 {Type I LastRead 0 FirstWrite -1}
		in_pos_17 {Type I LastRead 0 FirstWrite -1}
		in_pos_18 {Type I LastRead 0 FirstWrite -1}
		in_pos_19 {Type I LastRead 0 FirstWrite -1}
		in_pos_20 {Type I LastRead 0 FirstWrite -1}
		in_pos_21 {Type I LastRead 0 FirstWrite -1}
		in_pos_22 {Type I LastRead 0 FirstWrite -1}
		in_pos_23 {Type I LastRead 0 FirstWrite -1}
		in_pos_24 {Type I LastRead 0 FirstWrite -1}
		in_pos_25 {Type I LastRead 0 FirstWrite -1}
		in_pos_26 {Type I LastRead 0 FirstWrite -1}
		in_pos_27 {Type I LastRead 0 FirstWrite -1}
		in_pos_28 {Type I LastRead 0 FirstWrite -1}
		in_pos_29 {Type I LastRead 0 FirstWrite -1}
		in_pos_30 {Type I LastRead 0 FirstWrite -1}
		in_pos_31 {Type I LastRead 0 FirstWrite -1}
		in_pos_32 {Type I LastRead 0 FirstWrite -1}
		in_pos_33 {Type I LastRead 0 FirstWrite -1}
		in_pos_34 {Type I LastRead 0 FirstWrite -1}
		in_pos_35 {Type I LastRead 0 FirstWrite -1}
		in_pos_36 {Type I LastRead 0 FirstWrite -1}
		in_pos_37 {Type I LastRead 0 FirstWrite -1}
		in_pos_38 {Type I LastRead 0 FirstWrite -1}
		in_pos_39 {Type I LastRead 0 FirstWrite -1}
		in_pos_40 {Type I LastRead 0 FirstWrite -1}
		in_pos_41 {Type I LastRead 0 FirstWrite -1}
		in_pos_42 {Type I LastRead 0 FirstWrite -1}
		in_pos_43 {Type I LastRead 0 FirstWrite -1}
		in_pos_44 {Type I LastRead 0 FirstWrite -1}
		in_pos_45 {Type I LastRead 0 FirstWrite -1}
		in_pos_46 {Type I LastRead 0 FirstWrite -1}
		in_pos_47 {Type I LastRead 0 FirstWrite -1}
		in_pos_48 {Type I LastRead 0 FirstWrite -1}
		in_pos_49 {Type I LastRead 0 FirstWrite -1}
		in_pos_50 {Type I LastRead 0 FirstWrite -1}
		in_pos_51 {Type I LastRead 0 FirstWrite -1}
		in_pos_52 {Type I LastRead 0 FirstWrite -1}
		in_pos_53 {Type I LastRead 0 FirstWrite -1}
		in_pos_54 {Type I LastRead 0 FirstWrite -1}
		in_pos_55 {Type I LastRead 0 FirstWrite -1}
		in_pos_56 {Type I LastRead 0 FirstWrite -1}
		in_pos_57 {Type I LastRead 0 FirstWrite -1}
		in_pos_58 {Type I LastRead 0 FirstWrite -1}
		in_pos_59 {Type I LastRead 0 FirstWrite -1}
		in_pos_60 {Type I LastRead 0 FirstWrite -1}
		in_pos_61 {Type I LastRead 0 FirstWrite -1}
		in_pos_62 {Type I LastRead 0 FirstWrite -1}
		in_pos_63 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2067", "Max" : "2067"}
	, {"Name" : "Interval", "Min" : "2067", "Max" : "2067"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	out_pos_load { ap_none {  { out_pos_load in_data 0 2 } } }
	out_pos_1_load { ap_none {  { out_pos_1_load in_data 0 2 } } }
	out_pos_2_load { ap_none {  { out_pos_2_load in_data 0 2 } } }
	out_pos_3_load { ap_none {  { out_pos_3_load in_data 0 2 } } }
	out_pos_4_load { ap_none {  { out_pos_4_load in_data 0 2 } } }
	out_pos_5_load { ap_none {  { out_pos_5_load in_data 0 2 } } }
	out_pos_6_load { ap_none {  { out_pos_6_load in_data 0 2 } } }
	out_pos_7_load { ap_none {  { out_pos_7_load in_data 0 2 } } }
	out_pos_8_load { ap_none {  { out_pos_8_load in_data 0 2 } } }
	out_pos_9_load { ap_none {  { out_pos_9_load in_data 0 2 } } }
	out_neg_load { ap_none {  { out_neg_load in_data 0 2 } } }
	out_neg_1_load { ap_none {  { out_neg_1_load in_data 0 2 } } }
	out_neg_2_load { ap_none {  { out_neg_2_load in_data 0 2 } } }
	out_neg_3_load { ap_none {  { out_neg_3_load in_data 0 2 } } }
	out_neg_4_load { ap_none {  { out_neg_4_load in_data 0 2 } } }
	out_neg_5_load { ap_none {  { out_neg_5_load in_data 0 2 } } }
	out_neg_6_load { ap_none {  { out_neg_6_load in_data 0 2 } } }
	out_neg_7_load { ap_none {  { out_neg_7_load in_data 0 2 } } }
	out_neg_8_load { ap_none {  { out_neg_8_load in_data 0 2 } } }
	out_neg_9_load { ap_none {  { out_neg_9_load in_data 0 2 } } }
	W1 { ap_none {  { W1 in_data 0 64 } } }
	in_pos { ap_none {  { in_pos in_data 0 2 } } }
	in_pos_1 { ap_none {  { in_pos_1 in_data 0 2 } } }
	in_pos_2 { ap_none {  { in_pos_2 in_data 0 2 } } }
	in_pos_3 { ap_none {  { in_pos_3 in_data 0 2 } } }
	in_pos_4 { ap_none {  { in_pos_4 in_data 0 2 } } }
	in_pos_5 { ap_none {  { in_pos_5 in_data 0 2 } } }
	in_pos_6 { ap_none {  { in_pos_6 in_data 0 2 } } }
	in_pos_7 { ap_none {  { in_pos_7 in_data 0 2 } } }
	in_pos_8 { ap_none {  { in_pos_8 in_data 0 2 } } }
	in_pos_9 { ap_none {  { in_pos_9 in_data 0 2 } } }
	in_pos_10 { ap_none {  { in_pos_10 in_data 0 2 } } }
	in_pos_11 { ap_none {  { in_pos_11 in_data 0 2 } } }
	in_pos_12 { ap_none {  { in_pos_12 in_data 0 2 } } }
	in_pos_13 { ap_none {  { in_pos_13 in_data 0 2 } } }
	in_pos_14 { ap_none {  { in_pos_14 in_data 0 2 } } }
	in_pos_15 { ap_none {  { in_pos_15 in_data 0 2 } } }
	in_pos_16 { ap_none {  { in_pos_16 in_data 0 2 } } }
	in_pos_17 { ap_none {  { in_pos_17 in_data 0 2 } } }
	in_pos_18 { ap_none {  { in_pos_18 in_data 0 2 } } }
	in_pos_19 { ap_none {  { in_pos_19 in_data 0 2 } } }
	in_pos_20 { ap_none {  { in_pos_20 in_data 0 2 } } }
	in_pos_21 { ap_none {  { in_pos_21 in_data 0 2 } } }
	in_pos_22 { ap_none {  { in_pos_22 in_data 0 2 } } }
	in_pos_23 { ap_none {  { in_pos_23 in_data 0 2 } } }
	in_pos_24 { ap_none {  { in_pos_24 in_data 0 2 } } }
	in_pos_25 { ap_none {  { in_pos_25 in_data 0 2 } } }
	in_pos_26 { ap_none {  { in_pos_26 in_data 0 2 } } }
	in_pos_27 { ap_none {  { in_pos_27 in_data 0 2 } } }
	in_pos_28 { ap_none {  { in_pos_28 in_data 0 2 } } }
	in_pos_29 { ap_none {  { in_pos_29 in_data 0 2 } } }
	in_pos_30 { ap_none {  { in_pos_30 in_data 0 2 } } }
	in_pos_31 { ap_none {  { in_pos_31 in_data 0 2 } } }
	in_pos_32 { ap_none {  { in_pos_32 in_data 0 2 } } }
	in_pos_33 { ap_none {  { in_pos_33 in_data 0 2 } } }
	in_pos_34 { ap_none {  { in_pos_34 in_data 0 2 } } }
	in_pos_35 { ap_none {  { in_pos_35 in_data 0 2 } } }
	in_pos_36 { ap_none {  { in_pos_36 in_data 0 2 } } }
	in_pos_37 { ap_none {  { in_pos_37 in_data 0 2 } } }
	in_pos_38 { ap_none {  { in_pos_38 in_data 0 2 } } }
	in_pos_39 { ap_none {  { in_pos_39 in_data 0 2 } } }
	in_pos_40 { ap_none {  { in_pos_40 in_data 0 2 } } }
	in_pos_41 { ap_none {  { in_pos_41 in_data 0 2 } } }
	in_pos_42 { ap_none {  { in_pos_42 in_data 0 2 } } }
	in_pos_43 { ap_none {  { in_pos_43 in_data 0 2 } } }
	in_pos_44 { ap_none {  { in_pos_44 in_data 0 2 } } }
	in_pos_45 { ap_none {  { in_pos_45 in_data 0 2 } } }
	in_pos_46 { ap_none {  { in_pos_46 in_data 0 2 } } }
	in_pos_47 { ap_none {  { in_pos_47 in_data 0 2 } } }
	in_pos_48 { ap_none {  { in_pos_48 in_data 0 2 } } }
	in_pos_49 { ap_none {  { in_pos_49 in_data 0 2 } } }
	in_pos_50 { ap_none {  { in_pos_50 in_data 0 2 } } }
	in_pos_51 { ap_none {  { in_pos_51 in_data 0 2 } } }
	in_pos_52 { ap_none {  { in_pos_52 in_data 0 2 } } }
	in_pos_53 { ap_none {  { in_pos_53 in_data 0 2 } } }
	in_pos_54 { ap_none {  { in_pos_54 in_data 0 2 } } }
	in_pos_55 { ap_none {  { in_pos_55 in_data 0 2 } } }
	in_pos_56 { ap_none {  { in_pos_56 in_data 0 2 } } }
	in_pos_57 { ap_none {  { in_pos_57 in_data 0 2 } } }
	in_pos_58 { ap_none {  { in_pos_58 in_data 0 2 } } }
	in_pos_59 { ap_none {  { in_pos_59 in_data 0 2 } } }
	in_pos_60 { ap_none {  { in_pos_60 in_data 0 2 } } }
	in_pos_61 { ap_none {  { in_pos_61 in_data 0 2 } } }
	in_pos_62 { ap_none {  { in_pos_62 in_data 0 2 } } }
	in_pos_63 { ap_none {  { in_pos_63 in_data 0 2 } } }
}
