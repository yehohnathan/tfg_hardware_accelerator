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

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 469 \
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
    id 470 \
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
    id 468 \
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
    id 471 \
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
    id 472 \
    name input_load_cast184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_cast184 \
    op interface \
    ports { input_load_cast184 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name input_load_1_cast185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_1_cast185 \
    op interface \
    ports { input_load_1_cast185 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name input_load_2_cast186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_2_cast186 \
    op interface \
    ports { input_load_2_cast186 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name input_load_3_cast187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_3_cast187 \
    op interface \
    ports { input_load_3_cast187 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name input_load_4_cast188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_4_cast188 \
    op interface \
    ports { input_load_4_cast188 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name input_load_5_cast189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_5_cast189 \
    op interface \
    ports { input_load_5_cast189 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name input_load_6_cast190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_6_cast190 \
    op interface \
    ports { input_load_6_cast190 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name input_load_7_cast191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_7_cast191 \
    op interface \
    ports { input_load_7_cast191 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name input_load_8_cast192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_8_cast192 \
    op interface \
    ports { input_load_8_cast192 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name input_load_9_cast193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_9_cast193 \
    op interface \
    ports { input_load_9_cast193 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name input_load_10_cast194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_10_cast194 \
    op interface \
    ports { input_load_10_cast194 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name input_load_11_cast195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_11_cast195 \
    op interface \
    ports { input_load_11_cast195 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name input_load_12_cast196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_12_cast196 \
    op interface \
    ports { input_load_12_cast196 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name input_load_13_cast197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_13_cast197 \
    op interface \
    ports { input_load_13_cast197 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name input_load_14_cast198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_14_cast198 \
    op interface \
    ports { input_load_14_cast198 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name input_load_15_cast199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_15_cast199 \
    op interface \
    ports { input_load_15_cast199 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name input_load_16_cast200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_16_cast200 \
    op interface \
    ports { input_load_16_cast200 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name input_load_17_cast201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_17_cast201 \
    op interface \
    ports { input_load_17_cast201 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name input_load_18_cast202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_18_cast202 \
    op interface \
    ports { input_load_18_cast202 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name input_load_19_cast203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_19_cast203 \
    op interface \
    ports { input_load_19_cast203 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name input_load_20_cast204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_20_cast204 \
    op interface \
    ports { input_load_20_cast204 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name input_load_21_cast205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_21_cast205 \
    op interface \
    ports { input_load_21_cast205 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name input_load_22_cast206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_22_cast206 \
    op interface \
    ports { input_load_22_cast206 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name input_load_23_cast207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_23_cast207 \
    op interface \
    ports { input_load_23_cast207 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name input_load_24_cast208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_24_cast208 \
    op interface \
    ports { input_load_24_cast208 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name input_load_25_cast209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_25_cast209 \
    op interface \
    ports { input_load_25_cast209 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name input_load_26_cast210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_26_cast210 \
    op interface \
    ports { input_load_26_cast210 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name input_load_27_cast211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_27_cast211 \
    op interface \
    ports { input_load_27_cast211 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name input_load_28_cast212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_28_cast212 \
    op interface \
    ports { input_load_28_cast212 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name input_load_29_cast213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_29_cast213 \
    op interface \
    ports { input_load_29_cast213 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name input_load_30_cast214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_30_cast214 \
    op interface \
    ports { input_load_30_cast214 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name input_load_31_cast215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_31_cast215 \
    op interface \
    ports { input_load_31_cast215 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name input_load_32_cast216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_32_cast216 \
    op interface \
    ports { input_load_32_cast216 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name input_load_33_cast217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_33_cast217 \
    op interface \
    ports { input_load_33_cast217 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name input_load_34_cast218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_34_cast218 \
    op interface \
    ports { input_load_34_cast218 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name input_load_35_cast219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_35_cast219 \
    op interface \
    ports { input_load_35_cast219 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name input_load_36_cast220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_36_cast220 \
    op interface \
    ports { input_load_36_cast220 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name input_load_37_cast221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_37_cast221 \
    op interface \
    ports { input_load_37_cast221 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name input_load_38_cast222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_38_cast222 \
    op interface \
    ports { input_load_38_cast222 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name input_load_39_cast223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_39_cast223 \
    op interface \
    ports { input_load_39_cast223 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name input_load_40_cast224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_40_cast224 \
    op interface \
    ports { input_load_40_cast224 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name input_load_41_cast225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_41_cast225 \
    op interface \
    ports { input_load_41_cast225 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name input_load_42_cast226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_42_cast226 \
    op interface \
    ports { input_load_42_cast226 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name input_load_43_cast227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_43_cast227 \
    op interface \
    ports { input_load_43_cast227 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name input_load_44_cast228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_44_cast228 \
    op interface \
    ports { input_load_44_cast228 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name input_load_45_cast229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_45_cast229 \
    op interface \
    ports { input_load_45_cast229 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name input_load_46_cast230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_46_cast230 \
    op interface \
    ports { input_load_46_cast230 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name input_load_47_cast231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_47_cast231 \
    op interface \
    ports { input_load_47_cast231 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name input_load_48_cast232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_48_cast232 \
    op interface \
    ports { input_load_48_cast232 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name input_load_49_cast233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_49_cast233 \
    op interface \
    ports { input_load_49_cast233 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name input_load_50_cast234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_50_cast234 \
    op interface \
    ports { input_load_50_cast234 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name input_load_51_cast235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_51_cast235 \
    op interface \
    ports { input_load_51_cast235 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name input_load_52_cast236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_52_cast236 \
    op interface \
    ports { input_load_52_cast236 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name input_load_53_cast237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_53_cast237 \
    op interface \
    ports { input_load_53_cast237 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name input_load_54_cast238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_54_cast238 \
    op interface \
    ports { input_load_54_cast238 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name input_load_55_cast239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_55_cast239 \
    op interface \
    ports { input_load_55_cast239 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name input_load_56_cast240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_56_cast240 \
    op interface \
    ports { input_load_56_cast240 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name input_load_57_cast241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_57_cast241 \
    op interface \
    ports { input_load_57_cast241 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name input_load_58_cast242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_58_cast242 \
    op interface \
    ports { input_load_58_cast242 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name input_load_59_cast243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_59_cast243 \
    op interface \
    ports { input_load_59_cast243 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name input_load_60_cast244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_60_cast244 \
    op interface \
    ports { input_load_60_cast244 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name input_load_61_cast245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_61_cast245 \
    op interface \
    ports { input_load_61_cast245 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name input_load_62_cast246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_load_62_cast246 \
    op interface \
    ports { input_load_62_cast246 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name sext_ln28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln28 \
    op interface \
    ports { sext_ln28 { I 2 vector } } \
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


