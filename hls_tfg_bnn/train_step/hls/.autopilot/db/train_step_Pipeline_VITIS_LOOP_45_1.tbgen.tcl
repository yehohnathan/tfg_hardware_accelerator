set moduleName train_step_Pipeline_VITIS_LOOP_45_1
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
set C_modelName {train_step_Pipeline_VITIS_LOOP_45_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_pos { MEM_WIDTH 2 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 0}  }
	{ W2 int 64 regular  }
	{ hidden_load_cast int 2 regular  }
	{ hidden_pos_load_cast int 2 regular  }
	{ hidden_pos_load_1_cast int 2 regular  }
	{ hidden_pos_load_2_cast int 2 regular  }
	{ hidden_pos_load_3_cast int 2 regular  }
	{ hidden_pos_load_4_cast int 2 regular  }
	{ hidden_pos_load_5_cast int 2 regular  }
	{ hidden_pos_load_6_cast int 2 regular  }
	{ hidden_pos_load_7_cast int 2 regular  }
	{ hidden_pos_load_8_cast int 2 regular  }
	{ hidden_pos_load_9_cast int 2 regular  }
	{ hidden_pos_load_10_cast int 2 regular  }
	{ hidden_pos_load_11_cast int 2 regular  }
	{ hidden_pos_load_12_cast int 2 regular  }
	{ hidden_pos_load_13_cast int 2 regular  }
	{ hidden_pos_load_14_cast int 2 regular  }
	{ hidden_pos_load_15_cast int 2 regular  }
	{ hidden_pos_load_16_cast int 2 regular  }
	{ hidden_pos_load_17_cast int 2 regular  }
	{ hidden_pos_load_18_cast int 2 regular  }
	{ hidden_pos_load_19_cast int 2 regular  }
	{ hidden_pos_load_20_cast int 2 regular  }
	{ hidden_pos_load_21_cast int 2 regular  }
	{ hidden_pos_load_22_cast int 2 regular  }
	{ hidden_pos_load_23_cast int 2 regular  }
	{ hidden_pos_load_24_cast int 2 regular  }
	{ hidden_pos_load_25_cast int 2 regular  }
	{ hidden_pos_load_26_cast int 2 regular  }
	{ hidden_pos_load_27_cast int 2 regular  }
	{ hidden_pos_load_28_cast int 2 regular  }
	{ hidden_pos_load_29_cast int 2 regular  }
	{ sext_ln45_1 int 2 regular  }
	{ out_pos int 2 regular {array 10 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "W2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_load_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_1_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_2_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_3_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_4_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_5_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_6_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_7_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_8_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_9_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_10_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_11_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_12_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_13_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_14_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_15_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_16_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_17_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_18_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_19_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_20_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_21_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_22_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_23_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_24_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_25_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_26_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_27_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_28_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hidden_pos_load_29_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln45_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_pos", "interface" : "memory", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 89
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
	{ W2 sc_in sc_lv 64 signal 1 } 
	{ hidden_load_cast sc_in sc_lv 2 signal 2 } 
	{ hidden_pos_load_cast sc_in sc_lv 2 signal 3 } 
	{ hidden_pos_load_1_cast sc_in sc_lv 2 signal 4 } 
	{ hidden_pos_load_2_cast sc_in sc_lv 2 signal 5 } 
	{ hidden_pos_load_3_cast sc_in sc_lv 2 signal 6 } 
	{ hidden_pos_load_4_cast sc_in sc_lv 2 signal 7 } 
	{ hidden_pos_load_5_cast sc_in sc_lv 2 signal 8 } 
	{ hidden_pos_load_6_cast sc_in sc_lv 2 signal 9 } 
	{ hidden_pos_load_7_cast sc_in sc_lv 2 signal 10 } 
	{ hidden_pos_load_8_cast sc_in sc_lv 2 signal 11 } 
	{ hidden_pos_load_9_cast sc_in sc_lv 2 signal 12 } 
	{ hidden_pos_load_10_cast sc_in sc_lv 2 signal 13 } 
	{ hidden_pos_load_11_cast sc_in sc_lv 2 signal 14 } 
	{ hidden_pos_load_12_cast sc_in sc_lv 2 signal 15 } 
	{ hidden_pos_load_13_cast sc_in sc_lv 2 signal 16 } 
	{ hidden_pos_load_14_cast sc_in sc_lv 2 signal 17 } 
	{ hidden_pos_load_15_cast sc_in sc_lv 2 signal 18 } 
	{ hidden_pos_load_16_cast sc_in sc_lv 2 signal 19 } 
	{ hidden_pos_load_17_cast sc_in sc_lv 2 signal 20 } 
	{ hidden_pos_load_18_cast sc_in sc_lv 2 signal 21 } 
	{ hidden_pos_load_19_cast sc_in sc_lv 2 signal 22 } 
	{ hidden_pos_load_20_cast sc_in sc_lv 2 signal 23 } 
	{ hidden_pos_load_21_cast sc_in sc_lv 2 signal 24 } 
	{ hidden_pos_load_22_cast sc_in sc_lv 2 signal 25 } 
	{ hidden_pos_load_23_cast sc_in sc_lv 2 signal 26 } 
	{ hidden_pos_load_24_cast sc_in sc_lv 2 signal 27 } 
	{ hidden_pos_load_25_cast sc_in sc_lv 2 signal 28 } 
	{ hidden_pos_load_26_cast sc_in sc_lv 2 signal 29 } 
	{ hidden_pos_load_27_cast sc_in sc_lv 2 signal 30 } 
	{ hidden_pos_load_28_cast sc_in sc_lv 2 signal 31 } 
	{ hidden_pos_load_29_cast sc_in sc_lv 2 signal 32 } 
	{ sext_ln45_1 sc_in sc_lv 2 signal 33 } 
	{ out_pos_address0 sc_out sc_lv 4 signal 34 } 
	{ out_pos_ce0 sc_out sc_logic 1 signal 34 } 
	{ out_pos_we0 sc_out sc_logic 1 signal 34 } 
	{ out_pos_d0 sc_out sc_lv 2 signal 34 } 
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
 	{ "name": "W2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2", "role": "default" }} , 
 	{ "name": "hidden_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_load_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_1_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_2_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_3_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_3_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_4_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_4_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_5_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_5_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_6_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_6_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_7_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_7_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_8_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_8_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_9_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_9_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_10_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_10_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_11_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_11_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_12_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_12_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_13_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_13_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_14_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_14_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_15_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_15_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_16_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_16_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_17_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_17_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_18_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_18_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_19_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_19_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_20_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_20_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_21_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_21_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_22_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_22_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_23_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_23_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_24_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_24_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_25_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_25_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_26_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_26_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_27_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_27_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_28_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_28_cast", "role": "default" }} , 
 	{ "name": "hidden_pos_load_29_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hidden_pos_load_29_cast", "role": "default" }} , 
 	{ "name": "sext_ln45_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln45_1", "role": "default" }} , 
 	{ "name": "out_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_pos", "role": "address0" }} , 
 	{ "name": "out_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pos", "role": "ce0" }} , 
 	{ "name": "out_pos_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pos", "role": "we0" }} , 
 	{ "name": "out_pos_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_pos", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_45_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "328", "EstimateLatencyMax" : "328",
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
			{"Name" : "W2", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos_load_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln45_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_pos", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U138", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U139", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U140", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U141", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U142", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U143", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U144", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U145", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U146", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U147", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U148", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U149", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U150", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U151", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U152", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U153", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U154", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U155", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U156", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U157", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U158", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U159", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U160", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U161", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U162", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U163", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U164", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U165", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U166", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U167", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U168", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_10_4_1_U169", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step_Pipeline_VITIS_LOOP_45_1 {
		WEIGHTS {Type I LastRead 32 FirstWrite -1}
		W2 {Type I LastRead 0 FirstWrite -1}
		hidden_load_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_1_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_2_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_3_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_4_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_5_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_6_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_7_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_8_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_9_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_10_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_11_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_12_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_13_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_14_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_15_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_16_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_17_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_18_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_19_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_20_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_21_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_22_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_23_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_24_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_25_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_26_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_27_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_28_cast {Type I LastRead 0 FirstWrite -1}
		hidden_pos_load_29_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln45_1 {Type I LastRead 0 FirstWrite -1}
		out_pos {Type O LastRead -1 FirstWrite 38}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "328", "Max" : "328"}
	, {"Name" : "Interval", "Min" : "328", "Max" : "328"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	W2 { ap_none {  { W2 in_data 0 64 } } }
	hidden_load_cast { ap_none {  { hidden_load_cast in_data 0 2 } } }
	hidden_pos_load_cast { ap_none {  { hidden_pos_load_cast in_data 0 2 } } }
	hidden_pos_load_1_cast { ap_none {  { hidden_pos_load_1_cast in_data 0 2 } } }
	hidden_pos_load_2_cast { ap_none {  { hidden_pos_load_2_cast in_data 0 2 } } }
	hidden_pos_load_3_cast { ap_none {  { hidden_pos_load_3_cast in_data 0 2 } } }
	hidden_pos_load_4_cast { ap_none {  { hidden_pos_load_4_cast in_data 0 2 } } }
	hidden_pos_load_5_cast { ap_none {  { hidden_pos_load_5_cast in_data 0 2 } } }
	hidden_pos_load_6_cast { ap_none {  { hidden_pos_load_6_cast in_data 0 2 } } }
	hidden_pos_load_7_cast { ap_none {  { hidden_pos_load_7_cast in_data 0 2 } } }
	hidden_pos_load_8_cast { ap_none {  { hidden_pos_load_8_cast in_data 0 2 } } }
	hidden_pos_load_9_cast { ap_none {  { hidden_pos_load_9_cast in_data 0 2 } } }
	hidden_pos_load_10_cast { ap_none {  { hidden_pos_load_10_cast in_data 0 2 } } }
	hidden_pos_load_11_cast { ap_none {  { hidden_pos_load_11_cast in_data 0 2 } } }
	hidden_pos_load_12_cast { ap_none {  { hidden_pos_load_12_cast in_data 0 2 } } }
	hidden_pos_load_13_cast { ap_none {  { hidden_pos_load_13_cast in_data 0 2 } } }
	hidden_pos_load_14_cast { ap_none {  { hidden_pos_load_14_cast in_data 0 2 } } }
	hidden_pos_load_15_cast { ap_none {  { hidden_pos_load_15_cast in_data 0 2 } } }
	hidden_pos_load_16_cast { ap_none {  { hidden_pos_load_16_cast in_data 0 2 } } }
	hidden_pos_load_17_cast { ap_none {  { hidden_pos_load_17_cast in_data 0 2 } } }
	hidden_pos_load_18_cast { ap_none {  { hidden_pos_load_18_cast in_data 0 2 } } }
	hidden_pos_load_19_cast { ap_none {  { hidden_pos_load_19_cast in_data 0 2 } } }
	hidden_pos_load_20_cast { ap_none {  { hidden_pos_load_20_cast in_data 0 2 } } }
	hidden_pos_load_21_cast { ap_none {  { hidden_pos_load_21_cast in_data 0 2 } } }
	hidden_pos_load_22_cast { ap_none {  { hidden_pos_load_22_cast in_data 0 2 } } }
	hidden_pos_load_23_cast { ap_none {  { hidden_pos_load_23_cast in_data 0 2 } } }
	hidden_pos_load_24_cast { ap_none {  { hidden_pos_load_24_cast in_data 0 2 } } }
	hidden_pos_load_25_cast { ap_none {  { hidden_pos_load_25_cast in_data 0 2 } } }
	hidden_pos_load_26_cast { ap_none {  { hidden_pos_load_26_cast in_data 0 2 } } }
	hidden_pos_load_27_cast { ap_none {  { hidden_pos_load_27_cast in_data 0 2 } } }
	hidden_pos_load_28_cast { ap_none {  { hidden_pos_load_28_cast in_data 0 2 } } }
	hidden_pos_load_29_cast { ap_none {  { hidden_pos_load_29_cast in_data 0 2 } } }
	sext_ln45_1 { ap_none {  { sext_ln45_1 in_data 0 2 } } }
	out_pos { ap_memory {  { out_pos_address0 mem_address 1 4 }  { out_pos_ce0 mem_ce 1 1 }  { out_pos_we0 mem_we 1 1 }  { out_pos_d0 mem_din 1 2 } } }
}
