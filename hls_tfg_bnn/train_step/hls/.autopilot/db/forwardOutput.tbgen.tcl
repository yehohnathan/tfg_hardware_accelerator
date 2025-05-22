set moduleName forwardOutput
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
set C_modelName {forwardOutput}
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
	{ output_0 int 2 regular {pointer 1}  }
	{ output_1 int 2 regular {pointer 1}  }
	{ output_2 int 2 regular {pointer 1}  }
	{ output_3 int 2 regular {pointer 1}  }
	{ output_4 int 2 regular {pointer 1}  }
	{ output_5 int 2 regular {pointer 1}  }
	{ output_6 int 2 regular {pointer 1}  }
	{ output_7 int 2 regular {pointer 1}  }
	{ output_8 int 2 regular {pointer 1}  }
	{ output_9 int 2 regular {pointer 1}  }
	{ WEIGHTS int 8 regular {axi_master 0}  }
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
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
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
	{ output_0 sc_out sc_lv 2 signal 32 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ output_1 sc_out sc_lv 2 signal 33 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ output_2 sc_out sc_lv 2 signal 34 } 
	{ output_2_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ output_3 sc_out sc_lv 2 signal 35 } 
	{ output_3_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ output_4 sc_out sc_lv 2 signal 36 } 
	{ output_4_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ output_5 sc_out sc_lv 2 signal 37 } 
	{ output_5_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ output_6 sc_out sc_lv 2 signal 38 } 
	{ output_6_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ output_7 sc_out sc_lv 2 signal 39 } 
	{ output_7_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ output_8 sc_out sc_lv 2 signal 40 } 
	{ output_8_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ output_9 sc_out sc_lv 2 signal 41 } 
	{ output_9_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ m_axi_WEIGHTS_0_AWVALID sc_out sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_AWREADY sc_in sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_AWADDR sc_out sc_lv 64 signal 42 } 
	{ m_axi_WEIGHTS_0_AWID sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_AWLEN sc_out sc_lv 32 signal 42 } 
	{ m_axi_WEIGHTS_0_AWSIZE sc_out sc_lv 3 signal 42 } 
	{ m_axi_WEIGHTS_0_AWBURST sc_out sc_lv 2 signal 42 } 
	{ m_axi_WEIGHTS_0_AWLOCK sc_out sc_lv 2 signal 42 } 
	{ m_axi_WEIGHTS_0_AWCACHE sc_out sc_lv 4 signal 42 } 
	{ m_axi_WEIGHTS_0_AWPROT sc_out sc_lv 3 signal 42 } 
	{ m_axi_WEIGHTS_0_AWQOS sc_out sc_lv 4 signal 42 } 
	{ m_axi_WEIGHTS_0_AWREGION sc_out sc_lv 4 signal 42 } 
	{ m_axi_WEIGHTS_0_AWUSER sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_WVALID sc_out sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_WREADY sc_in sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_WDATA sc_out sc_lv 8 signal 42 } 
	{ m_axi_WEIGHTS_0_WSTRB sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_WLAST sc_out sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_WID sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_WUSER sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_ARVALID sc_out sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_ARREADY sc_in sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_ARADDR sc_out sc_lv 64 signal 42 } 
	{ m_axi_WEIGHTS_0_ARID sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_ARLEN sc_out sc_lv 32 signal 42 } 
	{ m_axi_WEIGHTS_0_ARSIZE sc_out sc_lv 3 signal 42 } 
	{ m_axi_WEIGHTS_0_ARBURST sc_out sc_lv 2 signal 42 } 
	{ m_axi_WEIGHTS_0_ARLOCK sc_out sc_lv 2 signal 42 } 
	{ m_axi_WEIGHTS_0_ARCACHE sc_out sc_lv 4 signal 42 } 
	{ m_axi_WEIGHTS_0_ARPROT sc_out sc_lv 3 signal 42 } 
	{ m_axi_WEIGHTS_0_ARQOS sc_out sc_lv 4 signal 42 } 
	{ m_axi_WEIGHTS_0_ARREGION sc_out sc_lv 4 signal 42 } 
	{ m_axi_WEIGHTS_0_ARUSER sc_out sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_RVALID sc_in sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_RREADY sc_out sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_RDATA sc_in sc_lv 8 signal 42 } 
	{ m_axi_WEIGHTS_0_RLAST sc_in sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_RID sc_in sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_RFIFONUM sc_in sc_lv 11 signal 42 } 
	{ m_axi_WEIGHTS_0_RUSER sc_in sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_RRESP sc_in sc_lv 2 signal 42 } 
	{ m_axi_WEIGHTS_0_BVALID sc_in sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_BREADY sc_out sc_logic 1 signal 42 } 
	{ m_axi_WEIGHTS_0_BRESP sc_in sc_lv 2 signal 42 } 
	{ m_axi_WEIGHTS_0_BID sc_in sc_lv 1 signal 42 } 
	{ m_axi_WEIGHTS_0_BUSER sc_in sc_lv 1 signal 42 } 
	{ W2 sc_in sc_lv 64 signal 43 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "output_2", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_2", "role": "default" }} , 
 	{ "name": "output_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2", "role": "ap_vld" }} , 
 	{ "name": "output_3", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_3", "role": "default" }} , 
 	{ "name": "output_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3", "role": "ap_vld" }} , 
 	{ "name": "output_4", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_4", "role": "default" }} , 
 	{ "name": "output_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4", "role": "ap_vld" }} , 
 	{ "name": "output_5", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_5", "role": "default" }} , 
 	{ "name": "output_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5", "role": "ap_vld" }} , 
 	{ "name": "output_6", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_6", "role": "default" }} , 
 	{ "name": "output_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_6", "role": "ap_vld" }} , 
 	{ "name": "output_7", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_7", "role": "default" }} , 
 	{ "name": "output_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_7", "role": "ap_vld" }} , 
 	{ "name": "output_8", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_8", "role": "default" }} , 
 	{ "name": "output_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_8", "role": "ap_vld" }} , 
 	{ "name": "output_9", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_9", "role": "default" }} , 
 	{ "name": "output_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_9", "role": "ap_vld" }} , 
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
 	{ "name": "W2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "forwardOutput",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
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
			{"Name" : "output_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "WEIGHTS", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "forwardOutput_Pipeline_VITIS_LOOP_54_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "329", "EstimateLatencyMax" : "329",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln58_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln54", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U263", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U264", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U265", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U266", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U267", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U268", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U269", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U270", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U271", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U272", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U273", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U274", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U275", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U276", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U277", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U278", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U279", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U280", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U281", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U282", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U283", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U284", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U285", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U286", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U287", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U288", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U289", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U290", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U291", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U292", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U293", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U294", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	forwardOutput {
		hidden_0_val {Type I LastRead 8 FirstWrite -1}
		hidden_1_val {Type I LastRead 8 FirstWrite -1}
		hidden_2_val {Type I LastRead 8 FirstWrite -1}
		hidden_3_val {Type I LastRead 8 FirstWrite -1}
		hidden_4_val {Type I LastRead 8 FirstWrite -1}
		hidden_5_val {Type I LastRead 8 FirstWrite -1}
		hidden_6_val {Type I LastRead 8 FirstWrite -1}
		hidden_7_val {Type I LastRead 8 FirstWrite -1}
		hidden_8_val {Type I LastRead 8 FirstWrite -1}
		hidden_9_val {Type I LastRead 8 FirstWrite -1}
		hidden_10_val {Type I LastRead 8 FirstWrite -1}
		hidden_11_val {Type I LastRead 8 FirstWrite -1}
		hidden_12_val {Type I LastRead 8 FirstWrite -1}
		hidden_13_val {Type I LastRead 8 FirstWrite -1}
		hidden_14_val {Type I LastRead 8 FirstWrite -1}
		hidden_15_val {Type I LastRead 8 FirstWrite -1}
		hidden_16_val {Type I LastRead 8 FirstWrite -1}
		hidden_17_val {Type I LastRead 8 FirstWrite -1}
		hidden_18_val {Type I LastRead 8 FirstWrite -1}
		hidden_19_val {Type I LastRead 8 FirstWrite -1}
		hidden_20_val {Type I LastRead 8 FirstWrite -1}
		hidden_21_val {Type I LastRead 8 FirstWrite -1}
		hidden_22_val {Type I LastRead 8 FirstWrite -1}
		hidden_23_val {Type I LastRead 8 FirstWrite -1}
		hidden_24_val {Type I LastRead 8 FirstWrite -1}
		hidden_25_val {Type I LastRead 8 FirstWrite -1}
		hidden_26_val {Type I LastRead 8 FirstWrite -1}
		hidden_27_val {Type I LastRead 8 FirstWrite -1}
		hidden_28_val {Type I LastRead 8 FirstWrite -1}
		hidden_29_val {Type I LastRead 8 FirstWrite -1}
		hidden_30_val {Type I LastRead 8 FirstWrite -1}
		hidden_31_val {Type I LastRead 8 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 39}
		output_1 {Type O LastRead -1 FirstWrite 39}
		output_2 {Type O LastRead -1 FirstWrite 39}
		output_3 {Type O LastRead -1 FirstWrite 39}
		output_4 {Type O LastRead -1 FirstWrite 39}
		output_5 {Type O LastRead -1 FirstWrite 39}
		output_6 {Type O LastRead -1 FirstWrite 39}
		output_7 {Type O LastRead -1 FirstWrite 39}
		output_8 {Type O LastRead -1 FirstWrite 39}
		output_9 {Type O LastRead -1 FirstWrite 39}
		WEIGHTS {Type I LastRead 32 FirstWrite -1}
		W2 {Type I LastRead 0 FirstWrite -1}}
	forwardOutput_Pipeline_VITIS_LOOP_54_1 {
		output_0 {Type O LastRead -1 FirstWrite 39}
		WEIGHTS {Type I LastRead 32 FirstWrite -1}
		W2 {Type I LastRead 0 FirstWrite -1}
		output_9 {Type O LastRead -1 FirstWrite 39}
		output_8 {Type O LastRead -1 FirstWrite 39}
		output_7 {Type O LastRead -1 FirstWrite 39}
		output_6 {Type O LastRead -1 FirstWrite 39}
		output_5 {Type O LastRead -1 FirstWrite 39}
		output_4 {Type O LastRead -1 FirstWrite 39}
		output_3 {Type O LastRead -1 FirstWrite 39}
		output_2 {Type O LastRead -1 FirstWrite 39}
		output_1 {Type O LastRead -1 FirstWrite 39}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_25 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_27 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_29 {Type I LastRead 0 FirstWrite -1}
		sext_ln58_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln54 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "338", "Max" : "338"}
	, {"Name" : "Interval", "Min" : "338", "Max" : "338"}
]}

