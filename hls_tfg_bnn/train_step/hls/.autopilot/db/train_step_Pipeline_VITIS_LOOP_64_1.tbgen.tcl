set moduleName train_step_Pipeline_VITIS_LOOP_64_1
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
set C_modelName {train_step_Pipeline_VITIS_LOOP_64_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict out_pos { MEM_WIDTH 2 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_neg { MEM_WIDTH 2 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ WEIGHTS int 8 regular {axi_master 2}  }
	{ out_pos int 2 regular {array 10 { 1 3 } 1 1 }  }
	{ out_neg int 2 regular {array 10 { 1 3 } 1 1 }  }
	{ W1 int 64 regular  }
	{ input_load_cast184 int 2 regular  }
	{ input_load_1_cast185 int 2 regular  }
	{ input_load_2_cast186 int 2 regular  }
	{ input_load_3_cast187 int 2 regular  }
	{ input_load_4_cast188 int 2 regular  }
	{ input_load_5_cast189 int 2 regular  }
	{ input_load_6_cast190 int 2 regular  }
	{ input_load_7_cast191 int 2 regular  }
	{ input_load_8_cast192 int 2 regular  }
	{ input_load_9_cast193 int 2 regular  }
	{ input_load_10_cast194 int 2 regular  }
	{ input_load_11_cast195 int 2 regular  }
	{ input_load_12_cast196 int 2 regular  }
	{ input_load_13_cast197 int 2 regular  }
	{ input_load_14_cast198 int 2 regular  }
	{ input_load_15_cast199 int 2 regular  }
	{ input_load_16_cast200 int 2 regular  }
	{ input_load_17_cast201 int 2 regular  }
	{ input_load_18_cast202 int 2 regular  }
	{ input_load_19_cast203 int 2 regular  }
	{ input_load_20_cast204 int 2 regular  }
	{ input_load_21_cast205 int 2 regular  }
	{ input_load_22_cast206 int 2 regular  }
	{ input_load_23_cast207 int 2 regular  }
	{ input_load_24_cast208 int 2 regular  }
	{ input_load_25_cast209 int 2 regular  }
	{ input_load_26_cast210 int 2 regular  }
	{ input_load_27_cast211 int 2 regular  }
	{ input_load_28_cast212 int 2 regular  }
	{ input_load_29_cast213 int 2 regular  }
	{ input_load_30_cast214 int 2 regular  }
	{ input_load_31_cast215 int 2 regular  }
	{ input_load_32_cast216 int 2 regular  }
	{ input_load_33_cast217 int 2 regular  }
	{ input_load_34_cast218 int 2 regular  }
	{ input_load_35_cast219 int 2 regular  }
	{ input_load_36_cast220 int 2 regular  }
	{ input_load_37_cast221 int 2 regular  }
	{ input_load_38_cast222 int 2 regular  }
	{ input_load_39_cast223 int 2 regular  }
	{ input_load_40_cast224 int 2 regular  }
	{ input_load_41_cast225 int 2 regular  }
	{ input_load_42_cast226 int 2 regular  }
	{ input_load_43_cast227 int 2 regular  }
	{ input_load_44_cast228 int 2 regular  }
	{ input_load_45_cast229 int 2 regular  }
	{ input_load_46_cast230 int 2 regular  }
	{ input_load_47_cast231 int 2 regular  }
	{ input_load_48_cast232 int 2 regular  }
	{ input_load_49_cast233 int 2 regular  }
	{ input_load_50_cast234 int 2 regular  }
	{ input_load_51_cast235 int 2 regular  }
	{ input_load_52_cast236 int 2 regular  }
	{ input_load_53_cast237 int 2 regular  }
	{ input_load_54_cast238 int 2 regular  }
	{ input_load_55_cast239 int 2 regular  }
	{ input_load_56_cast240 int 2 regular  }
	{ input_load_57_cast241 int 2 regular  }
	{ input_load_58_cast242 int 2 regular  }
	{ input_load_59_cast243 int 2 regular  }
	{ input_load_60_cast244 int 2 regular  }
	{ input_load_61_cast245 int 2 regular  }
	{ input_load_62_cast246 int 2 regular  }
	{ sext_ln28 int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "WEIGHTS", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "W1","offset": { "type": "dynamic","port_name": "W1","bundle": "control"},"direction": "READWRITE"},{"cName": "W2","offset": { "type": "dynamic","port_name": "W2","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "out_pos", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "out_neg", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "W1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_cast184", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_1_cast185", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_2_cast186", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_3_cast187", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_4_cast188", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_5_cast189", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_6_cast190", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_7_cast191", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_8_cast192", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_9_cast193", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_10_cast194", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_11_cast195", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_12_cast196", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_13_cast197", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_14_cast198", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_15_cast199", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_16_cast200", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_17_cast201", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_18_cast202", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_19_cast203", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_20_cast204", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_21_cast205", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_22_cast206", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_23_cast207", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_24_cast208", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_25_cast209", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_26_cast210", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_27_cast211", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_28_cast212", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_29_cast213", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_30_cast214", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_31_cast215", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_32_cast216", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_33_cast217", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_34_cast218", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_35_cast219", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_36_cast220", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_37_cast221", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_38_cast222", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_39_cast223", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_40_cast224", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_41_cast225", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_42_cast226", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_43_cast227", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_44_cast228", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_45_cast229", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_46_cast230", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_47_cast231", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_48_cast232", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_49_cast233", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_50_cast234", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_51_cast235", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_52_cast236", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_53_cast237", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_54_cast238", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_55_cast239", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_56_cast240", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_57_cast241", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_58_cast242", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_59_cast243", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_60_cast244", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_61_cast245", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "input_load_62_cast246", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln28", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 123
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
	{ W1 sc_in sc_lv 64 signal 3 } 
	{ input_load_cast184 sc_in sc_lv 2 signal 4 } 
	{ input_load_1_cast185 sc_in sc_lv 2 signal 5 } 
	{ input_load_2_cast186 sc_in sc_lv 2 signal 6 } 
	{ input_load_3_cast187 sc_in sc_lv 2 signal 7 } 
	{ input_load_4_cast188 sc_in sc_lv 2 signal 8 } 
	{ input_load_5_cast189 sc_in sc_lv 2 signal 9 } 
	{ input_load_6_cast190 sc_in sc_lv 2 signal 10 } 
	{ input_load_7_cast191 sc_in sc_lv 2 signal 11 } 
	{ input_load_8_cast192 sc_in sc_lv 2 signal 12 } 
	{ input_load_9_cast193 sc_in sc_lv 2 signal 13 } 
	{ input_load_10_cast194 sc_in sc_lv 2 signal 14 } 
	{ input_load_11_cast195 sc_in sc_lv 2 signal 15 } 
	{ input_load_12_cast196 sc_in sc_lv 2 signal 16 } 
	{ input_load_13_cast197 sc_in sc_lv 2 signal 17 } 
	{ input_load_14_cast198 sc_in sc_lv 2 signal 18 } 
	{ input_load_15_cast199 sc_in sc_lv 2 signal 19 } 
	{ input_load_16_cast200 sc_in sc_lv 2 signal 20 } 
	{ input_load_17_cast201 sc_in sc_lv 2 signal 21 } 
	{ input_load_18_cast202 sc_in sc_lv 2 signal 22 } 
	{ input_load_19_cast203 sc_in sc_lv 2 signal 23 } 
	{ input_load_20_cast204 sc_in sc_lv 2 signal 24 } 
	{ input_load_21_cast205 sc_in sc_lv 2 signal 25 } 
	{ input_load_22_cast206 sc_in sc_lv 2 signal 26 } 
	{ input_load_23_cast207 sc_in sc_lv 2 signal 27 } 
	{ input_load_24_cast208 sc_in sc_lv 2 signal 28 } 
	{ input_load_25_cast209 sc_in sc_lv 2 signal 29 } 
	{ input_load_26_cast210 sc_in sc_lv 2 signal 30 } 
	{ input_load_27_cast211 sc_in sc_lv 2 signal 31 } 
	{ input_load_28_cast212 sc_in sc_lv 2 signal 32 } 
	{ input_load_29_cast213 sc_in sc_lv 2 signal 33 } 
	{ input_load_30_cast214 sc_in sc_lv 2 signal 34 } 
	{ input_load_31_cast215 sc_in sc_lv 2 signal 35 } 
	{ input_load_32_cast216 sc_in sc_lv 2 signal 36 } 
	{ input_load_33_cast217 sc_in sc_lv 2 signal 37 } 
	{ input_load_34_cast218 sc_in sc_lv 2 signal 38 } 
	{ input_load_35_cast219 sc_in sc_lv 2 signal 39 } 
	{ input_load_36_cast220 sc_in sc_lv 2 signal 40 } 
	{ input_load_37_cast221 sc_in sc_lv 2 signal 41 } 
	{ input_load_38_cast222 sc_in sc_lv 2 signal 42 } 
	{ input_load_39_cast223 sc_in sc_lv 2 signal 43 } 
	{ input_load_40_cast224 sc_in sc_lv 2 signal 44 } 
	{ input_load_41_cast225 sc_in sc_lv 2 signal 45 } 
	{ input_load_42_cast226 sc_in sc_lv 2 signal 46 } 
	{ input_load_43_cast227 sc_in sc_lv 2 signal 47 } 
	{ input_load_44_cast228 sc_in sc_lv 2 signal 48 } 
	{ input_load_45_cast229 sc_in sc_lv 2 signal 49 } 
	{ input_load_46_cast230 sc_in sc_lv 2 signal 50 } 
	{ input_load_47_cast231 sc_in sc_lv 2 signal 51 } 
	{ input_load_48_cast232 sc_in sc_lv 2 signal 52 } 
	{ input_load_49_cast233 sc_in sc_lv 2 signal 53 } 
	{ input_load_50_cast234 sc_in sc_lv 2 signal 54 } 
	{ input_load_51_cast235 sc_in sc_lv 2 signal 55 } 
	{ input_load_52_cast236 sc_in sc_lv 2 signal 56 } 
	{ input_load_53_cast237 sc_in sc_lv 2 signal 57 } 
	{ input_load_54_cast238 sc_in sc_lv 2 signal 58 } 
	{ input_load_55_cast239 sc_in sc_lv 2 signal 59 } 
	{ input_load_56_cast240 sc_in sc_lv 2 signal 60 } 
	{ input_load_57_cast241 sc_in sc_lv 2 signal 61 } 
	{ input_load_58_cast242 sc_in sc_lv 2 signal 62 } 
	{ input_load_59_cast243 sc_in sc_lv 2 signal 63 } 
	{ input_load_60_cast244 sc_in sc_lv 2 signal 64 } 
	{ input_load_61_cast245 sc_in sc_lv 2 signal 65 } 
	{ input_load_62_cast246 sc_in sc_lv 2 signal 66 } 
	{ sext_ln28 sc_in sc_lv 2 signal 67 } 
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
 	{ "name": "W1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1", "role": "default" }} , 
 	{ "name": "input_load_cast184", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_cast184", "role": "default" }} , 
 	{ "name": "input_load_1_cast185", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_1_cast185", "role": "default" }} , 
 	{ "name": "input_load_2_cast186", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_2_cast186", "role": "default" }} , 
 	{ "name": "input_load_3_cast187", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_3_cast187", "role": "default" }} , 
 	{ "name": "input_load_4_cast188", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_4_cast188", "role": "default" }} , 
 	{ "name": "input_load_5_cast189", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_5_cast189", "role": "default" }} , 
 	{ "name": "input_load_6_cast190", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_6_cast190", "role": "default" }} , 
 	{ "name": "input_load_7_cast191", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_7_cast191", "role": "default" }} , 
 	{ "name": "input_load_8_cast192", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_8_cast192", "role": "default" }} , 
 	{ "name": "input_load_9_cast193", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_9_cast193", "role": "default" }} , 
 	{ "name": "input_load_10_cast194", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_10_cast194", "role": "default" }} , 
 	{ "name": "input_load_11_cast195", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_11_cast195", "role": "default" }} , 
 	{ "name": "input_load_12_cast196", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_12_cast196", "role": "default" }} , 
 	{ "name": "input_load_13_cast197", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_13_cast197", "role": "default" }} , 
 	{ "name": "input_load_14_cast198", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_14_cast198", "role": "default" }} , 
 	{ "name": "input_load_15_cast199", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_15_cast199", "role": "default" }} , 
 	{ "name": "input_load_16_cast200", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_16_cast200", "role": "default" }} , 
 	{ "name": "input_load_17_cast201", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_17_cast201", "role": "default" }} , 
 	{ "name": "input_load_18_cast202", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_18_cast202", "role": "default" }} , 
 	{ "name": "input_load_19_cast203", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_19_cast203", "role": "default" }} , 
 	{ "name": "input_load_20_cast204", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_20_cast204", "role": "default" }} , 
 	{ "name": "input_load_21_cast205", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_21_cast205", "role": "default" }} , 
 	{ "name": "input_load_22_cast206", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_22_cast206", "role": "default" }} , 
 	{ "name": "input_load_23_cast207", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_23_cast207", "role": "default" }} , 
 	{ "name": "input_load_24_cast208", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_24_cast208", "role": "default" }} , 
 	{ "name": "input_load_25_cast209", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_25_cast209", "role": "default" }} , 
 	{ "name": "input_load_26_cast210", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_26_cast210", "role": "default" }} , 
 	{ "name": "input_load_27_cast211", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_27_cast211", "role": "default" }} , 
 	{ "name": "input_load_28_cast212", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_28_cast212", "role": "default" }} , 
 	{ "name": "input_load_29_cast213", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_29_cast213", "role": "default" }} , 
 	{ "name": "input_load_30_cast214", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_30_cast214", "role": "default" }} , 
 	{ "name": "input_load_31_cast215", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_31_cast215", "role": "default" }} , 
 	{ "name": "input_load_32_cast216", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_32_cast216", "role": "default" }} , 
 	{ "name": "input_load_33_cast217", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_33_cast217", "role": "default" }} , 
 	{ "name": "input_load_34_cast218", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_34_cast218", "role": "default" }} , 
 	{ "name": "input_load_35_cast219", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_35_cast219", "role": "default" }} , 
 	{ "name": "input_load_36_cast220", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_36_cast220", "role": "default" }} , 
 	{ "name": "input_load_37_cast221", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_37_cast221", "role": "default" }} , 
 	{ "name": "input_load_38_cast222", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_38_cast222", "role": "default" }} , 
 	{ "name": "input_load_39_cast223", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_39_cast223", "role": "default" }} , 
 	{ "name": "input_load_40_cast224", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_40_cast224", "role": "default" }} , 
 	{ "name": "input_load_41_cast225", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_41_cast225", "role": "default" }} , 
 	{ "name": "input_load_42_cast226", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_42_cast226", "role": "default" }} , 
 	{ "name": "input_load_43_cast227", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_43_cast227", "role": "default" }} , 
 	{ "name": "input_load_44_cast228", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_44_cast228", "role": "default" }} , 
 	{ "name": "input_load_45_cast229", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_45_cast229", "role": "default" }} , 
 	{ "name": "input_load_46_cast230", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_46_cast230", "role": "default" }} , 
 	{ "name": "input_load_47_cast231", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_47_cast231", "role": "default" }} , 
 	{ "name": "input_load_48_cast232", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_48_cast232", "role": "default" }} , 
 	{ "name": "input_load_49_cast233", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_49_cast233", "role": "default" }} , 
 	{ "name": "input_load_50_cast234", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_50_cast234", "role": "default" }} , 
 	{ "name": "input_load_51_cast235", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_51_cast235", "role": "default" }} , 
 	{ "name": "input_load_52_cast236", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_52_cast236", "role": "default" }} , 
 	{ "name": "input_load_53_cast237", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_53_cast237", "role": "default" }} , 
 	{ "name": "input_load_54_cast238", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_54_cast238", "role": "default" }} , 
 	{ "name": "input_load_55_cast239", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_55_cast239", "role": "default" }} , 
 	{ "name": "input_load_56_cast240", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_56_cast240", "role": "default" }} , 
 	{ "name": "input_load_57_cast241", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_57_cast241", "role": "default" }} , 
 	{ "name": "input_load_58_cast242", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_58_cast242", "role": "default" }} , 
 	{ "name": "input_load_59_cast243", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_59_cast243", "role": "default" }} , 
 	{ "name": "input_load_60_cast244", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_60_cast244", "role": "default" }} , 
 	{ "name": "input_load_61_cast245", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_61_cast245", "role": "default" }} , 
 	{ "name": "input_load_62_cast246", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_load_62_cast246", "role": "default" }} , 
 	{ "name": "sext_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln28", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U403", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U404", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U405", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U406", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U407", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U408", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U409", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U410", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U411", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U412", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U413", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U414", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U415", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U416", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U417", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U418", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U419", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U420", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U421", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U422", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U423", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U424", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U425", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U426", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U427", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U428", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U429", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U430", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U431", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U432", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U433", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U434", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U435", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U436", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U437", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U438", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U439", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U440", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U441", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U442", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U443", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U444", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U445", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U446", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U447", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U448", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U449", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U450", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U451", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U452", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U453", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U454", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U455", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U456", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U457", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U458", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U459", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U460", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U461", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U462", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U463", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U464", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U465", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3s_2s_8s_9_4_1_U466", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		sext_ln28 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3074", "Max" : "3074"}
	, {"Name" : "Interval", "Min" : "3074", "Max" : "3074"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_WEIGHTS_0_AWVALID VALID 1 1 }  { m_axi_WEIGHTS_0_AWREADY READY 0 1 }  { m_axi_WEIGHTS_0_AWADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_AWID ID 1 1 }  { m_axi_WEIGHTS_0_AWLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_AWSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_AWBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_AWLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_AWCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_AWPROT QOS 1 3 }  { m_axi_WEIGHTS_0_AWQOS REGION 1 4 }  { m_axi_WEIGHTS_0_AWREGION USER 1 4 }  { m_axi_WEIGHTS_0_AWUSER DATA 1 1 }  { m_axi_WEIGHTS_0_WVALID VALID 1 1 }  { m_axi_WEIGHTS_0_WREADY READY 0 1 }  { m_axi_WEIGHTS_0_WDATA FIFONUM 1 8 }  { m_axi_WEIGHTS_0_WSTRB STRB 1 1 }  { m_axi_WEIGHTS_0_WLAST LAST 1 1 }  { m_axi_WEIGHTS_0_WID ID 1 1 }  { m_axi_WEIGHTS_0_WUSER DATA 1 1 }  { m_axi_WEIGHTS_0_ARVALID VALID 1 1 }  { m_axi_WEIGHTS_0_ARREADY READY 0 1 }  { m_axi_WEIGHTS_0_ARADDR ADDR 1 64 }  { m_axi_WEIGHTS_0_ARID ID 1 1 }  { m_axi_WEIGHTS_0_ARLEN SIZE 1 32 }  { m_axi_WEIGHTS_0_ARSIZE BURST 1 3 }  { m_axi_WEIGHTS_0_ARBURST LOCK 1 2 }  { m_axi_WEIGHTS_0_ARLOCK CACHE 1 2 }  { m_axi_WEIGHTS_0_ARCACHE PROT 1 4 }  { m_axi_WEIGHTS_0_ARPROT QOS 1 3 }  { m_axi_WEIGHTS_0_ARQOS REGION 1 4 }  { m_axi_WEIGHTS_0_ARREGION USER 1 4 }  { m_axi_WEIGHTS_0_ARUSER DATA 1 1 }  { m_axi_WEIGHTS_0_RVALID VALID 0 1 }  { m_axi_WEIGHTS_0_RREADY READY 1 1 }  { m_axi_WEIGHTS_0_RDATA FIFONUM 0 8 }  { m_axi_WEIGHTS_0_RLAST LAST 0 1 }  { m_axi_WEIGHTS_0_RID ID 0 1 }  { m_axi_WEIGHTS_0_RFIFONUM LEN 0 11 }  { m_axi_WEIGHTS_0_RUSER DATA 0 1 }  { m_axi_WEIGHTS_0_RRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BVALID VALID 0 1 }  { m_axi_WEIGHTS_0_BREADY READY 1 1 }  { m_axi_WEIGHTS_0_BRESP RESP 0 2 }  { m_axi_WEIGHTS_0_BID ID 0 1 }  { m_axi_WEIGHTS_0_BUSER DATA 0 1 } } }
	out_pos { ap_memory {  { out_pos_address0 mem_address 1 4 }  { out_pos_ce0 mem_ce 1 1 }  { out_pos_q0 mem_dout 0 2 } } }
	out_neg { ap_memory {  { out_neg_address0 mem_address 1 4 }  { out_neg_ce0 mem_ce 1 1 }  { out_neg_q0 mem_dout 0 2 } } }
	W1 { ap_none {  { W1 in_data 0 64 } } }
	input_load_cast184 { ap_none {  { input_load_cast184 in_data 0 2 } } }
	input_load_1_cast185 { ap_none {  { input_load_1_cast185 in_data 0 2 } } }
	input_load_2_cast186 { ap_none {  { input_load_2_cast186 in_data 0 2 } } }
	input_load_3_cast187 { ap_none {  { input_load_3_cast187 in_data 0 2 } } }
	input_load_4_cast188 { ap_none {  { input_load_4_cast188 in_data 0 2 } } }
	input_load_5_cast189 { ap_none {  { input_load_5_cast189 in_data 0 2 } } }
	input_load_6_cast190 { ap_none {  { input_load_6_cast190 in_data 0 2 } } }
	input_load_7_cast191 { ap_none {  { input_load_7_cast191 in_data 0 2 } } }
	input_load_8_cast192 { ap_none {  { input_load_8_cast192 in_data 0 2 } } }
	input_load_9_cast193 { ap_none {  { input_load_9_cast193 in_data 0 2 } } }
	input_load_10_cast194 { ap_none {  { input_load_10_cast194 in_data 0 2 } } }
	input_load_11_cast195 { ap_none {  { input_load_11_cast195 in_data 0 2 } } }
	input_load_12_cast196 { ap_none {  { input_load_12_cast196 in_data 0 2 } } }
	input_load_13_cast197 { ap_none {  { input_load_13_cast197 in_data 0 2 } } }
	input_load_14_cast198 { ap_none {  { input_load_14_cast198 in_data 0 2 } } }
	input_load_15_cast199 { ap_none {  { input_load_15_cast199 in_data 0 2 } } }
	input_load_16_cast200 { ap_none {  { input_load_16_cast200 in_data 0 2 } } }
	input_load_17_cast201 { ap_none {  { input_load_17_cast201 in_data 0 2 } } }
	input_load_18_cast202 { ap_none {  { input_load_18_cast202 in_data 0 2 } } }
	input_load_19_cast203 { ap_none {  { input_load_19_cast203 in_data 0 2 } } }
	input_load_20_cast204 { ap_none {  { input_load_20_cast204 in_data 0 2 } } }
	input_load_21_cast205 { ap_none {  { input_load_21_cast205 in_data 0 2 } } }
	input_load_22_cast206 { ap_none {  { input_load_22_cast206 in_data 0 2 } } }
	input_load_23_cast207 { ap_none {  { input_load_23_cast207 in_data 0 2 } } }
	input_load_24_cast208 { ap_none {  { input_load_24_cast208 in_data 0 2 } } }
	input_load_25_cast209 { ap_none {  { input_load_25_cast209 in_data 0 2 } } }
	input_load_26_cast210 { ap_none {  { input_load_26_cast210 in_data 0 2 } } }
	input_load_27_cast211 { ap_none {  { input_load_27_cast211 in_data 0 2 } } }
	input_load_28_cast212 { ap_none {  { input_load_28_cast212 in_data 0 2 } } }
	input_load_29_cast213 { ap_none {  { input_load_29_cast213 in_data 0 2 } } }
	input_load_30_cast214 { ap_none {  { input_load_30_cast214 in_data 0 2 } } }
	input_load_31_cast215 { ap_none {  { input_load_31_cast215 in_data 0 2 } } }
	input_load_32_cast216 { ap_none {  { input_load_32_cast216 in_data 0 2 } } }
	input_load_33_cast217 { ap_none {  { input_load_33_cast217 in_data 0 2 } } }
	input_load_34_cast218 { ap_none {  { input_load_34_cast218 in_data 0 2 } } }
	input_load_35_cast219 { ap_none {  { input_load_35_cast219 in_data 0 2 } } }
	input_load_36_cast220 { ap_none {  { input_load_36_cast220 in_data 0 2 } } }
	input_load_37_cast221 { ap_none {  { input_load_37_cast221 in_data 0 2 } } }
	input_load_38_cast222 { ap_none {  { input_load_38_cast222 in_data 0 2 } } }
	input_load_39_cast223 { ap_none {  { input_load_39_cast223 in_data 0 2 } } }
	input_load_40_cast224 { ap_none {  { input_load_40_cast224 in_data 0 2 } } }
	input_load_41_cast225 { ap_none {  { input_load_41_cast225 in_data 0 2 } } }
	input_load_42_cast226 { ap_none {  { input_load_42_cast226 in_data 0 2 } } }
	input_load_43_cast227 { ap_none {  { input_load_43_cast227 in_data 0 2 } } }
	input_load_44_cast228 { ap_none {  { input_load_44_cast228 in_data 0 2 } } }
	input_load_45_cast229 { ap_none {  { input_load_45_cast229 in_data 0 2 } } }
	input_load_46_cast230 { ap_none {  { input_load_46_cast230 in_data 0 2 } } }
	input_load_47_cast231 { ap_none {  { input_load_47_cast231 in_data 0 2 } } }
	input_load_48_cast232 { ap_none {  { input_load_48_cast232 in_data 0 2 } } }
	input_load_49_cast233 { ap_none {  { input_load_49_cast233 in_data 0 2 } } }
	input_load_50_cast234 { ap_none {  { input_load_50_cast234 in_data 0 2 } } }
	input_load_51_cast235 { ap_none {  { input_load_51_cast235 in_data 0 2 } } }
	input_load_52_cast236 { ap_none {  { input_load_52_cast236 in_data 0 2 } } }
	input_load_53_cast237 { ap_none {  { input_load_53_cast237 in_data 0 2 } } }
	input_load_54_cast238 { ap_none {  { input_load_54_cast238 in_data 0 2 } } }
	input_load_55_cast239 { ap_none {  { input_load_55_cast239 in_data 0 2 } } }
	input_load_56_cast240 { ap_none {  { input_load_56_cast240 in_data 0 2 } } }
	input_load_57_cast241 { ap_none {  { input_load_57_cast241 in_data 0 2 } } }
	input_load_58_cast242 { ap_none {  { input_load_58_cast242 in_data 0 2 } } }
	input_load_59_cast243 { ap_none {  { input_load_59_cast243 in_data 0 2 } } }
	input_load_60_cast244 { ap_none {  { input_load_60_cast244 in_data 0 2 } } }
	input_load_61_cast245 { ap_none {  { input_load_61_cast245 in_data 0 2 } } }
	input_load_62_cast246 { ap_none {  { input_load_62_cast246 in_data 0 2 } } }
	sext_ln28 { ap_none {  { sext_ln28 in_data 0 2 } } }
}
