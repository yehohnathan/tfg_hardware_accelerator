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
set cdfgNum 10
set C_modelName {train_step}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict img_pos { MEM_WIDTH 8 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict img_neg { MEM_WIDTH 8 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 2}  }
	{ img_pos int 8 regular {array 64 { 1 3 } 1 1 }  }
	{ img_neg int 8 regular {array 64 { 1 3 } 1 1 }  }
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
set portNum 88
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
	{ img_neg_address0 sc_out sc_lv 6 signal 2 } 
	{ img_neg_ce0 sc_out sc_logic 1 signal 2 } 
	{ img_neg_q0 sc_in sc_lv 8 signal 2 } 
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
 	{ "name": "img_neg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "img_neg", "role": "address0" }} , 
 	{ "name": "img_neg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_neg", "role": "ce0" }} , 
 	{ "name": "img_neg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_neg", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "75", "109", "175", "209", "275", "309", "310", "311"],
		"CDFG" : "train_step",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8829", "EstimateLatencyMax" : "8829",
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
					{"Name" : "WEIGHTS_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838", "Port" : "WEIGHTS", "Inst_start_state" : "35", "Inst_end_state" : "36"},
					{"ID" : "75", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912", "Port" : "WEIGHTS", "Inst_start_state" : "53", "Inst_end_state" : "54"},
					{"ID" : "109", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954", "Port" : "WEIGHTS", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "175", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028", "Port" : "WEIGHTS", "Inst_start_state" : "81", "Inst_end_state" : "82"},
					{"ID" : "209", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070", "Port" : "WEIGHTS", "Inst_start_state" : "83", "Inst_end_state" : "84"},
					{"ID" : "275", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143", "Port" : "WEIGHTS", "Inst_start_state" : "85", "Inst_end_state" : "86"}]},
			{"Name" : "img_pos", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_118_1_fu_1826", "Port" : "img_pos", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "img_neg", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_train_step_Pipeline_VITIS_LOOP_118_1_fu_1826", "Port" : "img_neg", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "sample_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_pos_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_neg_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hidden_pos_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hidden_neg_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_pos_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_neg_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_118_1_fu_1826", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_118_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_pos", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_pos", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "img_neg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_neg", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_118_1_fu_1826.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "input_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_30_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_31_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_32_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_33_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_34_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_35_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_36_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_37_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_38_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_39_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_40_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_41_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_42_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_43_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_44_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_45_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_46_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_47_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_48_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_49_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_50_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_51_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_52_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_53_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_54_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_55_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_57_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_58_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_59_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_60_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_61_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_62_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln28_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_pos", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U5", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U6", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U7", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U8", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U9", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U10", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U11", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U12", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U13", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U14", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U15", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U16", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U17", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U18", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U19", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U20", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U21", "Parent" : "9"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U22", "Parent" : "9"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U23", "Parent" : "9"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U24", "Parent" : "9"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U25", "Parent" : "9"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U26", "Parent" : "9"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U27", "Parent" : "9"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U28", "Parent" : "9"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U29", "Parent" : "9"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U30", "Parent" : "9"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U31", "Parent" : "9"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U32", "Parent" : "9"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U33", "Parent" : "9"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U34", "Parent" : "9"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U35", "Parent" : "9"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mul_8s_2s_10_1_1_U36", "Parent" : "9"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U37", "Parent" : "9"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U38", "Parent" : "9"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U39", "Parent" : "9"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U40", "Parent" : "9"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U41", "Parent" : "9"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U42", "Parent" : "9"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U43", "Parent" : "9"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U44", "Parent" : "9"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U45", "Parent" : "9"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U46", "Parent" : "9"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U47", "Parent" : "9"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U48", "Parent" : "9"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U49", "Parent" : "9"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U50", "Parent" : "9"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U51", "Parent" : "9"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U52", "Parent" : "9"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U53", "Parent" : "9"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U54", "Parent" : "9"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U55", "Parent" : "9"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U56", "Parent" : "9"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U57", "Parent" : "9"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U58", "Parent" : "9"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U59", "Parent" : "9"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U60", "Parent" : "9"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U61", "Parent" : "9"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U62", "Parent" : "9"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U63", "Parent" : "9"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U64", "Parent" : "9"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U65", "Parent" : "9"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U66", "Parent" : "9"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U67", "Parent" : "9"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.mac_muladd_8s_2s_10s_10_4_1_U68", "Parent" : "9"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_1_fu_1838.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912", "Parent" : "0", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
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
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U138", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U139", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U140", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U141", "Parent" : "75"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U142", "Parent" : "75"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U143", "Parent" : "75"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U144", "Parent" : "75"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U145", "Parent" : "75"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U146", "Parent" : "75"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U147", "Parent" : "75"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U148", "Parent" : "75"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U149", "Parent" : "75"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U150", "Parent" : "75"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U151", "Parent" : "75"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U152", "Parent" : "75"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mul_8s_2s_10_1_1_U153", "Parent" : "75"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U154", "Parent" : "75"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U155", "Parent" : "75"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U156", "Parent" : "75"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U157", "Parent" : "75"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U158", "Parent" : "75"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U159", "Parent" : "75"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U160", "Parent" : "75"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U161", "Parent" : "75"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U162", "Parent" : "75"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U163", "Parent" : "75"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U164", "Parent" : "75"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U165", "Parent" : "75"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U166", "Parent" : "75"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U167", "Parent" : "75"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U168", "Parent" : "75"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.mac_muladd_8s_2s_10s_10_4_1_U169", "Parent" : "75"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_1_fu_1912.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954", "Parent" : "0", "Child" : ["110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
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
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U205", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U206", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U207", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U208", "Parent" : "109"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U209", "Parent" : "109"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U210", "Parent" : "109"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U211", "Parent" : "109"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U212", "Parent" : "109"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U213", "Parent" : "109"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U214", "Parent" : "109"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U215", "Parent" : "109"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U216", "Parent" : "109"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U217", "Parent" : "109"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U218", "Parent" : "109"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U219", "Parent" : "109"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U220", "Parent" : "109"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U221", "Parent" : "109"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U222", "Parent" : "109"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U223", "Parent" : "109"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U224", "Parent" : "109"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U225", "Parent" : "109"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U226", "Parent" : "109"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U227", "Parent" : "109"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U228", "Parent" : "109"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U229", "Parent" : "109"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U230", "Parent" : "109"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U231", "Parent" : "109"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U232", "Parent" : "109"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U233", "Parent" : "109"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U234", "Parent" : "109"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U235", "Parent" : "109"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mul_8s_2s_10_1_1_U236", "Parent" : "109"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U237", "Parent" : "109"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U238", "Parent" : "109"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U239", "Parent" : "109"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U240", "Parent" : "109"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U241", "Parent" : "109"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U242", "Parent" : "109"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U243", "Parent" : "109"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U244", "Parent" : "109"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U245", "Parent" : "109"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U246", "Parent" : "109"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U247", "Parent" : "109"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U248", "Parent" : "109"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U249", "Parent" : "109"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U250", "Parent" : "109"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U251", "Parent" : "109"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U252", "Parent" : "109"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U253", "Parent" : "109"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U254", "Parent" : "109"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U255", "Parent" : "109"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U256", "Parent" : "109"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U257", "Parent" : "109"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U258", "Parent" : "109"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U259", "Parent" : "109"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U260", "Parent" : "109"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U261", "Parent" : "109"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U262", "Parent" : "109"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U263", "Parent" : "109"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U264", "Parent" : "109"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U265", "Parent" : "109"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U266", "Parent" : "109"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U267", "Parent" : "109"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.mac_muladd_8s_2s_10s_10_4_1_U268", "Parent" : "109"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_28_11_fu_1954.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028", "Parent" : "0", "Child" : ["176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_45_12",
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
			{"Name" : "hidden_1_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "hidden_neg_load_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln45_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_neg", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U336", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U337", "Parent" : "175"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U338", "Parent" : "175"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U339", "Parent" : "175"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U340", "Parent" : "175"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U341", "Parent" : "175"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U342", "Parent" : "175"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U343", "Parent" : "175"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U344", "Parent" : "175"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U345", "Parent" : "175"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U346", "Parent" : "175"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U347", "Parent" : "175"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U348", "Parent" : "175"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U349", "Parent" : "175"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U350", "Parent" : "175"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mul_8s_2s_10_1_1_U351", "Parent" : "175"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U352", "Parent" : "175"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U353", "Parent" : "175"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U354", "Parent" : "175"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U355", "Parent" : "175"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U356", "Parent" : "175"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U357", "Parent" : "175"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U358", "Parent" : "175"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U359", "Parent" : "175"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U360", "Parent" : "175"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U361", "Parent" : "175"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U362", "Parent" : "175"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U363", "Parent" : "175"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U364", "Parent" : "175"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U365", "Parent" : "175"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U366", "Parent" : "175"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.mac_muladd_8s_2s_10s_10_4_1_U367", "Parent" : "175"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_45_12_fu_2028.flow_control_loop_pipe_sequential_init_U", "Parent" : "175"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070", "Parent" : "0", "Child" : ["210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274"],
		"CDFG" : "train_step_Pipeline_VITIS_LOOP_64_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3074", "EstimateLatencyMax" : "3074",
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
			{"Name" : "W1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_cast184", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_1_cast185", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_2_cast186", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_3_cast187", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_4_cast188", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_5_cast189", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_6_cast190", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_7_cast191", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_8_cast192", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_9_cast193", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_10_cast194", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_11_cast195", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_12_cast196", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_13_cast197", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_14_cast198", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_15_cast199", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_16_cast200", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_17_cast201", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_18_cast202", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_19_cast203", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_20_cast204", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_21_cast205", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_22_cast206", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_23_cast207", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_24_cast208", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_25_cast209", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_26_cast210", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_27_cast211", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_28_cast212", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_29_cast213", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_30_cast214", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_31_cast215", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_32_cast216", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_33_cast217", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_34_cast218", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_35_cast219", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_36_cast220", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_37_cast221", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_38_cast222", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_39_cast223", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_40_cast224", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_41_cast225", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_42_cast226", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_43_cast227", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_44_cast228", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_45_cast229", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_46_cast230", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_47_cast231", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_48_cast232", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_49_cast233", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_50_cast234", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_51_cast235", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_52_cast236", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_53_cast237", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_54_cast238", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_55_cast239", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_56_cast240", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_57_cast241", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_58_cast242", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_59_cast243", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_60_cast244", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_61_cast245", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_load_62_cast246", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln28", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U403", "Parent" : "209"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U404", "Parent" : "209"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U405", "Parent" : "209"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U406", "Parent" : "209"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U407", "Parent" : "209"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U408", "Parent" : "209"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U409", "Parent" : "209"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U410", "Parent" : "209"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U411", "Parent" : "209"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U412", "Parent" : "209"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U413", "Parent" : "209"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U414", "Parent" : "209"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U415", "Parent" : "209"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U416", "Parent" : "209"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U417", "Parent" : "209"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U418", "Parent" : "209"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U419", "Parent" : "209"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U420", "Parent" : "209"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U421", "Parent" : "209"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U422", "Parent" : "209"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U423", "Parent" : "209"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U424", "Parent" : "209"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U425", "Parent" : "209"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U426", "Parent" : "209"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U427", "Parent" : "209"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U428", "Parent" : "209"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U429", "Parent" : "209"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U430", "Parent" : "209"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U431", "Parent" : "209"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U432", "Parent" : "209"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U433", "Parent" : "209"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U434", "Parent" : "209"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U435", "Parent" : "209"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U436", "Parent" : "209"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U437", "Parent" : "209"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U438", "Parent" : "209"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U439", "Parent" : "209"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U440", "Parent" : "209"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U441", "Parent" : "209"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U442", "Parent" : "209"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U443", "Parent" : "209"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U444", "Parent" : "209"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U445", "Parent" : "209"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U446", "Parent" : "209"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U447", "Parent" : "209"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U448", "Parent" : "209"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U449", "Parent" : "209"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U450", "Parent" : "209"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U451", "Parent" : "209"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U452", "Parent" : "209"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U453", "Parent" : "209"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U454", "Parent" : "209"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U455", "Parent" : "209"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U456", "Parent" : "209"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U457", "Parent" : "209"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U458", "Parent" : "209"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U459", "Parent" : "209"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U460", "Parent" : "209"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U461", "Parent" : "209"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U462", "Parent" : "209"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U463", "Parent" : "209"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U464", "Parent" : "209"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U465", "Parent" : "209"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.mac_muladd_3s_2s_8s_9_4_1_U466", "Parent" : "209"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_64_1_fu_2070.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143", "Parent" : "0", "Child" : ["276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308"],
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
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U536", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U537", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U538", "Parent" : "275"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U539", "Parent" : "275"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U540", "Parent" : "275"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U541", "Parent" : "275"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U542", "Parent" : "275"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U543", "Parent" : "275"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U544", "Parent" : "275"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U545", "Parent" : "275"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U546", "Parent" : "275"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U547", "Parent" : "275"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U548", "Parent" : "275"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U549", "Parent" : "275"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U550", "Parent" : "275"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U551", "Parent" : "275"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U552", "Parent" : "275"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U553", "Parent" : "275"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U554", "Parent" : "275"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U555", "Parent" : "275"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U556", "Parent" : "275"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U557", "Parent" : "275"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U558", "Parent" : "275"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U559", "Parent" : "275"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U560", "Parent" : "275"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U561", "Parent" : "275"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U562", "Parent" : "275"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U563", "Parent" : "275"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U564", "Parent" : "275"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U565", "Parent" : "275"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U566", "Parent" : "275"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.mac_muladd_3s_2s_8s_9_4_1_U567", "Parent" : "275"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_train_step_Pipeline_VITIS_LOOP_85_1_fu_2143.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WEIGHTS_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	train_step {
		WEIGHTS {Type IO LastRead 1084 FirstWrite -1}
		img_pos {Type I LastRead 0 FirstWrite -1}
		img_neg {Type I LastRead 0 FirstWrite -1}
		sample_idx {Type I LastRead -1 FirstWrite -1}
		W1 {Type I LastRead 25 FirstWrite -1}
		W2 {Type I LastRead 25 FirstWrite -1}}
	train_step_Pipeline_VITIS_LOOP_118_1 {
		img_pos {Type I LastRead 0 FirstWrite -1}
		in_pos {Type O LastRead -1 FirstWrite 1}
		img_neg {Type I LastRead 0 FirstWrite -1}
		in_neg {Type O LastRead -1 FirstWrite 1}}
	train_step_Pipeline_VITIS_LOOP_28_1 {
		WEIGHTS {Type I LastRead 64 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}
		input_load_cast {Type I LastRead 0 FirstWrite -1}
		input_load_1_cast {Type I LastRead 0 FirstWrite -1}
		input_load_2_cast {Type I LastRead 0 FirstWrite -1}
		input_load_3_cast {Type I LastRead 0 FirstWrite -1}
		input_load_4_cast {Type I LastRead 0 FirstWrite -1}
		input_load_5_cast {Type I LastRead 0 FirstWrite -1}
		input_load_6_cast {Type I LastRead 0 FirstWrite -1}
		input_load_7_cast {Type I LastRead 0 FirstWrite -1}
		input_load_8_cast {Type I LastRead 0 FirstWrite -1}
		input_load_9_cast {Type I LastRead 0 FirstWrite -1}
		input_load_10_cast {Type I LastRead 0 FirstWrite -1}
		input_load_11_cast {Type I LastRead 0 FirstWrite -1}
		input_load_12_cast {Type I LastRead 0 FirstWrite -1}
		input_load_13_cast {Type I LastRead 0 FirstWrite -1}
		input_load_14_cast {Type I LastRead 0 FirstWrite -1}
		input_load_15_cast {Type I LastRead 0 FirstWrite -1}
		input_load_16_cast {Type I LastRead 0 FirstWrite -1}
		input_load_17_cast {Type I LastRead 0 FirstWrite -1}
		input_load_18_cast {Type I LastRead 0 FirstWrite -1}
		input_load_19_cast {Type I LastRead 0 FirstWrite -1}
		input_load_20_cast {Type I LastRead 0 FirstWrite -1}
		input_load_21_cast {Type I LastRead 0 FirstWrite -1}
		input_load_22_cast {Type I LastRead 0 FirstWrite -1}
		input_load_23_cast {Type I LastRead 0 FirstWrite -1}
		input_load_24_cast {Type I LastRead 0 FirstWrite -1}
		input_load_25_cast {Type I LastRead 0 FirstWrite -1}
		input_load_26_cast {Type I LastRead 0 FirstWrite -1}
		input_load_27_cast {Type I LastRead 0 FirstWrite -1}
		input_load_28_cast {Type I LastRead 0 FirstWrite -1}
		input_load_29_cast {Type I LastRead 0 FirstWrite -1}
		input_load_30_cast {Type I LastRead 0 FirstWrite -1}
		input_load_31_cast {Type I LastRead 0 FirstWrite -1}
		input_load_32_cast {Type I LastRead 0 FirstWrite -1}
		input_load_33_cast {Type I LastRead 0 FirstWrite -1}
		input_load_34_cast {Type I LastRead 0 FirstWrite -1}
		input_load_35_cast {Type I LastRead 0 FirstWrite -1}
		input_load_36_cast {Type I LastRead 0 FirstWrite -1}
		input_load_37_cast {Type I LastRead 0 FirstWrite -1}
		input_load_38_cast {Type I LastRead 0 FirstWrite -1}
		input_load_39_cast {Type I LastRead 0 FirstWrite -1}
		input_load_40_cast {Type I LastRead 0 FirstWrite -1}
		input_load_41_cast {Type I LastRead 0 FirstWrite -1}
		input_load_42_cast {Type I LastRead 0 FirstWrite -1}
		input_load_43_cast {Type I LastRead 0 FirstWrite -1}
		input_load_44_cast {Type I LastRead 0 FirstWrite -1}
		input_load_45_cast {Type I LastRead 0 FirstWrite -1}
		input_load_46_cast {Type I LastRead 0 FirstWrite -1}
		input_load_47_cast {Type I LastRead 0 FirstWrite -1}
		input_load_48_cast {Type I LastRead 0 FirstWrite -1}
		input_load_49_cast {Type I LastRead 0 FirstWrite -1}
		input_load_50_cast {Type I LastRead 0 FirstWrite -1}
		input_load_51_cast {Type I LastRead 0 FirstWrite -1}
		input_load_52_cast {Type I LastRead 0 FirstWrite -1}
		input_load_53_cast {Type I LastRead 0 FirstWrite -1}
		input_load_54_cast {Type I LastRead 0 FirstWrite -1}
		input_load_55_cast {Type I LastRead 0 FirstWrite -1}
		input_load_56_cast {Type I LastRead 0 FirstWrite -1}
		input_load_57_cast {Type I LastRead 0 FirstWrite -1}
		input_load_58_cast {Type I LastRead 0 FirstWrite -1}
		input_load_59_cast {Type I LastRead 0 FirstWrite -1}
		input_load_60_cast {Type I LastRead 0 FirstWrite -1}
		input_load_61_cast {Type I LastRead 0 FirstWrite -1}
		input_load_62_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln28_1 {Type I LastRead 0 FirstWrite -1}
		hidden_pos {Type O LastRead -1 FirstWrite 71}}
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
		out_pos {Type O LastRead -1 FirstWrite 38}}
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
		hidden_neg {Type O LastRead -1 FirstWrite 71}}
	train_step_Pipeline_VITIS_LOOP_45_12 {
		WEIGHTS {Type I LastRead 32 FirstWrite -1}
		W2 {Type I LastRead 0 FirstWrite -1}
		hidden_1_load_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_1_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_2_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_3_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_4_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_5_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_6_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_7_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_8_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_9_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_10_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_11_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_12_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_13_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_14_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_15_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_16_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_17_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_18_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_19_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_20_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_21_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_22_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_23_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_24_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_25_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_26_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_27_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_28_cast {Type I LastRead 0 FirstWrite -1}
		hidden_neg_load_29_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln45_2 {Type I LastRead 0 FirstWrite -1}
		out_neg {Type O LastRead -1 FirstWrite 38}}
	train_step_Pipeline_VITIS_LOOP_64_1 {
		WEIGHTS {Type IO LastRead 1084 FirstWrite 12}
		out_pos {Type I LastRead 0 FirstWrite -1}
		out_neg {Type I LastRead 0 FirstWrite -1}
		W1 {Type I LastRead 0 FirstWrite -1}
		input_load_cast184 {Type I LastRead 0 FirstWrite -1}
		input_load_1_cast185 {Type I LastRead 0 FirstWrite -1}
		input_load_2_cast186 {Type I LastRead 0 FirstWrite -1}
		input_load_3_cast187 {Type I LastRead 0 FirstWrite -1}
		input_load_4_cast188 {Type I LastRead 0 FirstWrite -1}
		input_load_5_cast189 {Type I LastRead 0 FirstWrite -1}
		input_load_6_cast190 {Type I LastRead 0 FirstWrite -1}
		input_load_7_cast191 {Type I LastRead 0 FirstWrite -1}
		input_load_8_cast192 {Type I LastRead 0 FirstWrite -1}
		input_load_9_cast193 {Type I LastRead 0 FirstWrite -1}
		input_load_10_cast194 {Type I LastRead 0 FirstWrite -1}
		input_load_11_cast195 {Type I LastRead 0 FirstWrite -1}
		input_load_12_cast196 {Type I LastRead 0 FirstWrite -1}
		input_load_13_cast197 {Type I LastRead 0 FirstWrite -1}
		input_load_14_cast198 {Type I LastRead 0 FirstWrite -1}
		input_load_15_cast199 {Type I LastRead 0 FirstWrite -1}
		input_load_16_cast200 {Type I LastRead 0 FirstWrite -1}
		input_load_17_cast201 {Type I LastRead 0 FirstWrite -1}
		input_load_18_cast202 {Type I LastRead 0 FirstWrite -1}
		input_load_19_cast203 {Type I LastRead 0 FirstWrite -1}
		input_load_20_cast204 {Type I LastRead 0 FirstWrite -1}
		input_load_21_cast205 {Type I LastRead 0 FirstWrite -1}
		input_load_22_cast206 {Type I LastRead 0 FirstWrite -1}
		input_load_23_cast207 {Type I LastRead 0 FirstWrite -1}
		input_load_24_cast208 {Type I LastRead 0 FirstWrite -1}
		input_load_25_cast209 {Type I LastRead 0 FirstWrite -1}
		input_load_26_cast210 {Type I LastRead 0 FirstWrite -1}
		input_load_27_cast211 {Type I LastRead 0 FirstWrite -1}
		input_load_28_cast212 {Type I LastRead 0 FirstWrite -1}
		input_load_29_cast213 {Type I LastRead 0 FirstWrite -1}
		input_load_30_cast214 {Type I LastRead 0 FirstWrite -1}
		input_load_31_cast215 {Type I LastRead 0 FirstWrite -1}
		input_load_32_cast216 {Type I LastRead 0 FirstWrite -1}
		input_load_33_cast217 {Type I LastRead 0 FirstWrite -1}
		input_load_34_cast218 {Type I LastRead 0 FirstWrite -1}
		input_load_35_cast219 {Type I LastRead 0 FirstWrite -1}
		input_load_36_cast220 {Type I LastRead 0 FirstWrite -1}
		input_load_37_cast221 {Type I LastRead 0 FirstWrite -1}
		input_load_38_cast222 {Type I LastRead 0 FirstWrite -1}
		input_load_39_cast223 {Type I LastRead 0 FirstWrite -1}
		input_load_40_cast224 {Type I LastRead 0 FirstWrite -1}
		input_load_41_cast225 {Type I LastRead 0 FirstWrite -1}
		input_load_42_cast226 {Type I LastRead 0 FirstWrite -1}
		input_load_43_cast227 {Type I LastRead 0 FirstWrite -1}
		input_load_44_cast228 {Type I LastRead 0 FirstWrite -1}
		input_load_45_cast229 {Type I LastRead 0 FirstWrite -1}
		input_load_46_cast230 {Type I LastRead 0 FirstWrite -1}
		input_load_47_cast231 {Type I LastRead 0 FirstWrite -1}
		input_load_48_cast232 {Type I LastRead 0 FirstWrite -1}
		input_load_49_cast233 {Type I LastRead 0 FirstWrite -1}
		input_load_50_cast234 {Type I LastRead 0 FirstWrite -1}
		input_load_51_cast235 {Type I LastRead 0 FirstWrite -1}
		input_load_52_cast236 {Type I LastRead 0 FirstWrite -1}
		input_load_53_cast237 {Type I LastRead 0 FirstWrite -1}
		input_load_54_cast238 {Type I LastRead 0 FirstWrite -1}
		input_load_55_cast239 {Type I LastRead 0 FirstWrite -1}
		input_load_56_cast240 {Type I LastRead 0 FirstWrite -1}
		input_load_57_cast241 {Type I LastRead 0 FirstWrite -1}
		input_load_58_cast242 {Type I LastRead 0 FirstWrite -1}
		input_load_59_cast243 {Type I LastRead 0 FirstWrite -1}
		input_load_60_cast244 {Type I LastRead 0 FirstWrite -1}
		input_load_61_cast245 {Type I LastRead 0 FirstWrite -1}
		input_load_62_cast246 {Type I LastRead 0 FirstWrite -1}
		sext_ln28 {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "8829", "Max" : "8829"}
	, {"Name" : "Interval", "Min" : "8830", "Max" : "8830"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	WEIGHTS { m_axi {  { m_axi_WEIGHTS_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_AWREADY READY 0 1 }  { m_axi_WEIGHTS_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_AWID ID 1 1 }  { m_axi_WEIGHTS_AWLEN SIZE 1 8 }  { m_axi_WEIGHTS_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_AWREGION USER 1 4 }  { m_axi_WEIGHTS_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_WVALID VALID 1 1 }  { m_axi_WEIGHTS_WREADY READY 0 1 }  { m_axi_WEIGHTS_WDATA FIFONUM 1 32 }  { m_axi_WEIGHTS_WSTRB STRB 1 4 }  { m_axi_WEIGHTS_WLAST LAST 1 1 }  { m_axi_WEIGHTS_WID ID 1 1 }  { m_axi_WEIGHTS_WUSER DATA 1 1 }  { m_axi_WEIGHTS_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_ARREADY READY 0 1 }  { m_axi_WEIGHTS_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_ARID ID 1 1 }  { m_axi_WEIGHTS_ARLEN SIZE 1 8 }  { m_axi_WEIGHTS_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_ARREGION USER 1 4 }  { m_axi_WEIGHTS_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_RVALID VALID 0 1 }  { m_axi_WEIGHTS_RREADY READY 1 1 }  { m_axi_WEIGHTS_RDATA FIFONUM 0 32 }  { m_axi_WEIGHTS_RLAST LAST 0 1 }  { m_axi_WEIGHTS_RID ID 0 1 }  { m_axi_WEIGHTS_RUSER DATA 0 1 }  { m_axi_WEIGHTS_RRESP RESP 0 2 }  { m_axi_WEIGHTS_BVALID VALID 0 1 }  { m_axi_WEIGHTS_BREADY READY 1 1 }  { m_axi_WEIGHTS_BRESP RESP 0 2 }  { m_axi_WEIGHTS_BID ID 0 1 }  { m_axi_WEIGHTS_BUSER DATA 0 1 } } }
	img_pos { ap_memory {  { img_pos_address0 mem_address 1 6 }  { img_pos_ce0 mem_ce 1 1 }  { img_pos_q0 mem_dout 0 8 } } }
	img_neg { ap_memory {  { img_neg_address0 mem_address 1 6 }  { img_neg_ce0 mem_ce 1 1 }  { img_neg_q0 mem_dout 0 8 } } }
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
