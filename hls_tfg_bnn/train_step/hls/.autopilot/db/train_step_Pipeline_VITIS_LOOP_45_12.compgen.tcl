# This script segment is generated automatically by AutoPilot

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
    id 402 \
    name out_neg \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_neg \
    op interface \
    ports { out_neg_address0 { O 4 vector } out_neg_ce0 { O 1 bit } out_neg_we0 { O 1 bit } out_neg_d0 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_neg'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
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
    id 369 \
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
    id 370 \
    name hidden_1_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_1_load_cast \
    op interface \
    ports { hidden_1_load_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name hidden_neg_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_cast \
    op interface \
    ports { hidden_neg_load_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name hidden_neg_load_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_1_cast \
    op interface \
    ports { hidden_neg_load_1_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name hidden_neg_load_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_2_cast \
    op interface \
    ports { hidden_neg_load_2_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name hidden_neg_load_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_3_cast \
    op interface \
    ports { hidden_neg_load_3_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name hidden_neg_load_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_4_cast \
    op interface \
    ports { hidden_neg_load_4_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name hidden_neg_load_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_5_cast \
    op interface \
    ports { hidden_neg_load_5_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name hidden_neg_load_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_6_cast \
    op interface \
    ports { hidden_neg_load_6_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name hidden_neg_load_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_7_cast \
    op interface \
    ports { hidden_neg_load_7_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name hidden_neg_load_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_8_cast \
    op interface \
    ports { hidden_neg_load_8_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name hidden_neg_load_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_9_cast \
    op interface \
    ports { hidden_neg_load_9_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name hidden_neg_load_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_10_cast \
    op interface \
    ports { hidden_neg_load_10_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name hidden_neg_load_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_11_cast \
    op interface \
    ports { hidden_neg_load_11_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name hidden_neg_load_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_12_cast \
    op interface \
    ports { hidden_neg_load_12_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name hidden_neg_load_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_13_cast \
    op interface \
    ports { hidden_neg_load_13_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name hidden_neg_load_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_14_cast \
    op interface \
    ports { hidden_neg_load_14_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name hidden_neg_load_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_15_cast \
    op interface \
    ports { hidden_neg_load_15_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name hidden_neg_load_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_16_cast \
    op interface \
    ports { hidden_neg_load_16_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name hidden_neg_load_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_17_cast \
    op interface \
    ports { hidden_neg_load_17_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name hidden_neg_load_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_18_cast \
    op interface \
    ports { hidden_neg_load_18_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name hidden_neg_load_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_19_cast \
    op interface \
    ports { hidden_neg_load_19_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name hidden_neg_load_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_20_cast \
    op interface \
    ports { hidden_neg_load_20_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name hidden_neg_load_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_21_cast \
    op interface \
    ports { hidden_neg_load_21_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name hidden_neg_load_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_22_cast \
    op interface \
    ports { hidden_neg_load_22_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name hidden_neg_load_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_23_cast \
    op interface \
    ports { hidden_neg_load_23_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name hidden_neg_load_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_24_cast \
    op interface \
    ports { hidden_neg_load_24_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name hidden_neg_load_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_25_cast \
    op interface \
    ports { hidden_neg_load_25_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name hidden_neg_load_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_26_cast \
    op interface \
    ports { hidden_neg_load_26_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name hidden_neg_load_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_27_cast \
    op interface \
    ports { hidden_neg_load_27_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name hidden_neg_load_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_28_cast \
    op interface \
    ports { hidden_neg_load_28_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name hidden_neg_load_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_neg_load_29_cast \
    op interface \
    ports { hidden_neg_load_29_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name sext_ln45_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln45_2 \
    op interface \
    ports { sext_ln45_2 { I 2 vector } } \
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


