# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_mac_muladd_3s_2s_8s_9_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name hidden_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_0_val \
    op interface \
    ports { hidden_0_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name hidden_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_1_val \
    op interface \
    ports { hidden_1_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name hidden_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_2_val \
    op interface \
    ports { hidden_2_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name hidden_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_3_val \
    op interface \
    ports { hidden_3_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name hidden_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_4_val \
    op interface \
    ports { hidden_4_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name hidden_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_5_val \
    op interface \
    ports { hidden_5_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name hidden_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_6_val \
    op interface \
    ports { hidden_6_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name hidden_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_7_val \
    op interface \
    ports { hidden_7_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name hidden_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_8_val \
    op interface \
    ports { hidden_8_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name hidden_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_9_val \
    op interface \
    ports { hidden_9_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name hidden_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_10_val \
    op interface \
    ports { hidden_10_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name hidden_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_11_val \
    op interface \
    ports { hidden_11_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name hidden_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_12_val \
    op interface \
    ports { hidden_12_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name hidden_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_13_val \
    op interface \
    ports { hidden_13_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name hidden_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_14_val \
    op interface \
    ports { hidden_14_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name hidden_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_15_val \
    op interface \
    ports { hidden_15_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name hidden_16_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_16_val \
    op interface \
    ports { hidden_16_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name hidden_17_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_17_val \
    op interface \
    ports { hidden_17_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name hidden_18_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_18_val \
    op interface \
    ports { hidden_18_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name hidden_19_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_19_val \
    op interface \
    ports { hidden_19_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name hidden_20_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_20_val \
    op interface \
    ports { hidden_20_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name hidden_21_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_21_val \
    op interface \
    ports { hidden_21_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name hidden_22_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_22_val \
    op interface \
    ports { hidden_22_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name hidden_23_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_23_val \
    op interface \
    ports { hidden_23_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name hidden_24_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_24_val \
    op interface \
    ports { hidden_24_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name hidden_25_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_25_val \
    op interface \
    ports { hidden_25_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name hidden_26_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_26_val \
    op interface \
    ports { hidden_26_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name hidden_27_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_27_val \
    op interface \
    ports { hidden_27_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name hidden_28_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_28_val \
    op interface \
    ports { hidden_28_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name hidden_29_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_29_val \
    op interface \
    ports { hidden_29_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name hidden_30_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_30_val \
    op interface \
    ports { hidden_30_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name hidden_31_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_31_val \
    op interface \
    ports { hidden_31_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name out_pos_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_0_val \
    op interface \
    ports { out_pos_0_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name out_pos_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_1_val \
    op interface \
    ports { out_pos_1_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name out_pos_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_2_val \
    op interface \
    ports { out_pos_2_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name out_pos_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_3_val \
    op interface \
    ports { out_pos_3_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name out_pos_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_4_val \
    op interface \
    ports { out_pos_4_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name out_pos_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_5_val \
    op interface \
    ports { out_pos_5_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name out_pos_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_6_val \
    op interface \
    ports { out_pos_6_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name out_pos_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_7_val \
    op interface \
    ports { out_pos_7_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name out_pos_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_8_val \
    op interface \
    ports { out_pos_8_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name out_pos_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_9_val \
    op interface \
    ports { out_pos_9_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name out_neg_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_0_val \
    op interface \
    ports { out_neg_0_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name out_neg_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_1_val \
    op interface \
    ports { out_neg_1_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name out_neg_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_2_val \
    op interface \
    ports { out_neg_2_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name out_neg_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_3_val \
    op interface \
    ports { out_neg_3_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name out_neg_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_4_val \
    op interface \
    ports { out_neg_4_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name out_neg_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_5_val \
    op interface \
    ports { out_neg_5_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name out_neg_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_6_val \
    op interface \
    ports { out_neg_6_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name out_neg_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_7_val \
    op interface \
    ports { out_neg_7_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name out_neg_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_8_val \
    op interface \
    ports { out_neg_8_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name out_neg_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_9_val \
    op interface \
    ports { out_neg_9_val { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name WEIGHTS \
    type other \
    dir IO \
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
    id 565 \
    name W2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W2 \
    op interface \
    ports { W2 { I 64 vector } } \
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