set PipelineEnableSignalInfo {[
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
	output_0 { ap_vld {  { output_0 out_data 1 2 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 2 }  { output_1_ap_vld out_vld 1 1 } } }
	output_2 { ap_vld {  { output_2 out_data 1 2 }  { output_2_ap_vld out_vld 1 1 } } }
	output_3 { ap_vld {  { output_3 out_data 1 2 }  { output_3_ap_vld out_vld 1 1 } } }
	output_4 { ap_vld {  { output_4 out_data 1 2 }  { output_4_ap_vld out_vld 1 1 } } }
	output_5 { ap_vld {  { output_5 out_data 1 2 }  { output_5_ap_vld out_vld 1 1 } } }
	output_6 { ap_vld {  { output_6 out_data 1 2 }  { output_6_ap_vld out_vld 1 1 } } }
	output_7 { ap_vld {  { output_7 out_data 1 2 }  { output_7_ap_vld out_vld 1 1 } } }
	output_8 { ap_vld {  { output_8 out_data 1 2 }  { output_8_ap_vld out_vld 1 1 } } }
	output_9 { ap_vld {  { output_9 out_data 1 2 }  { output_9_ap_vld out_vld 1 1 } } }
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	W2 { ap_none {  { W2 in_data 0 64 } } }
}
