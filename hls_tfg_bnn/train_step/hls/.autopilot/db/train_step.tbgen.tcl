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
set cdfgNum 9
set C_modelName {train_step}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict img_pos { MEM_WIDTH 8 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict img_neg { MEM_WIDTH 8 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 2}  }
	{ img_pos int 8 regular {array 64 { 1 1 } 1 1 }  }
	{ img_neg int 8 regular {array 64 { 1 1 } 1 1 }  }
	{ sample_idx int 32 unused {axi_slave 0}  }
	{ W1 int 64 regular {axi_slave 0}  }
	{ W2 int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "img_pos", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_neg", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sample_idx", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "W1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "W2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 94
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_WEIGHTS_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_WEIGHTS_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_WEIGHTS_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_WEIGHTS_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_WEIGHTS_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_WEIGHTS_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_WEIGHTS_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_WEIGHTS_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_WEIGHTS_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_WEIGHTS_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_WEIGHTS_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_WEIGHTS_BUSER sc_in sc_lv 1 signal 0 } 
	{ img_pos_address0 sc_out sc_lv 6 signal 1 } 
	{ img_pos_ce0 sc_out sc_logic 1 signal 1 } 
	{ img_pos_q0 sc_in sc_lv 8 signal 1 } 
	{ img_pos_address1 sc_out sc_lv 6 signal 1 } 
	{ img_pos_ce1 sc_out sc_logic 1 signal 1 } 
	{ img_pos_q1 sc_in sc_lv 8 signal 1 } 
	{ img_neg_address0 sc_out sc_lv 6 signal 2 } 
	{ img_neg_ce0 sc_out sc_logic 1 signal 2 } 
	{ img_neg_q0 sc_in sc_lv 8 signal 2 } 
	{ img_neg_address1 sc_out sc_lv 6 signal 2 } 
	{ img_neg_ce1 sc_out sc_logic 1 signal 2 } 
	{ img_neg_q1 sc_in sc_lv 8 signal 2 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"train_step","role":"start","value":"0","valid_bit":"0"},{"name":"train_step","role":"continue","value":"0","valid_bit":"4"},{"name":"train_step","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sample_idx","role":"data","value":"16"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"train_step","role":"start","value":"0","valid_bit":"0"},{"name":"train_step","role":"done","value":"0","valid_bit":"1"},{"name":"train_step","role":"idle","value":"0","valid_bit":"2"},{"name":"train_step","role":"ready","value":"0","valid_bit":"3"},{"name":"train_step","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"W1","role":"data","value":"16"},{"name":"W2","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_WEIGHTS_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWADDR" }} , 
 	{ "name": "m_axi_WEIGHTS_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWID" }} , 
 	{ "name": "m_axi_WEIGHTS_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWLEN" }} , 
 	{ "name": "m_axi_WEIGHTS_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_WEIGHTS_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWBURST" }} , 
 	{ "name": "m_axi_WEIGHTS_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_WEIGHTS_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_WEIGHTS_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWPROT" }} , 
 	{ "name": "m_axi_WEIGHTS_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWQOS" }} , 
 	{ "name": "m_axi_WEIGHTS_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWREGION" }} , 
 	{ "name": "m_axi_WEIGHTS_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "AWUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WDATA" }} , 
 	{ "name": "m_axi_WEIGHTS_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WSTRB" }} , 
 	{ "name": "m_axi_WEIGHTS_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WLAST" }} , 
 	{ "name": "m_axi_WEIGHTS_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WID" }} , 
 	{ "name": "m_axi_WEIGHTS_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "WUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARADDR" }} , 
 	{ "name": "m_axi_WEIGHTS_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARID" }} , 
 	{ "name": "m_axi_WEIGHTS_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARLEN" }} , 
 	{ "name": "m_axi_WEIGHTS_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_WEIGHTS_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARBURST" }} , 
 	{ "name": "m_axi_WEIGHTS_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_WEIGHTS_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_WEIGHTS_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARPROT" }} , 
 	{ "name": "m_axi_WEIGHTS_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARQOS" }} , 
 	{ "name": "m_axi_WEIGHTS_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARREGION" }} , 
 	{ "name": "m_axi_WEIGHTS_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "ARUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RDATA" }} , 
 	{ "name": "m_axi_WEIGHTS_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RLAST" }} , 
 	{ "name": "m_axi_WEIGHTS_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RID" }} , 
 	{ "name": "m_axi_WEIGHTS_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RUSER" }} , 
 	{ "name": "m_axi_WEIGHTS_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "RRESP" }} , 
 	{ "name": "m_axi_WEIGHTS_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "BVALID" }} , 
 	{ "name": "m_axi_WEIGHTS_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "BREADY" }} , 
 	{ "name": "m_axi_WEIGHTS_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "BRESP" }} , 
 	{ "name": "m_axi_WEIGHTS_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "BID" }} , 
 	{ "name": "m_axi_WEIGHTS_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "WEIGHTS", "role": "BUSER" }} , 
 	{ "name": "img_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_pos", "role": "address0" }} , 
 	{ "name": "img_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_pos", "role": "ce0" }} , 
 	{ "name": "img_pos_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_pos", "role": "q0" }} , 
 	{ "name": "img_pos_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_pos", "role": "address1" }} , 
 	{ "name": "img_pos_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_pos", "role": "ce1" }} , 
 	{ "name": "img_pos_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_pos", "role": "q1" }} , 
 	{ "name": "img_neg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_neg", "role": "address0" }} , 
 	{ "name": "img_neg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_neg", "role": "ce0" }} , 
 	{ "name": "img_neg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_neg", "role": "q0" }} , 
 	{ "name": "img_neg_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_neg", "role": "address1" }} , 
 	{ "name": "img_neg_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_neg", "role": "ce1" }} , 
 	{ "name": "img_neg_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_neg", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "68", "103", "109", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231"],
		"CDFG" : "train_step",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4855", "EstimateLatencyMax" : "7705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forwardHidden_fu_1732", "Port" : "WEIGHTS", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "68", "SubInstance" : "grp_forwardOutput_fu_1835", "Port" : "WEIGHTS", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "103", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884", "Port" : "WEIGHTS", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "109", "SubInstance" : "grp_updateOutput_fu_1975", "Port" : "WEIGHTS", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "img_pos", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "img_neg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sample_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_10", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_10", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_11", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_11", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_12", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_12", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_13", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_13", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_14", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_14", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_15", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_15", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_16", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_16", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_17", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_17", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_18", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_18", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_19", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_19", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_20", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_20", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_21", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_21", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_22", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_22", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_23", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_23", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_24", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_24", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_25", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_25", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_26", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_26", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_27", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_27", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_28", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_28", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_29", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_29", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_30", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_30", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "hidden_31", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "hidden_31", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Port" : "WEIGHTS", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U29", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U30", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U31", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mul_8s_2s_10_1_1_U32", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U33", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U34", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U35", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U36", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U37", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U38", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U39", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U40", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U41", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U42", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U43", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U44", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U45", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U46", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U47", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U48", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U49", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U50", "Parent" : "2"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U51", "Parent" : "2"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U52", "Parent" : "2"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U53", "Parent" : "2"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U54", "Parent" : "2"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U55", "Parent" : "2"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U56", "Parent" : "2"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U57", "Parent" : "2"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U58", "Parent" : "2"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U59", "Parent" : "2"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U60", "Parent" : "2"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U61", "Parent" : "2"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U62", "Parent" : "2"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U63", "Parent" : "2"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.mac_muladd_8s_2s_10s_10_4_1_U64", "Parent" : "2"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardHidden_fu_1732.grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835", "Parent" : "0", "Child" : ["69"],
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
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_5", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_6", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_7", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_8", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "output_9", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "WEIGHTS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Port" : "WEIGHTS", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321", "Parent" : "68", "Child" : ["70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
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
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U263", "Parent" : "69"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U264", "Parent" : "69"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U265", "Parent" : "69"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U266", "Parent" : "69"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U267", "Parent" : "69"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U268", "Parent" : "69"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U269", "Parent" : "69"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U270", "Parent" : "69"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U271", "Parent" : "69"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U272", "Parent" : "69"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U273", "Parent" : "69"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U274", "Parent" : "69"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U275", "Parent" : "69"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U276", "Parent" : "69"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U277", "Parent" : "69"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mul_8s_2s_10_1_1_U278", "Parent" : "69"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U279", "Parent" : "69"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U280", "Parent" : "69"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U281", "Parent" : "69"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U282", "Parent" : "69"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U283", "Parent" : "69"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U284", "Parent" : "69"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U285", "Parent" : "69"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U286", "Parent" : "69"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U287", "Parent" : "69"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U288", "Parent" : "69"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U289", "Parent" : "69"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U290", "Parent" : "69"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U291", "Parent" : "69"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U292", "Parent" : "69"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U293", "Parent" : "69"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.mac_muladd_8s_2s_10s_11_4_1_U294", "Parent" : "69"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forwardOutput_fu_1835.grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884", "Parent" : "0", "Child" : ["104", "105", "106", "107", "108"],
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
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884.sparsemux_21_4_2_1_1_U384", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884.sparsemux_21_4_2_1_1_U385", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884.sparsemux_129_6_2_1_1_U386", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884.mul_2s_3s_4_1_1_U387", "Parent" : "103"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975", "Parent" : "0", "Child" : ["110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144"],
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
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.sparsemux_21_4_2_1_1_U477", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.sparsemux_21_4_2_1_1_U478", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U479", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U480", "Parent" : "109"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U481", "Parent" : "109"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U482", "Parent" : "109"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U483", "Parent" : "109"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U484", "Parent" : "109"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U485", "Parent" : "109"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U486", "Parent" : "109"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U487", "Parent" : "109"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U488", "Parent" : "109"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U489", "Parent" : "109"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U490", "Parent" : "109"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U491", "Parent" : "109"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U492", "Parent" : "109"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U493", "Parent" : "109"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U494", "Parent" : "109"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U495", "Parent" : "109"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U496", "Parent" : "109"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U497", "Parent" : "109"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U498", "Parent" : "109"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U499", "Parent" : "109"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U500", "Parent" : "109"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U501", "Parent" : "109"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U502", "Parent" : "109"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U503", "Parent" : "109"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U504", "Parent" : "109"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U505", "Parent" : "109"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U506", "Parent" : "109"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U507", "Parent" : "109"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U508", "Parent" : "109"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U509", "Parent" : "109"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.mac_muladd_3s_2s_8s_9_4_1_U510", "Parent" : "109"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateOutput_fu_1975.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WEIGHTS_m_axi_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U566", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U567", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U568", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U569", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U570", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U571", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U572", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U573", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U574", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U575", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U576", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U577", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U578", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U579", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U580", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U581", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U582", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U583", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U584", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U585", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U586", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U587", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U588", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U589", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U590", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U591", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U592", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U593", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U594", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U595", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U596", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U597", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U598", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U599", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U600", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U601", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U602", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U603", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U604", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_4_1_1_U605", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U606", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U607", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U608", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U609", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U610", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U611", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U612", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U613", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U614", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U615", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U616", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U617", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U618", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U619", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U620", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U621", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U622", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U623", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U624", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U625", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U626", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U627", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U628", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U629", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U630", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U631", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U632", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U633", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U634", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U635", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U636", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U637", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U638", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U639", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U640", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U641", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U642", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_5s_5_4_1_U643", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U644", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_5s_5_4_1_U645", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U646", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_5s_5_4_1_U647", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_4s_5_4_1_U648", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2s_2s_5s_5_4_1_U649", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step {
		WEIGHTS {Type IO LastRead 74 FirstWrite -1}
		img_pos {Type I LastRead 32 FirstWrite -1}
		img_neg {Type I LastRead 36 FirstWrite -1}
		sample_idx {Type I LastRead -1 FirstWrite -1}
		W1 {Type I LastRead 32 FirstWrite -1}
		W2 {Type I LastRead 32 FirstWrite -1}}
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
		sext_ln36 {Type I LastRead 0 FirstWrite -1}}
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
		sext_ln54 {Type I LastRead 0 FirstWrite -1}}
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
		in_pos_63 {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "4855", "Max" : "7705"}
	, {"Name" : "Interval", "Min" : "4856", "Max" : "7706"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	WEIGHTS { m_axi {  { m_axi_WEIGHTS_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_AWREADY READY 0 1 }  { m_axi_WEIGHTS_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_AWID ID 1 1 }  { m_axi_WEIGHTS_AWLEN SIZE 1 8 }  { m_axi_WEIGHTS_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_AWREGION USER 1 4 }  { m_axi_WEIGHTS_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_WVALID VALID 1 1 }  { m_axi_WEIGHTS_WREADY READY 0 1 }  { m_axi_WEIGHTS_WDATA FIFONUM 1 32 }  { m_axi_WEIGHTS_WSTRB STRB 1 4 }  { m_axi_WEIGHTS_WLAST LAST 1 1 }  { m_axi_WEIGHTS_WID ID 1 1 }  { m_axi_WEIGHTS_WUSER DATA 1 1 }  { m_axi_WEIGHTS_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_ARREADY READY 0 1 }  { m_axi_WEIGHTS_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_ARID ID 1 1 }  { m_axi_WEIGHTS_ARLEN SIZE 1 8 }  { m_axi_WEIGHTS_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_ARREGION USER 1 4 }  { m_axi_WEIGHTS_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_RVALID VALID 0 1 }  { m_axi_WEIGHTS_RREADY READY 1 1 }  { m_axi_WEIGHTS_RDATA FIFONUM 0 32 }  { m_axi_WEIGHTS_RLAST LAST 0 1 }  { m_axi_WEIGHTS_RID ID 0 1 }  { m_axi_WEIGHTS_RUSER DATA 0 1 }  { m_axi_WEIGHTS_RRESP RESP 0 2 }  { m_axi_WEIGHTS_BVALID VALID 0 1 }  { m_axi_WEIGHTS_BREADY READY 1 1 }  { m_axi_WEIGHTS_BRESP RESP 0 2 }  { m_axi_WEIGHTS_BID ID 0 1 }  { m_axi_WEIGHTS_BUSER DATA 0 1 } } }
	img_pos { ap_memory {  { img_pos_address0 mem_address 1 6 }  { img_pos_ce0 mem_ce 1 1 }  { img_pos_q0 mem_dout 0 8 }  { img_pos_address1 MemPortADDR2 1 6 }  { img_pos_ce1 MemPortCE2 1 1 }  { img_pos_q1 MemPortDOUT2 0 8 } } }
	img_neg { ap_memory {  { img_neg_address0 mem_address 1 6 }  { img_neg_ce0 mem_ce 1 1 }  { img_neg_q0 mem_dout 0 8 }  { img_neg_address1 MemPortADDR2 1 6 }  { img_neg_ce1 MemPortCE2 1 1 }  { img_neg_q1 MemPortDOUT2 0 8 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict WEIGHTS { CHANNEL_NUM 0 BUNDLE WEIGHTS NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ WEIGHTS 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ WEIGHTS 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
