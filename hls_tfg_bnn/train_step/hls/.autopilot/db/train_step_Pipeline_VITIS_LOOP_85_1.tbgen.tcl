set moduleName train_step_Pipeline_VITIS_LOOP_85_1
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
set C_modelName {train_step_Pipeline_VITIS_LOOP_85_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_pos { MEM_WIDTH 2 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_neg { MEM_WIDTH 2 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 2}  }
	{ out_pos int 2 regular {array 10 { 1 3 } 1 1 }  }
	{ out_neg int 2 regular {array 10 { 1 3 } 1 1 }  }
	{ W2 int 64 regular  }
	{ hidden_load_cast248 int 2 regular  }
	{ hidden_pos_load_cast249 int 2 regular  }
	{ hidden_pos_load_1_cast250 int 2 regular  }
	{ hidden_pos_load_2_cast251 int 2 regular  }
	{ hidden_pos_load_3_cast252 int 2 regular  }
	{ hidden_pos_load_4_cast253 int 2 regular  }
	{ hidden_pos_load_5_cast254 int 2 regular  }
	{ hidden_pos_load_6_cast255 int 2 regular  }
	{ hidden_pos_load_7_cast256 int 2 regular  }
	{ hidden_pos_load_8_cast257 int 2 regular  }
	{ hidden_pos_load_9_cast258 int 2 regular  }
	{ hidden_pos_load_10_cast259 int 2 regular  }
	{ hidden_pos_load_11_cast260 int 2 regular  }
	{ hidden_pos_load_12_cast261 int 2 regular  }
	{ hidden_pos_load_13_cast262 int 2 regular  }
	{ hidden_pos_load_14_cast263 int 2 regular  }
	{ hidden_pos_load_15_cast264 int 2 regular  }
	{ hidden_pos_load_16_cast265 int 2 regular  }
	{ hidden_pos_load_17_cast266 int 2 regular  }
	{ hidden_pos_load_18_cast267 int 2 regular  }
	{ hidden_pos_load_19_cast268 int 2 regular  }
	{ hidden_pos_load_20_cast269 int 2 regular  }
	{ hidden_pos_load_21_cast270 int 2 regular  }
	{ hidden_pos_load_22_cast271 int 2 regular  }
	{ hidden_pos_load_23_cast272 int 2 regular  }
	{ hidden_pos_load_24_cast273 int 2 regular  }
	{ hidden_pos_load_25_cast274 int 2 regular  }
	{ hidden_pos_load_26_cast275 int 2 regular  }
	{ hidden_pos_load_27_cast276 int 2 regular  }
	{ hidden_pos_load_28_cast277 int 2 regular  }
	{ hidden_pos_load_29_cast278 int 2 regular  }
	{ sext_ln45 int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "out_pos", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_load_cast248", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_cast249", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_1_cast250", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_2_cast251", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_3_cast252", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_4_cast253", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_5_cast254", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_6_cast255", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_7_cast256", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_8_cast257", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_9_cast258", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_10_cast259", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_11_cast260", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_12_cast261", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_13_cast262", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_14_cast263", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_15_cast264", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_16_cast265", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_17_cast266", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_18_cast267", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_19_cast268", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_20_cast269", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_21_cast270", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_22_cast271", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_23_cast272", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_24_cast273", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_25_cast274", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_26_cast275", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_27_cast276", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_28_cast277", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_29_cast278", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln45", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 91
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
	{ out_pos_address0 sc_out sc_lv 4 signal 1 } 
	{ out_pos_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_pos_q0 sc_in sc_lv 2 signal 1 } 
	{ out_neg_address0 sc_out sc_lv 4 signal 2 } 
	{ out_neg_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_neg_q0 sc_in sc_lv 2 signal 2 } 
	{ W2 sc_in sc_lv 64 signal 3 } 
	{ hidden_load_cast248 sc_in sc_lv 2 signal 4 } 
	{ hidden_pos_load_cast249 sc_in sc_lv 2 signal 5 } 
	{ hidden_pos_load_1_cast250 sc_in sc_lv 2 signal 6 } 
	{ hidden_pos_load_2_cast251 sc_in sc_lv 2 signal 7 } 
	{ hidden_pos_load_3_cast252 sc_in sc_lv 2 signal 8 } 
	{ hidden_pos_load_4_cast253 sc_in sc_lv 2 signal 9 } 
	{ hidden_pos_load_5_cast254 sc_in sc_lv 2 signal 10 } 
	{ hidden_pos_load_6_cast255 sc_in sc_lv 2 signal 11 } 
	{ hidden_pos_load_7_cast256 sc_in sc_lv 2 signal 12 } 
	{ hidden_pos_load_8_cast257 sc_in sc_lv 2 signal 13 } 
	{ hidden_pos_load_9_cast258 sc_in sc_lv 2 signal 14 } 
	{ hidden_pos_load_10_cast259 sc_in sc_lv 2 signal 15 } 
	{ hidden_pos_load_11_cast260 sc_in sc_lv 2 signal 16 } 
	{ hidden_pos_load_12_cast261 sc_in sc_lv 2 signal 17 } 
	{ hidden_pos_load_13_cast262 sc_in sc_lv 2 signal 18 } 
	{ hidden_pos_load_14_cast263 sc_in sc_lv 2 signal 19 } 
	{ hidden_pos_load_15_cast264 sc_in sc_lv 2 signal 20 } 
	{ hidden_pos_load_16_cast265 sc_in sc_lv 2 signal 21 } 
	{ hidden_pos_load_17_cast266 sc_in sc_lv 2 signal 22 } 
	{ hidden_pos_load_18_cast267 sc_in sc_lv 2 signal 23 } 
	{ hidden_pos_load_19_cast268 sc_in sc_lv 2 signal 24 } 
	{ hidden_pos_load_20_cast269 sc_in sc_lv 2 signal 25 } 
	{ hidden_pos_load_21_cast270 sc_in sc_lv 2 signal 26 } 
	{ hidden_pos_load_22_cast271 sc_in sc_lv 2 signal 27 } 
	{ hidden_pos_load_23_cast272 sc_in sc_lv 2 signal 28 } 
	{ hidden_pos_load_24_cast273 sc_in sc_lv 2 signal 29 } 
	{ hidden_pos_load_25_cast274 sc_in sc_lv 2 signal 30 } 
	{ hidden_pos_load_26_cast275 sc_in sc_lv 2 signal 31 } 
	{ hidden_pos_load_27_cast276 sc_in sc_lv 2 signal 32 } 
	{ hidden_pos_load_28_cast277 sc_in sc_lv 2 signal 33 } 
	{ hidden_pos_load_29_cast278 sc_in sc_lv 2 signal 34 } 
	{ sext_ln45 sc_in sc_lv 2 signal 35 } 
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
 	{ "name": "out_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_pos", "role": "address0" }} , 
 	{ "name": "out_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pos", "role": "ce0" }} , 
 	{ "name": "out_pos_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos", "role": "q0" }} , 
 	{ "name": "out_neg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_neg", "role": "address0" }} , 
 	{ "name": "out_neg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_neg", "role": "ce0" }} , 
 	{ "name": "out_neg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_neg", "role": "q0" }} , 
 	{ "name": "W2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2", "role": "default" }} , 
 	{ "name": "hidden_load_cast248", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_load_cast248", "role": "default" }} , 
 	{ "name": "hidden_pos_load_cast249", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_cast249", "role": "default" }} , 
 	{ "name": "hidden_pos_load_1_cast250", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_1_cast250", "role": "default" }} , 
 	{ "name": "hidden_pos_load_2_cast251", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_2_cast251", "role": "default" }} , 
 	{ "name": "hidden_pos_load_3_cast252", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_3_cast252", "role": "default" }} , 
 	{ "name": "hidden_pos_load_4_cast253", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_4_cast253", "role": "default" }} , 
 	{ "name": "hidden_pos_load_5_cast254", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_5_cast254", "role": "default" }} , 
 	{ "name": "hidden_pos_load_6_cast255", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_6_cast255", "role": "default" }} , 
 	{ "name": "hidden_pos_load_7_cast256", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_7_cast256", "role": "default" }} , 
 	{ "name": "hidden_pos_load_8_cast257", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_8_cast257", "role": "default" }} , 
 	{ "name": "hidden_pos_load_9_cast258", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_9_cast258", "role": "default" }} , 
 	{ "name": "hidden_pos_load_10_cast259", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_10_cast259", "role": "default" }} , 
 	{ "name": "hidden_pos_load_11_cast260", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_11_cast260", "role": "default" }} , 
 	{ "name": "hidden_pos_load_12_cast261", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_12_cast261", "role": "default" }} , 
 	{ "name": "hidden_pos_load_13_cast262", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_13_cast262", "role": "default" }} , 
 	{ "name": "hidden_pos_load_14_cast263", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_14_cast263", "role": "default" }} , 
 	{ "name": "hidden_pos_load_15_cast264", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_15_cast264", "role": "default" }} , 
 	{ "name": "hidden_pos_load_16_cast265", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_16_cast265", "role": "default" }} , 
 	{ "name": "hidden_pos_load_17_cast266", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_17_cast266", "role": "default" }} , 
 	{ "name": "hidden_pos_load_18_cast267", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_18_cast267", "role": "default" }} , 
 	{ "name": "hidden_pos_load_19_cast268", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_19_cast268", "role": "default" }} , 
 	{ "name": "hidden_pos_load_20_cast269", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_20_cast269", "role": "default" }} , 
 	{ "name": "hidden_pos_load_21_cast270", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_21_cast270", "role": "default" }} , 
 	{ "name": "hidden_pos_load_22_cast271", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_22_cast271", "role": "default" }} , 
 	{ "name": "hidden_pos_load_23_cast272", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_23_cast272", "role": "default" }} , 
 	{ "name": "hidden_pos_load_24_cast273", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_24_cast273", "role": "default" }} , 
 	{ "name": "hidden_pos_load_25_cast274", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_25_cast274", "role": "default" }} , 
 	{ "name": "hidden_pos_load_26_cast275", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_26_cast275", "role": "default" }} , 
 	{ "name": "hidden_pos_load_27_cast276", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_27_cast276", "role": "default" }} , 
 	{ "name": "hidden_pos_load_28_cast277", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_28_cast277", "role": "default" }} , 
 	{ "name": "hidden_pos_load_29_cast278", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_29_cast278", "role": "default" }} , 
 	{ "name": "sext_ln45", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln45", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_85_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "834", "EstimateLatencyMax" : "834",
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
			{"Name" : "out_pos", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_neg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_load_cast248", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_cast249", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_1_cast250", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_2_cast251", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_3_cast252", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_4_cast253", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_5_cast254", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_6_cast255", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_7_cast256", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_8_cast257", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_9_cast258", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_10_cast259", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_11_cast260", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_12_cast261", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_13_cast262", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_14_cast263", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_15_cast264", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_16_cast265", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_17_cast266", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_18_cast267", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_19_cast268", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_20_cast269", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_21_cast270", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_22_cast271", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_23_cast272", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_24_cast273", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_25_cast274", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_26_cast275", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_27_cast276", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_28_cast277", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_29_cast278", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln45", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U536", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U537", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U538", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U539", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U540", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U541", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U542", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U543", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U544", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U545", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U546", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U547", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U548", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U549", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U550", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U551", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U552", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U553", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U554", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U555", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U556", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U557", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U558", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U559", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U560", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U561", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U562", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U563", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U564", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U565", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U566", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U567", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step_Pipeline_VITIS_LOOP_85_1 {
		WEIGHTS {Type IO LastRead 540 FirstWrite 12}
		out_pos {Type I LastRead 0 FirstWrite -1}
		out_neg {Type I LastRead 0 FirstWrite -1}
		W2 {Type I LastRead 0 FirstWrite -1}
		hidden_load_cast248 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_cast249 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_1_cast250 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_2_cast251 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_3_cast252 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_4_cast253 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_5_cast254 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_6_cast255 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_7_cast256 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_8_cast257 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_9_cast258 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_10_cast259 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_11_cast260 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_12_cast261 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_13_cast262 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_14_cast263 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_15_cast264 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_16_cast265 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_17_cast266 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_18_cast267 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_19_cast268 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_20_cast269 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_21_cast270 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_22_cast271 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_23_cast272 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_24_cast273 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_25_cast274 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_26_cast275 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_27_cast276 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_28_cast277 {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_29_cast278 {Type I LastRead 0 FirstWrite -1}
		sext_ln45 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "834", "Max" : "834"}
	, {"Name" : "Interval", "Min" : "834", "Max" : "834"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	out_pos { ap_memory {  { out_pos_address0 mem_address 1 4 }  { out_pos_ce0 mem_ce 1 1 }  { out_pos_q0 mem_dout 0 2 } } }
	out_neg { ap_memory {  { out_neg_address0 mem_address 1 4 }  { out_neg_ce0 mem_ce 1 1 }  { out_neg_q0 mem_dout 0 2 } } }
	W2 { ap_none {  { W2 in_data 0 64 } } }
	hidden_load_cast248 { ap_none {  { hidden_load_cast248 in_data 0 2 } } }
	hidden_pos_load_cast249 { ap_none {  { hidden_pos_load_cast249 in_data 0 2 } } }
	hidden_pos_load_1_cast250 { ap_none {  { hidden_pos_load_1_cast250 in_data 0 2 } } }
	hidden_pos_load_2_cast251 { ap_none {  { hidden_pos_load_2_cast251 in_data 0 2 } } }
	hidden_pos_load_3_cast252 { ap_none {  { hidden_pos_load_3_cast252 in_data 0 2 } } }
	hidden_pos_load_4_cast253 { ap_none {  { hidden_pos_load_4_cast253 in_data 0 2 } } }
	hidden_pos_load_5_cast254 { ap_none {  { hidden_pos_load_5_cast254 in_data 0 2 } } }
	hidden_pos_load_6_cast255 { ap_none {  { hidden_pos_load_6_cast255 in_data 0 2 } } }
	hidden_pos_load_7_cast256 { ap_none {  { hidden_pos_load_7_cast256 in_data 0 2 } } }
	hidden_pos_load_8_cast257 { ap_none {  { hidden_pos_load_8_cast257 in_data 0 2 } } }
	hidden_pos_load_9_cast258 { ap_none {  { hidden_pos_load_9_cast258 in_data 0 2 } } }
	hidden_pos_load_10_cast259 { ap_none {  { hidden_pos_load_10_cast259 in_data 0 2 } } }
	hidden_pos_load_11_cast260 { ap_none {  { hidden_pos_load_11_cast260 in_data 0 2 } } }
	hidden_pos_load_12_cast261 { ap_none {  { hidden_pos_load_12_cast261 in_data 0 2 } } }
	hidden_pos_load_13_cast262 { ap_none {  { hidden_pos_load_13_cast262 in_data 0 2 } } }
	hidden_pos_load_14_cast263 { ap_none {  { hidden_pos_load_14_cast263 in_data 0 2 } } }
	hidden_pos_load_15_cast264 { ap_none {  { hidden_pos_load_15_cast264 in_data 0 2 } } }
	hidden_pos_load_16_cast265 { ap_none {  { hidden_pos_load_16_cast265 in_data 0 2 } } }
	hidden_pos_load_17_cast266 { ap_none {  { hidden_pos_load_17_cast266 in_data 0 2 } } }
	hidden_pos_load_18_cast267 { ap_none {  { hidden_pos_load_18_cast267 in_data 0 2 } } }
	hidden_pos_load_19_cast268 { ap_none {  { hidden_pos_load_19_cast268 in_data 0 2 } } }
	hidden_pos_load_20_cast269 { ap_none {  { hidden_pos_load_20_cast269 in_data 0 2 } } }
	hidden_pos_load_21_cast270 { ap_none {  { hidden_pos_load_21_cast270 in_data 0 2 } } }
	hidden_pos_load_22_cast271 { ap_none {  { hidden_pos_load_22_cast271 in_data 0 2 } } }
	hidden_pos_load_23_cast272 { ap_none {  { hidden_pos_load_23_cast272 in_data 0 2 } } }
	hidden_pos_load_24_cast273 { ap_none {  { hidden_pos_load_24_cast273 in_data 0 2 } } }
	hidden_pos_load_25_cast274 { ap_none {  { hidden_pos_load_25_cast274 in_data 0 2 } } }
	hidden_pos_load_26_cast275 { ap_none {  { hidden_pos_load_26_cast275 in_data 0 2 } } }
	hidden_pos_load_27_cast276 { ap_none {  { hidden_pos_load_27_cast276 in_data 0 2 } } }
	hidden_pos_load_28_cast277 { ap_none {  { hidden_pos_load_28_cast277 in_data 0 2 } } }
	hidden_pos_load_29_cast278 { ap_none {  { hidden_pos_load_29_cast278 in_data 0 2 } } }
	sext_ln45 { ap_none {  { sext_ln45 in_data 0 2 } } }
}
