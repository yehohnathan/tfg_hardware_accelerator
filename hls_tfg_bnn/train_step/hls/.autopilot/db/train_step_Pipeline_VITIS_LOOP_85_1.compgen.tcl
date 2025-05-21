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
    id 569 \
    name out_pos \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_pos \
    op interface \
    ports { out_pos_address0 { O 4 vector } out_pos_ce0 { O 1 bit } out_pos_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_pos'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 570 \
    name out_neg \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_neg \
    op interface \
    ports { out_neg_address0 { O 4 vector } out_neg_ce0 { O 1 bit } out_neg_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_neg'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
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
    id 571 \
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
    id 572 \
    name hidden_load_cast248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_load_cast248 \
    op interface \
    ports { hidden_load_cast248 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name hidden_pos_load_cast249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_cast249 \
    op interface \
    ports { hidden_pos_load_cast249 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name hidden_pos_load_1_cast250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_1_cast250 \
    op interface \
    ports { hidden_pos_load_1_cast250 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name hidden_pos_load_2_cast251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_2_cast251 \
    op interface \
    ports { hidden_pos_load_2_cast251 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name hidden_pos_load_3_cast252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_3_cast252 \
    op interface \
    ports { hidden_pos_load_3_cast252 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name hidden_pos_load_4_cast253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_4_cast253 \
    op interface \
    ports { hidden_pos_load_4_cast253 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name hidden_pos_load_5_cast254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_5_cast254 \
    op interface \
    ports { hidden_pos_load_5_cast254 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name hidden_pos_load_6_cast255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_6_cast255 \
    op interface \
    ports { hidden_pos_load_6_cast255 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name hidden_pos_load_7_cast256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_7_cast256 \
    op interface \
    ports { hidden_pos_load_7_cast256 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name hidden_pos_load_8_cast257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_8_cast257 \
    op interface \
    ports { hidden_pos_load_8_cast257 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name hidden_pos_load_9_cast258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_9_cast258 \
    op interface \
    ports { hidden_pos_load_9_cast258 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name hidden_pos_load_10_cast259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_10_cast259 \
    op interface \
    ports { hidden_pos_load_10_cast259 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name hidden_pos_load_11_cast260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_11_cast260 \
    op interface \
    ports { hidden_pos_load_11_cast260 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name hidden_pos_load_12_cast261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_12_cast261 \
    op interface \
    ports { hidden_pos_load_12_cast261 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name hidden_pos_load_13_cast262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_13_cast262 \
    op interface \
    ports { hidden_pos_load_13_cast262 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name hidden_pos_load_14_cast263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_14_cast263 \
    op interface \
    ports { hidden_pos_load_14_cast263 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name hidden_pos_load_15_cast264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_15_cast264 \
    op interface \
    ports { hidden_pos_load_15_cast264 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name hidden_pos_load_16_cast265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_16_cast265 \
    op interface \
    ports { hidden_pos_load_16_cast265 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name hidden_pos_load_17_cast266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_17_cast266 \
    op interface \
    ports { hidden_pos_load_17_cast266 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name hidden_pos_load_18_cast267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_18_cast267 \
    op interface \
    ports { hidden_pos_load_18_cast267 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name hidden_pos_load_19_cast268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_19_cast268 \
    op interface \
    ports { hidden_pos_load_19_cast268 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name hidden_pos_load_20_cast269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_20_cast269 \
    op interface \
    ports { hidden_pos_load_20_cast269 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name hidden_pos_load_21_cast270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_21_cast270 \
    op interface \
    ports { hidden_pos_load_21_cast270 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name hidden_pos_load_22_cast271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_22_cast271 \
    op interface \
    ports { hidden_pos_load_22_cast271 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name hidden_pos_load_23_cast272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_23_cast272 \
    op interface \
    ports { hidden_pos_load_23_cast272 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name hidden_pos_load_24_cast273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_24_cast273 \
    op interface \
    ports { hidden_pos_load_24_cast273 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name hidden_pos_load_25_cast274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_25_cast274 \
    op interface \
    ports { hidden_pos_load_25_cast274 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name hidden_pos_load_26_cast275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_26_cast275 \
    op interface \
    ports { hidden_pos_load_26_cast275 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name hidden_pos_load_27_cast276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_27_cast276 \
    op interface \
    ports { hidden_pos_load_27_cast276 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name hidden_pos_load_28_cast277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_28_cast277 \
    op interface \
    ports { hidden_pos_load_28_cast277 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name hidden_pos_load_29_cast278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hidden_pos_load_29_cast278 \
    op interface \
    ports { hidden_pos_load_29_cast278 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name sext_ln45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln45 \
    op interface \
    ports { sext_ln45 { I 2 vector } } \
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


