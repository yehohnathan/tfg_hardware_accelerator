set moduleName forwardOutput_Pipeline_VITIS_LOOP_54_1
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
set C_modelName {forwardOutput_Pipeline_VITIS_LOOP_54_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ output_0 int 2 regular {pointer 1}  }
	{ WEIGHTS int 8 regular {axi_master 0}  }
	{ W2 int 64 regular  }
	{ output_9 int 2 regular {pointer 1}  }
	{ output_8 int 2 regular {pointer 1}  }
	{ output_7 int 2 regular {pointer 1}  }
	{ output_6 int 2 regular {pointer 1}  }
	{ output_5 int 2 regular {pointer 1}  }
	{ output_4 int 2 regular {pointer 1}  }
	{ output_3 int 2 regular {pointer 1}  }
	{ output_2 int 2 regular {pointer 1}  }
	{ output_1 int 2 regular {pointer 1}  }
	{ sext_ln58 int 2 regular  }
	{ sext_ln58_1 int 2 regular  }
	{ sext_ln58_2 int 2 regular  }
	{ sext_ln58_3 int 2 regular  }
	{ sext_ln58_4 int 2 regular  }
	{ sext_ln58_5 int 2 regular  }
	{ sext_ln58_6 int 2 regular  }
	{ sext_ln58_7 int 2 regular  }
	{ sext_ln58_8 int 2 regular  }
	{ sext_ln58_9 int 2 regular  }
	{ sext_ln58_10 int 2 regular  }
	{ sext_ln58_11 int 2 regular  }
	{ sext_ln58_12 int 2 regular  }
	{ sext_ln58_13 int 2 regular  }
	{ sext_ln58_14 int 2 regular  }
	{ sext_ln58_15 int 2 regular  }
	{ sext_ln58_16 int 2 regular  }
	{ sext_ln58_17 int 2 regular  }
	{ sext_ln58_18 int 2 regular  }
	{ sext_ln58_19 int 2 regular  }
	{ sext_ln58_20 int 2 regular  }
	{ sext_ln58_21 int 2 regular  }
	{ sext_ln58_22 int 2 regular  }
	{ sext_ln58_23 int 2 regular  }
	{ sext_ln58_24 int 2 regular  }
	{ sext_ln58_25 int 2 regular  }
	{ sext_ln58_26 int 2 regular  }
	{ sext_ln58_27 int 2 regular  }
	{ sext_ln58_28 int 2 regular  }
	{ sext_ln58_29 int 2 regular  }
	{ sext_ln58_30 int 2 regular  }
	{ sext_ln54 int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "W2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_9", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln58", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_4", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_5", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_6", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_7", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_8", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_9", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_10", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_11", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_12", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_13", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_14", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_15", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_16", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_17", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_18", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_19", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_20", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_21", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_22", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_23", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_24", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_25", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_26", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_27", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_28", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_29", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln58_30", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln54", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_WEIGHTS_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_WEIGHTS_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_WEIGHTS_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_WEIGHTS_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_WEIGHTS_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_WEIGHTS_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_WEIGHTS_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_WEIGHTS_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_WEIGHTS_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_WEIGHTS_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_WDATA sc_out sc_lv 8 signal 1 } 
	{ m_axi_WEIGHTS_0_WSTRB sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_WEIGHTS_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_WEIGHTS_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_WEIGHTS_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_WEIGHTS_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_WEIGHTS_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_WEIGHTS_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_WEIGHTS_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_WEIGHTS_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_WEIGHTS_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_RDATA sc_in sc_lv 8 signal 1 } 
	{ m_axi_WEIGHTS_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_RFIFONUM sc_in sc_lv 11 signal 1 } 
	{ m_axi_WEIGHTS_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_WEIGHTS_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_WEIGHTS_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_WEIGHTS_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_WEIGHTS_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ output_0 sc_out sc_lv 2 signal 0 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ W2 sc_in sc_lv 64 signal 2 } 
	{ output_9 sc_out sc_lv 2 signal 3 } 
	{ output_9_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ output_8 sc_out sc_lv 2 signal 4 } 
	{ output_8_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ output_7 sc_out sc_lv 2 signal 5 } 
	{ output_7_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ output_6 sc_out sc_lv 2 signal 6 } 
	{ output_6_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ output_5 sc_out sc_lv 2 signal 7 } 
	{ output_5_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ output_4 sc_out sc_lv 2 signal 8 } 
	{ output_4_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ output_3 sc_out sc_lv 2 signal 9 } 
	{ output_3_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ output_2 sc_out sc_lv 2 signal 10 } 
	{ output_2_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ output_1 sc_out sc_lv 2 signal 11 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ sext_ln58 sc_in sc_lv 2 signal 12 } 
	{ sext_ln58_1 sc_in sc_lv 2 signal 13 } 
	{ sext_ln58_2 sc_in sc_lv 2 signal 14 } 
	{ sext_ln58_3 sc_in sc_lv 2 signal 15 } 
	{ sext_ln58_4 sc_in sc_lv 2 signal 16 } 
	{ sext_ln58_5 sc_in sc_lv 2 signal 17 } 
	{ sext_ln58_6 sc_in sc_lv 2 signal 18 } 
	{ sext_ln58_7 sc_in sc_lv 2 signal 19 } 
	{ sext_ln58_8 sc_in sc_lv 2 signal 20 } 
	{ sext_ln58_9 sc_in sc_lv 2 signal 21 } 
	{ sext_ln58_10 sc_in sc_lv 2 signal 22 } 
	{ sext_ln58_11 sc_in sc_lv 2 signal 23 } 
	{ sext_ln58_12 sc_in sc_lv 2 signal 24 } 
	{ sext_ln58_13 sc_in sc_lv 2 signal 25 } 
	{ sext_ln58_14 sc_in sc_lv 2 signal 26 } 
	{ sext_ln58_15 sc_in sc_lv 2 signal 27 } 
	{ sext_ln58_16 sc_in sc_lv 2 signal 28 } 
	{ sext_ln58_17 sc_in sc_lv 2 signal 29 } 
	{ sext_ln58_18 sc_in sc_lv 2 signal 30 } 
	{ sext_ln58_19 sc_in sc_lv 2 signal 31 } 
	{ sext_ln58_20 sc_in sc_lv 2 signal 32 } 
	{ sext_ln58_21 sc_in sc_lv 2 signal 33 } 
	{ sext_ln58_22 sc_in sc_lv 2 signal 34 } 
	{ sext_ln58_23 sc_in sc_lv 2 signal 35 } 
	{ sext_ln58_24 sc_in sc_lv 2 signal 36 } 
	{ sext_ln58_25 sc_in sc_lv 2 signal 37 } 
	{ sext_ln58_26 sc_in sc_lv 2 signal 38 } 
	{ sext_ln58_27 sc_in sc_lv 2 signal 39 } 
	{ sext_ln58_28 sc_in sc_lv 2 signal 40 } 
	{ sext_ln58_29 sc_in sc_lv 2 signal 41 } 
	{ sext_ln58_30 sc_in sc_lv 2 signal 42 } 
	{ sext_ln54 sc_in sc_lv 2 signal 43 } 
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
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "W2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2", "role": "default" }} , 
 	{ "name": "output_9", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_9", "role": "default" }} , 
 	{ "name": "output_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_9", "role": "ap_vld" }} , 
 	{ "name": "output_8", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_8", "role": "default" }} , 
 	{ "name": "output_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_8", "role": "ap_vld" }} , 
 	{ "name": "output_7", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_7", "role": "default" }} , 
 	{ "name": "output_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_7", "role": "ap_vld" }} , 
 	{ "name": "output_6", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_6", "role": "default" }} , 
 	{ "name": "output_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_6", "role": "ap_vld" }} , 
 	{ "name": "output_5", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_5", "role": "default" }} , 
 	{ "name": "output_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5", "role": "ap_vld" }} , 
 	{ "name": "output_4", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_4", "role": "default" }} , 
 	{ "name": "output_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4", "role": "ap_vld" }} , 
 	{ "name": "output_3", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_3", "role": "default" }} , 
 	{ "name": "output_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3", "role": "ap_vld" }} , 
 	{ "name": "output_2", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_2", "role": "default" }} , 
 	{ "name": "output_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "sext_ln58", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58", "role": "default" }} , 
 	{ "name": "sext_ln58_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_1", "role": "default" }} , 
 	{ "name": "sext_ln58_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_2", "role": "default" }} , 
 	{ "name": "sext_ln58_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_3", "role": "default" }} , 
 	{ "name": "sext_ln58_4", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_4", "role": "default" }} , 
 	{ "name": "sext_ln58_5", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_5", "role": "default" }} , 
 	{ "name": "sext_ln58_6", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_6", "role": "default" }} , 
 	{ "name": "sext_ln58_7", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_7", "role": "default" }} , 
 	{ "name": "sext_ln58_8", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_8", "role": "default" }} , 
 	{ "name": "sext_ln58_9", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_9", "role": "default" }} , 
 	{ "name": "sext_ln58_10", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_10", "role": "default" }} , 
 	{ "name": "sext_ln58_11", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_11", "role": "default" }} , 
 	{ "name": "sext_ln58_12", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_12", "role": "default" }} , 
 	{ "name": "sext_ln58_13", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_13", "role": "default" }} , 
 	{ "name": "sext_ln58_14", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_14", "role": "default" }} , 
 	{ "name": "sext_ln58_15", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_15", "role": "default" }} , 
 	{ "name": "sext_ln58_16", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_16", "role": "default" }} , 
 	{ "name": "sext_ln58_17", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_17", "role": "default" }} , 
 	{ "name": "sext_ln58_18", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_18", "role": "default" }} , 
 	{ "name": "sext_ln58_19", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_19", "role": "default" }} , 
 	{ "name": "sext_ln58_20", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_20", "role": "default" }} , 
 	{ "name": "sext_ln58_21", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_21", "role": "default" }} , 
 	{ "name": "sext_ln58_22", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_22", "role": "default" }} , 
 	{ "name": "sext_ln58_23", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_23", "role": "default" }} , 
 	{ "name": "sext_ln58_24", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_24", "role": "default" }} , 
 	{ "name": "sext_ln58_25", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_25", "role": "default" }} , 
 	{ "name": "sext_ln58_26", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_26", "role": "default" }} , 
 	{ "name": "sext_ln58_27", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_27", "role": "default" }} , 
 	{ "name": "sext_ln58_28", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_28", "role": "default" }} , 
 	{ "name": "sext_ln58_29", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_29", "role": "default" }} , 
 	{ "name": "sext_ln58_30", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln58_30", "role": "default" }} , 
 	{ "name": "sext_ln54", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln54", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U263", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U264", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U265", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U266", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U267", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U268", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U269", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U270", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U271", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U272", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U273", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U274", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U275", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U276", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U277", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_2s_10_1_1_U278", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U279", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U280", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U281", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U282", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U283", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U284", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U285", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U286", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U287", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U288", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U289", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U290", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U291", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U292", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U293", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_2s_10s_11_4_1_U294", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "329", "Max" : "329"}
	, {"Name" : "Interval", "Min" : "329", "Max" : "329"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_0 { ap_vld {  { output_0 out_data 1 2 }  { output_0_ap_vld out_vld 1 1 } } }
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	W2 { ap_none {  { W2 in_data 0 64 } } }
	output_9 { ap_vld {  { output_9 out_data 1 2 }  { output_9_ap_vld out_vld 1 1 } } }
	output_8 { ap_vld {  { output_8 out_data 1 2 }  { output_8_ap_vld out_vld 1 1 } } }
	output_7 { ap_vld {  { output_7 out_data 1 2 }  { output_7_ap_vld out_vld 1 1 } } }
	output_6 { ap_vld {  { output_6 out_data 1 2 }  { output_6_ap_vld out_vld 1 1 } } }
	output_5 { ap_vld {  { output_5 out_data 1 2 }  { output_5_ap_vld out_vld 1 1 } } }
	output_4 { ap_vld {  { output_4 out_data 1 2 }  { output_4_ap_vld out_vld 1 1 } } }
	output_3 { ap_vld {  { output_3 out_data 1 2 }  { output_3_ap_vld out_vld 1 1 } } }
	output_2 { ap_vld {  { output_2 out_data 1 2 }  { output_2_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 2 }  { output_1_ap_vld out_vld 1 1 } } }
	sext_ln58 { ap_none {  { sext_ln58 in_data 0 2 } } }
	sext_ln58_1 { ap_none {  { sext_ln58_1 in_data 0 2 } } }
	sext_ln58_2 { ap_none {  { sext_ln58_2 in_data 0 2 } } }
	sext_ln58_3 { ap_none {  { sext_ln58_3 in_data 0 2 } } }
	sext_ln58_4 { ap_none {  { sext_ln58_4 in_data 0 2 } } }
	sext_ln58_5 { ap_none {  { sext_ln58_5 in_data 0 2 } } }
	sext_ln58_6 { ap_none {  { sext_ln58_6 in_data 0 2 } } }
	sext_ln58_7 { ap_none {  { sext_ln58_7 in_data 0 2 } } }
	sext_ln58_8 { ap_none {  { sext_ln58_8 in_data 0 2 } } }
	sext_ln58_9 { ap_none {  { sext_ln58_9 in_data 0 2 } } }
	sext_ln58_10 { ap_none {  { sext_ln58_10 in_data 0 2 } } }
	sext_ln58_11 { ap_none {  { sext_ln58_11 in_data 0 2 } } }
	sext_ln58_12 { ap_none {  { sext_ln58_12 in_data 0 2 } } }
	sext_ln58_13 { ap_none {  { sext_ln58_13 in_data 0 2 } } }
	sext_ln58_14 { ap_none {  { sext_ln58_14 in_data 0 2 } } }
	sext_ln58_15 { ap_none {  { sext_ln58_15 in_data 0 2 } } }
	sext_ln58_16 { ap_none {  { sext_ln58_16 in_data 0 2 } } }
	sext_ln58_17 { ap_none {  { sext_ln58_17 in_data 0 2 } } }
	sext_ln58_18 { ap_none {  { sext_ln58_18 in_data 0 2 } } }
	sext_ln58_19 { ap_none {  { sext_ln58_19 in_data 0 2 } } }
	sext_ln58_20 { ap_none {  { sext_ln58_20 in_data 0 2 } } }
	sext_ln58_21 { ap_none {  { sext_ln58_21 in_data 0 2 } } }
	sext_ln58_22 { ap_none {  { sext_ln58_22 in_data 0 2 } } }
	sext_ln58_23 { ap_none {  { sext_ln58_23 in_data 0 2 } } }
	sext_ln58_24 { ap_none {  { sext_ln58_24 in_data 0 2 } } }
	sext_ln58_25 { ap_none {  { sext_ln58_25 in_data 0 2 } } }
	sext_ln58_26 { ap_none {  { sext_ln58_26 in_data 0 2 } } }
	sext_ln58_27 { ap_none {  { sext_ln58_27 in_data 0 2 } } }
	sext_ln58_28 { ap_none {  { sext_ln58_28 in_data 0 2 } } }
	sext_ln58_29 { ap_none {  { sext_ln58_29 in_data 0 2 } } }
	sext_ln58_30 { ap_none {  { sext_ln58_30 in_data 0 2 } } }
	sext_ln54 { ap_none {  { sext_ln54 in_data 0 2 } } }
}
