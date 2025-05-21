# This script segment is generated automatically by AutoPilot

set name train_step_mul_8s_2s_10_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_mac_muladd_8s_2s_10s_10_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name hidden_pos \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename hidden_pos \
    op interface \
    ports { hidden_pos_address0 { O 5 vector } hidden_pos_ce0 { O 1 bit } hidden_pos_we0 { O 1 bit } hidden_pos_d0 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hidden_pos'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name WEIGHTS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WEIGHTS \
    op interface \
    ports { m_axi_WEIGHTS_0_AWVALID { O 1 bit } m_axi_WEIGHTS_0_AWREADY { I 1 bit } m_axi_WEIGHTS_0_AWADDR { O 64 vector } m_axi_WEIGHTS_0_AWID { O 1 vector } m_axi_WEIGHTS_0_AWLEN { O 32 vector } m_axi_WEIGHTS_0_AWSIZE { O 3 vector } m_axi_WEIGHTS_0_AWBURST { O 2 vector } m_axi_WEIGHTS_0_AWLOCK { O 2 vector } m_axi_WEIGHTS_0_AWCACHE { O 4 vector } m_axi_WEIGHTS_0_AWPROT { O 3 vector } m_axi_WEIGHTS_0_AWQOS { O 4 vector } m_axi_WEIGHTS_0_AWREGION { O 4 vector } m_axi_WEIGHTS_0_AWUSER { O 1 vector } m_axi_WEIGHTS_0_WVALID { O 1 bit } m_axi_WEIGHTS_0_WREADY { I 1 bit } m_axi_WEIGHTS_0_WDATA { O 8 vector } m_axi_WEIGHTS_0_WSTRB { O 1 vector } m_axi_WEIGHTS_0_WLAST { O 1 bit } m_axi_WEIGHTS_0_WID { O 1 vector } m_axi_WEIGHTS_0_WUSER { O 1 vector } m_axi_WEIGHTS_0_ARVALID { O 1 bit } m_axi_WEIGHTS_0_ARREADY { I 1 bit } m_axi_WEIGHTS_0_ARADDR { O 64 vector } m_axi_WEIGHTS_0_ARID { O 1 vector } m_axi_WEIGHTS_0_ARLEN { O 32 vector } m_axi_WEIGHTS_0_ARSIZE { O 3 vector } m_axi_WEIGHTS_0_ARBURST { O 2 vector } m_axi_WEIGHTS_0_ARLOCK { O 2 vector } m_axi_WEIGHTS_0_ARCACHE { O 4 vector } m_axi_WEIGHTS_0_ARPROT { O 3 vector } m_axi_WEIGHTS_0_ARQOS { O 4 vector } m_axi_WEIGHTS_0_ARREGION { O 4 vector } m_axi_WEIGHTS_0_ARUSER { O 1 vector } m_axi_WEIGHTS_0_RVALID { I 1 bit } m_axi_WEIGHTS_0_RREADY { O 1 bit } m_axi_WEIGHTS_0_RDATA { I 8 vector } m_axi_WEIGHTS_0_RLAST { I 1 bit } m_axi_WEIGHTS_0_RID { I 1 vector } m_axi_WEIGHTS_0_RFIFONUM { I 11 vector } m_axi_WEIGHTS_0_RUSER { I 1 vector } m_axi_WEIGHTS_0_RRESP { I 2 vector } m_axi_WEIGHTS_0_BVALID { I 1 bit } m_axi_WEIGHTS_0_BREADY { O 1 bit } m_axi_WEIGHTS_0_BRESP { I 2 vector } m_axi_WEIGHTS_0_BID { I 1 vector } m_axi_WEIGHTS_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name W1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1 \
    op interface \
    ports { W1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name input_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_cast \
    op interface \
    ports { input_load_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name input_load_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_1_cast \
    op interface \
    ports { input_load_1_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name input_load_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_2_cast \
    op interface \
    ports { input_load_2_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name input_load_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_3_cast \
    op interface \
    ports { input_load_3_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name input_load_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_4_cast \
    op interface \
    ports { input_load_4_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name input_load_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_5_cast \
    op interface \
    ports { input_load_5_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name input_load_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_6_cast \
    op interface \
    ports { input_load_6_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name input_load_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_7_cast \
    op interface \
    ports { input_load_7_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name input_load_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_8_cast \
    op interface \
    ports { input_load_8_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name input_load_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_9_cast \
    op interface \
    ports { input_load_9_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name input_load_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_10_cast \
    op interface \
    ports { input_load_10_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name input_load_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_11_cast \
    op interface \
    ports { input_load_11_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name input_load_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_12_cast \
    op interface \
    ports { input_load_12_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name input_load_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_13_cast \
    op interface \
    ports { input_load_13_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name input_load_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_14_cast \
    op interface \
    ports { input_load_14_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name input_load_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_15_cast \
    op interface \
    ports { input_load_15_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name input_load_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_16_cast \
    op interface \
    ports { input_load_16_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name input_load_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_17_cast \
    op interface \
    ports { input_load_17_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name input_load_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_18_cast \
    op interface \
    ports { input_load_18_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name input_load_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_19_cast \
    op interface \
    ports { input_load_19_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name input_load_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_20_cast \
    op interface \
    ports { input_load_20_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name input_load_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_21_cast \
    op interface \
    ports { input_load_21_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name input_load_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_22_cast \
    op interface \
    ports { input_load_22_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name input_load_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_23_cast \
    op interface \
    ports { input_load_23_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name input_load_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_24_cast \
    op interface \
    ports { input_load_24_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name input_load_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_25_cast \
    op interface \
    ports { input_load_25_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name input_load_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_26_cast \
    op interface \
    ports { input_load_26_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name input_load_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_27_cast \
    op interface \
    ports { input_load_27_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name input_load_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_28_cast \
    op interface \
    ports { input_load_28_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name input_load_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_29_cast \
    op interface \
    ports { input_load_29_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name input_load_30_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_30_cast \
    op interface \
    ports { input_load_30_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name input_load_31_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_31_cast \
    op interface \
    ports { input_load_31_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name input_load_32_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_32_cast \
    op interface \
    ports { input_load_32_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name input_load_33_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_33_cast \
    op interface \
    ports { input_load_33_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name input_load_34_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_34_cast \
    op interface \
    ports { input_load_34_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name input_load_35_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_35_cast \
    op interface \
    ports { input_load_35_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name input_load_36_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_36_cast \
    op interface \
    ports { input_load_36_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name input_load_37_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_37_cast \
    op interface \
    ports { input_load_37_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name input_load_38_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_38_cast \
    op interface \
    ports { input_load_38_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name input_load_39_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_39_cast \
    op interface \
    ports { input_load_39_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name input_load_40_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_40_cast \
    op interface \
    ports { input_load_40_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name input_load_41_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_41_cast \
    op interface \
    ports { input_load_41_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name input_load_42_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_42_cast \
    op interface \
    ports { input_load_42_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name input_load_43_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_43_cast \
    op interface \
    ports { input_load_43_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name input_load_44_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_44_cast \
    op interface \
    ports { input_load_44_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name input_load_45_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_45_cast \
    op interface \
    ports { input_load_45_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name input_load_46_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_46_cast \
    op interface \
    ports { input_load_46_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name input_load_47_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_47_cast \
    op interface \
    ports { input_load_47_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name input_load_48_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_48_cast \
    op interface \
    ports { input_load_48_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name input_load_49_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_49_cast \
    op interface \
    ports { input_load_49_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name input_load_50_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_50_cast \
    op interface \
    ports { input_load_50_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name input_load_51_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_51_cast \
    op interface \
    ports { input_load_51_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name input_load_52_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_52_cast \
    op interface \
    ports { input_load_52_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name input_load_53_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_53_cast \
    op interface \
    ports { input_load_53_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name input_load_54_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_54_cast \
    op interface \
    ports { input_load_54_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name input_load_55_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_55_cast \
    op interface \
    ports { input_load_55_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name input_load_56_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_56_cast \
    op interface \
    ports { input_load_56_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name input_load_57_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_57_cast \
    op interface \
    ports { input_load_57_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name input_load_58_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_58_cast \
    op interface \
    ports { input_load_58_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name input_load_59_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_59_cast \
    op interface \
    ports { input_load_59_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name input_load_60_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_60_cast \
    op interface \
    ports { input_load_60_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name input_load_61_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_61_cast \
    op interface \
    ports { input_load_61_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name input_load_62_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_62_cast \
    op interface \
    ports { input_load_62_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name sext_ln28_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln28_1 \
    op interface \
    ports { sext_ln28_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName train_step_flow_control_loop_pipe_sequential_init_U
set CompName train_step_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix train_step_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


