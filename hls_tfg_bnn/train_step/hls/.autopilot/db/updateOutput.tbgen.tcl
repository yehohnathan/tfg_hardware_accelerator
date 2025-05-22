set moduleName updateOutput
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
set C_modelName {updateOutput}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ hidden_0_val int 2 regular  }
	{ hidden_1_val int 2 regular  }
	{ hidden_2_val int 2 regular  }
	{ hidden_3_val int 2 regular  }
	{ hidden_4_val int 2 regular  }
	{ hidden_5_val int 2 regular  }
	{ hidden_6_val int 2 regular  }
	{ hidden_7_val int 2 regular  }
	{ hidden_8_val int 2 regular  }
	{ hidden_9_val int 2 regular  }
	{ hidden_10_val int 2 regular  }
	{ hidden_11_val int 2 regular  }
	{ hidden_12_val int 2 regular  }
	{ hidden_13_val int 2 regular  }
	{ hidden_14_val int 2 regular  }
	{ hidden_15_val int 2 regular  }
	{ hidden_16_val int 2 regular  }
	{ hidden_17_val int 2 regular  }
	{ hidden_18_val int 2 regular  }
	{ hidden_19_val int 2 regular  }
	{ hidden_20_val int 2 regular  }
	{ hidden_21_val int 2 regular  }
	{ hidden_22_val int 2 regular  }
	{ hidden_23_val int 2 regular  }
	{ hidden_24_val int 2 regular  }
	{ hidden_25_val int 2 regular  }
	{ hidden_26_val int 2 regular  }
	{ hidden_27_val int 2 regular  }
	{ hidden_28_val int 2 regular  }
	{ hidden_29_val int 2 regular  }
	{ hidden_30_val int 2 regular  }
	{ hidden_31_val int 2 regular  }
	{ out_pos_0_val int 2 regular  }
	{ out_pos_1_val int 2 regular  }
	{ out_pos_2_val int 2 regular  }
	{ out_pos_3_val int 2 regular  }
	{ out_pos_4_val int 2 regular  }
	{ out_pos_5_val int 2 regular  }
	{ out_pos_6_val int 2 regular  }
	{ out_pos_7_val int 2 regular  }
	{ out_pos_8_val int 2 regular  }
	{ out_pos_9_val int 2 regular  }
	{ out_neg_0_val int 2 regular  }
	{ out_neg_1_val int 2 regular  }
	{ out_neg_2_val int 2 regular  }
	{ out_neg_3_val int 2 regular  }
	{ out_neg_4_val int 2 regular  }
	{ out_neg_5_val int 2 regular  }
	{ out_neg_6_val int 2 regular  }
	{ out_neg_7_val int 2 regular  }
	{ out_neg_8_val int 2 regular  }
	{ out_neg_9_val int 2 regular  }
	{ WEIGHTS int 8 regular {axi_master 2}  }
	{ W2 int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "hidden_0_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_1_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_2_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_3_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_4_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_5_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_6_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_7_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_8_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_9_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_10_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_11_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_12_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_13_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_14_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_15_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_16_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_17_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_18_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_19_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_20_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_21_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_22_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_23_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_24_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_25_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_26_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_27_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_28_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_29_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_30_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_31_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_0_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_1_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_2_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_3_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_4_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_5_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_6_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_7_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_8_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos_9_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_0_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_1_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_2_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_3_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_4_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_5_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_6_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_7_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_8_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg_9_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "W2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_WEIGHTS_0_AWVALID sc_out sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_AWREADY sc_in sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_AWADDR sc_out sc_lv 64 signal 52 } 
	{ m_axi_WEIGHTS_0_AWID sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_AWLEN sc_out sc_lv 32 signal 52 } 
	{ m_axi_WEIGHTS_0_AWSIZE sc_out sc_lv 3 signal 52 } 
	{ m_axi_WEIGHTS_0_AWBURST sc_out sc_lv 2 signal 52 } 
	{ m_axi_WEIGHTS_0_AWLOCK sc_out sc_lv 2 signal 52 } 
	{ m_axi_WEIGHTS_0_AWCACHE sc_out sc_lv 4 signal 52 } 
	{ m_axi_WEIGHTS_0_AWPROT sc_out sc_lv 3 signal 52 } 
	{ m_axi_WEIGHTS_0_AWQOS sc_out sc_lv 4 signal 52 } 
	{ m_axi_WEIGHTS_0_AWREGION sc_out sc_lv 4 signal 52 } 
	{ m_axi_WEIGHTS_0_AWUSER sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_WVALID sc_out sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_WREADY sc_in sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_WDATA sc_out sc_lv 8 signal 52 } 
	{ m_axi_WEIGHTS_0_WSTRB sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_WLAST sc_out sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_WID sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_WUSER sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_ARVALID sc_out sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_ARREADY sc_in sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_ARADDR sc_out sc_lv 64 signal 52 } 
	{ m_axi_WEIGHTS_0_ARID sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_ARLEN sc_out sc_lv 32 signal 52 } 
	{ m_axi_WEIGHTS_0_ARSIZE sc_out sc_lv 3 signal 52 } 
	{ m_axi_WEIGHTS_0_ARBURST sc_out sc_lv 2 signal 52 } 
	{ m_axi_WEIGHTS_0_ARLOCK sc_out sc_lv 2 signal 52 } 
	{ m_axi_WEIGHTS_0_ARCACHE sc_out sc_lv 4 signal 52 } 
	{ m_axi_WEIGHTS_0_ARPROT sc_out sc_lv 3 signal 52 } 
	{ m_axi_WEIGHTS_0_ARQOS sc_out sc_lv 4 signal 52 } 
	{ m_axi_WEIGHTS_0_ARREGION sc_out sc_lv 4 signal 52 } 
	{ m_axi_WEIGHTS_0_ARUSER sc_out sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_RVALID sc_in sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_RREADY sc_out sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_RDATA sc_in sc_lv 8 signal 52 } 
	{ m_axi_WEIGHTS_0_RLAST sc_in sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_RID sc_in sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_RFIFONUM sc_in sc_lv 11 signal 52 } 
	{ m_axi_WEIGHTS_0_RUSER sc_in sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_RRESP sc_in sc_lv 2 signal 52 } 
	{ m_axi_WEIGHTS_0_BVALID sc_in sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_BREADY sc_out sc_logic 1 signal 52 } 
	{ m_axi_WEIGHTS_0_BRESP sc_in sc_lv 2 signal 52 } 
	{ m_axi_WEIGHTS_0_BID sc_in sc_lv 1 signal 52 } 
	{ m_axi_WEIGHTS_0_BUSER sc_in sc_lv 1 signal 52 } 
	{ hidden_0_val sc_in sc_lv 2 signal 0 } 
	{ hidden_1_val sc_in sc_lv 2 signal 1 } 
	{ hidden_2_val sc_in sc_lv 2 signal 2 } 
	{ hidden_3_val sc_in sc_lv 2 signal 3 } 
	{ hidden_4_val sc_in sc_lv 2 signal 4 } 
	{ hidden_5_val sc_in sc_lv 2 signal 5 } 
	{ hidden_6_val sc_in sc_lv 2 signal 6 } 
	{ hidden_7_val sc_in sc_lv 2 signal 7 } 
	{ hidden_8_val sc_in sc_lv 2 signal 8 } 
	{ hidden_9_val sc_in sc_lv 2 signal 9 } 
	{ hidden_10_val sc_in sc_lv 2 signal 10 } 
	{ hidden_11_val sc_in sc_lv 2 signal 11 } 
	{ hidden_12_val sc_in sc_lv 2 signal 12 } 
	{ hidden_13_val sc_in sc_lv 2 signal 13 } 
	{ hidden_14_val sc_in sc_lv 2 signal 14 } 
	{ hidden_15_val sc_in sc_lv 2 signal 15 } 
	{ hidden_16_val sc_in sc_lv 2 signal 16 } 
	{ hidden_17_val sc_in sc_lv 2 signal 17 } 
	{ hidden_18_val sc_in sc_lv 2 signal 18 } 
	{ hidden_19_val sc_in sc_lv 2 signal 19 } 
	{ hidden_20_val sc_in sc_lv 2 signal 20 } 
	{ hidden_21_val sc_in sc_lv 2 signal 21 } 
	{ hidden_22_val sc_in sc_lv 2 signal 22 } 
	{ hidden_23_val sc_in sc_lv 2 signal 23 } 
	{ hidden_24_val sc_in sc_lv 2 signal 24 } 
	{ hidden_25_val sc_in sc_lv 2 signal 25 } 
	{ hidden_26_val sc_in sc_lv 2 signal 26 } 
	{ hidden_27_val sc_in sc_lv 2 signal 27 } 
	{ hidden_28_val sc_in sc_lv 2 signal 28 } 
	{ hidden_29_val sc_in sc_lv 2 signal 29 } 
	{ hidden_30_val sc_in sc_lv 2 signal 30 } 
	{ hidden_31_val sc_in sc_lv 2 signal 31 } 
	{ out_pos_0_val sc_in sc_lv 2 signal 32 } 
	{ out_pos_1_val sc_in sc_lv 2 signal 33 } 
	{ out_pos_2_val sc_in sc_lv 2 signal 34 } 
	{ out_pos_3_val sc_in sc_lv 2 signal 35 } 
	{ out_pos_4_val sc_in sc_lv 2 signal 36 } 
	{ out_pos_5_val sc_in sc_lv 2 signal 37 } 
	{ out_pos_6_val sc_in sc_lv 2 signal 38 } 
	{ out_pos_7_val sc_in sc_lv 2 signal 39 } 
	{ out_pos_8_val sc_in sc_lv 2 signal 40 } 
	{ out_pos_9_val sc_in sc_lv 2 signal 41 } 
	{ out_neg_0_val sc_in sc_lv 2 signal 42 } 
	{ out_neg_1_val sc_in sc_lv 2 signal 43 } 
	{ out_neg_2_val sc_in sc_lv 2 signal 44 } 
	{ out_neg_3_val sc_in sc_lv 2 signal 45 } 
	{ out_neg_4_val sc_in sc_lv 2 signal 46 } 
	{ out_neg_5_val sc_in sc_lv 2 signal 47 } 
	{ out_neg_6_val sc_in sc_lv 2 signal 48 } 
	{ out_neg_7_val sc_in sc_lv 2 signal 49 } 
	{ out_neg_8_val sc_in sc_lv 2 signal 50 } 
	{ out_neg_9_val sc_in sc_lv 2 signal 51 } 
	{ W2 sc_in sc_lv 64 signal 53 } 
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
 	{ "name": "hidden_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_0_val", "role": "default" }} , 
 	{ "name": "hidden_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_1_val", "role": "default" }} , 
 	{ "name": "hidden_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_2_val", "role": "default" }} , 
 	{ "name": "hidden_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_3_val", "role": "default" }} , 
 	{ "name": "hidden_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_4_val", "role": "default" }} , 
 	{ "name": "hidden_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_5_val", "role": "default" }} , 
 	{ "name": "hidden_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_6_val", "role": "default" }} , 
 	{ "name": "hidden_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_7_val", "role": "default" }} , 
 	{ "name": "hidden_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_8_val", "role": "default" }} , 
 	{ "name": "hidden_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_9_val", "role": "default" }} , 
 	{ "name": "hidden_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_10_val", "role": "default" }} , 
 	{ "name": "hidden_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_11_val", "role": "default" }} , 
 	{ "name": "hidden_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_12_val", "role": "default" }} , 
 	{ "name": "hidden_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_13_val", "role": "default" }} , 
 	{ "name": "hidden_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_14_val", "role": "default" }} , 
 	{ "name": "hidden_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_15_val", "role": "default" }} , 
 	{ "name": "hidden_16_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_16_val", "role": "default" }} , 
 	{ "name": "hidden_17_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_17_val", "role": "default" }} , 
 	{ "name": "hidden_18_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_18_val", "role": "default" }} , 
 	{ "name": "hidden_19_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_19_val", "role": "default" }} , 
 	{ "name": "hidden_20_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_20_val", "role": "default" }} , 
 	{ "name": "hidden_21_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_21_val", "role": "default" }} , 
 	{ "name": "hidden_22_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_22_val", "role": "default" }} , 
 	{ "name": "hidden_23_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_23_val", "role": "default" }} , 
 	{ "name": "hidden_24_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_24_val", "role": "default" }} , 
 	{ "name": "hidden_25_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_25_val", "role": "default" }} , 
 	{ "name": "hidden_26_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_26_val", "role": "default" }} , 
 	{ "name": "hidden_27_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_27_val", "role": "default" }} , 
 	{ "name": "hidden_28_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_28_val", "role": "default" }} , 
 	{ "name": "hidden_29_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_29_val", "role": "default" }} , 
 	{ "name": "hidden_30_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_30_val", "role": "default" }} , 
 	{ "name": "hidden_31_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_31_val", "role": "default" }} , 
 	{ "name": "out_pos_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_0_val", "role": "default" }} , 
 	{ "name": "out_pos_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_1_val", "role": "default" }} , 
 	{ "name": "out_pos_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_2_val", "role": "default" }} , 
 	{ "name": "out_pos_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_3_val", "role": "default" }} , 
 	{ "name": "out_pos_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_4_val", "role": "default" }} , 
 	{ "name": "out_pos_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_5_val", "role": "default" }} , 
 	{ "name": "out_pos_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_6_val", "role": "default" }} , 
 	{ "name": "out_pos_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_7_val", "role": "default" }} , 
 	{ "name": "out_pos_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_8_val", "role": "default" }} , 
 	{ "name": "out_pos_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos_9_val", "role": "default" }} , 
 	{ "name": "out_neg_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_0_val", "role": "default" }} , 
 	{ "name": "out_neg_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_1_val", "role": "default" }} , 
 	{ "name": "out_neg_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_2_val", "role": "default" }} , 
 	{ "name": "out_neg_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_3_val", "role": "default" }} , 
 	{ "name": "out_neg_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_4_val", "role": "default" }} , 
 	{ "name": "out_neg_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_5_val", "role": "default" }} , 
 	{ "name": "out_neg_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_6_val", "role": "default" }} , 
 	{ "name": "out_neg_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_7_val", "role": "default" }} , 
 	{ "name": "out_neg_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_8_val", "role": "default" }} , 
 	{ "name": "out_neg_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg_9_val", "role": "default" }} , 
 	{ "name": "W2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "updateOutput",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "782", "EstimateLatencyMax" : "782",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hidden_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "WEIGHTS_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_21_4_2_1_1_U477", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_21_4_2_1_1_U478", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U479", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U480", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U481", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U482", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U483", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U484", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U485", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U486", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U487", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U488", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U489", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U490", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U491", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U492", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U493", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U494", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U495", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U496", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U497", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U498", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U499", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U500", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U501", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U502", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U503", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U504", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U505", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U506", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U507", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U508", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U509", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U510", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	updateOutput {
		hidden_0_val {Type I LastRead 0 FirstWrite -1}
		hidden_1_val {Type I LastRead 0 FirstWrite -1}
		hidden_2_val {Type I LastRead 0 FirstWrite -1}
		hidden_3_val {Type I LastRead 0 FirstWrite -1}
		hidden_4_val {Type I LastRead 0 FirstWrite -1}
		hidden_5_val {Type I LastRead 0 FirstWrite -1}
		hidden_6_val {Type I LastRead 0 FirstWrite -1}
		hidden_7_val {Type I LastRead 0 FirstWrite -1}
		hidden_8_val {Type I LastRead 0 FirstWrite -1}
		hidden_9_val {Type I LastRead 0 FirstWrite -1}
		hidden_10_val {Type I LastRead 0 FirstWrite -1}
		hidden_11_val {Type I LastRead 0 FirstWrite -1}
		hidden_12_val {Type I LastRead 0 FirstWrite -1}
		hidden_13_val {Type I LastRead 0 FirstWrite -1}
		hidden_14_val {Type I LastRead 0 FirstWrite -1}
		hidden_15_val {Type I LastRead 0 FirstWrite -1}
		hidden_16_val {Type I LastRead 0 FirstWrite -1}
		hidden_17_val {Type I LastRead 0 FirstWrite -1}
		hidden_18_val {Type I LastRead 0 FirstWrite -1}
		hidden_19_val {Type I LastRead 0 FirstWrite -1}
		hidden_20_val {Type I LastRead 0 FirstWrite -1}
		hidden_21_val {Type I LastRead 0 FirstWrite -1}
		hidden_22_val {Type I LastRead 0 FirstWrite -1}
		hidden_23_val {Type I LastRead 0 FirstWrite -1}
		hidden_24_val {Type I LastRead 0 FirstWrite -1}
		hidden_25_val {Type I LastRead 0 FirstWrite -1}
		hidden_26_val {Type I LastRead 0 FirstWrite -1}
		hidden_27_val {Type I LastRead 0 FirstWrite -1}
		hidden_28_val {Type I LastRead 0 FirstWrite -1}
		hidden_29_val {Type I LastRead 0 FirstWrite -1}
		hidden_30_val {Type I LastRead 0 FirstWrite -1}
		hidden_31_val {Type I LastRead 0 FirstWrite -1}
		out_pos_0_val {Type I LastRead 0 FirstWrite -1}
		out_pos_1_val {Type I LastRead 0 FirstWrite -1}
		out_pos_2_val {Type I LastRead 0 FirstWrite -1}
		out_pos_3_val {Type I LastRead 0 FirstWrite -1}
		out_pos_4_val {Type I LastRead 0 FirstWrite -1}
		out_pos_5_val {Type I LastRead 0 FirstWrite -1}
		out_pos_6_val {Type I LastRead 0 FirstWrite -1}
		out_pos_7_val {Type I LastRead 0 FirstWrite -1}
		out_pos_8_val {Type I LastRead 0 FirstWrite -1}
		out_pos_9_val {Type I LastRead 0 FirstWrite -1}
		out_neg_0_val {Type I LastRead 0 FirstWrite -1}
		out_neg_1_val {Type I LastRead 0 FirstWrite -1}
		out_neg_2_val {Type I LastRead 0 FirstWrite -1}
		out_neg_3_val {Type I LastRead 0 FirstWrite -1}
		out_neg_4_val {Type I LastRead 0 FirstWrite -1}
		out_neg_5_val {Type I LastRead 0 FirstWrite -1}
		out_neg_6_val {Type I LastRead 0 FirstWrite -1}
		out_neg_7_val {Type I LastRead 0 FirstWrite -1}
		out_neg_8_val {Type I LastRead 0 FirstWrite -1}
		out_neg_9_val {Type I LastRead 0 FirstWrite -1}
		WEIGHTS {Type IO LastRead 74 FirstWrite 42}
		W2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "782", "Max" : "782"}
	, {"Name" : "Interval", "Min" : "782", "Max" : "782"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hidden_0_val { ap_none {  { hidden_0_val in_data 0 2 } } }
	hidden_1_val { ap_none {  { hidden_1_val in_data 0 2 } } }
	hidden_2_val { ap_none {  { hidden_2_val in_data 0 2 } } }
	hidden_3_val { ap_none {  { hidden_3_val in_data 0 2 } } }
	hidden_4_val { ap_none {  { hidden_4_val in_data 0 2 } } }
	hidden_5_val { ap_none {  { hidden_5_val in_data 0 2 } } }
	hidden_6_val { ap_none {  { hidden_6_val in_data 0 2 } } }
	hidden_7_val { ap_none {  { hidden_7_val in_data 0 2 } } }
	hidden_8_val { ap_none {  { hidden_8_val in_data 0 2 } } }
	hidden_9_val { ap_none {  { hidden_9_val in_data 0 2 } } }
	hidden_10_val { ap_none {  { hidden_10_val in_data 0 2 } } }
	hidden_11_val { ap_none {  { hidden_11_val in_data 0 2 } } }
	hidden_12_val { ap_none {  { hidden_12_val in_data 0 2 } } }
	hidden_13_val { ap_none {  { hidden_13_val in_data 0 2 } } }
	hidden_14_val { ap_none {  { hidden_14_val in_data 0 2 } } }
	hidden_15_val { ap_none {  { hidden_15_val in_data 0 2 } } }
	hidden_16_val { ap_none {  { hidden_16_val in_data 0 2 } } }
	hidden_17_val { ap_none {  { hidden_17_val in_data 0 2 } } }
	hidden_18_val { ap_none {  { hidden_18_val in_data 0 2 } } }
	hidden_19_val { ap_none {  { hidden_19_val in_data 0 2 } } }
	hidden_20_val { ap_none {  { hidden_20_val in_data 0 2 } } }
	hidden_21_val { ap_none {  { hidden_21_val in_data 0 2 } } }
	hidden_22_val { ap_none {  { hidden_22_val in_data 0 2 } } }
	hidden_23_val { ap_none {  { hidden_23_val in_data 0 2 } } }
	hidden_24_val { ap_none {  { hidden_24_val in_data 0 2 } } }
	hidden_25_val { ap_none {  { hidden_25_val in_data 0 2 } } }
	hidden_26_val { ap_none {  { hidden_26_val in_data 0 2 } } }
	hidden_27_val { ap_none {  { hidden_27_val in_data 0 2 } } }
	hidden_28_val { ap_none {  { hidden_28_val in_data 0 2 } } }
	hidden_29_val { ap_none {  { hidden_29_val in_data 0 2 } } }
	hidden_30_val { ap_none {  { hidden_30_val in_data 0 2 } } }
	hidden_31_val { ap_none {  { hidden_31_val in_data 0 2 } } }
	out_pos_0_val { ap_none {  { out_pos_0_val in_data 0 2 } } }
	out_pos_1_val { ap_none {  { out_pos_1_val in_data 0 2 } } }
	out_pos_2_val { ap_none {  { out_pos_2_val in_data 0 2 } } }
	out_pos_3_val { ap_none {  { out_pos_3_val in_data 0 2 } } }
	out_pos_4_val { ap_none {  { out_pos_4_val in_data 0 2 } } }
	out_pos_5_val { ap_none {  { out_pos_5_val in_data 0 2 } } }
	out_pos_6_val { ap_none {  { out_pos_6_val in_data 0 2 } } }
	out_pos_7_val { ap_none {  { out_pos_7_val in_data 0 2 } } }
	out_pos_8_val { ap_none {  { out_pos_8_val in_data 0 2 } } }
	out_pos_9_val { ap_none {  { out_pos_9_val in_data 0 2 } } }
	out_neg_0_val { ap_none {  { out_neg_0_val in_data 0 2 } } }
	out_neg_1_val { ap_none {  { out_neg_1_val in_data 0 2 } } }
	out_neg_2_val { ap_none {  { out_neg_2_val in_data 0 2 } } }
	out_neg_3_val { ap_none {  { out_neg_3_val in_data 0 2 } } }
	out_neg_4_val { ap_none {  { out_neg_4_val in_data 0 2 } } }
	out_neg_5_val { ap_none {  { out_neg_5_val in_data 0 2 } } }
	out_neg_6_val { ap_none {  { out_neg_6_val in_data 0 2 } } }
	out_neg_7_val { ap_none {  { out_neg_7_val in_data 0 2 } } }
	out_neg_8_val { ap_none {  { out_neg_8_val in_data 0 2 } } }
	out_neg_9_val { ap_none {  { out_neg_9_val in_data 0 2 } } }
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	W2 { ap_none {  { W2 in_data 0 64 } } }
}
