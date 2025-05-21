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
    id 335 \
    name hidden_neg \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename hidden_neg \
    op interface \
    ports { hidden_neg_address0 { O 5 vector } hidden_neg_ce0 { O 1 bit } hidden_neg_we0 { O 1 bit } hidden_neg_d0 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hidden_neg'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
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
    id 270 \
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
    id 271 \
    name input_1_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_cast \
    op interface \
    ports { input_1_load_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name input_1_load_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_1_cast \
    op interface \
    ports { input_1_load_1_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name input_1_load_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_2_cast \
    op interface \
    ports { input_1_load_2_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name input_1_load_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_3_cast \
    op interface \
    ports { input_1_load_3_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name input_1_load_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_4_cast \
    op interface \
    ports { input_1_load_4_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name input_1_load_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_5_cast \
    op interface \
    ports { input_1_load_5_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name input_1_load_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_6_cast \
    op interface \
    ports { input_1_load_6_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name input_1_load_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_7_cast \
    op interface \
    ports { input_1_load_7_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name input_1_load_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_8_cast \
    op interface \
    ports { input_1_load_8_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name input_1_load_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_9_cast \
    op interface \
    ports { input_1_load_9_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name input_1_load_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_10_cast \
    op interface \
    ports { input_1_load_10_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name input_1_load_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_11_cast \
    op interface \
    ports { input_1_load_11_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name input_1_load_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_12_cast \
    op interface \
    ports { input_1_load_12_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name input_1_load_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_13_cast \
    op interface \
    ports { input_1_load_13_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name input_1_load_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_14_cast \
    op interface \
    ports { input_1_load_14_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name input_1_load_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_15_cast \
    op interface \
    ports { input_1_load_15_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name input_1_load_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_16_cast \
    op interface \
    ports { input_1_load_16_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name input_1_load_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_17_cast \
    op interface \
    ports { input_1_load_17_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name input_1_load_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_18_cast \
    op interface \
    ports { input_1_load_18_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name input_1_load_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_19_cast \
    op interface \
    ports { input_1_load_19_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name input_1_load_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_20_cast \
    op interface \
    ports { input_1_load_20_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name input_1_load_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_21_cast \
    op interface \
    ports { input_1_load_21_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name input_1_load_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_22_cast \
    op interface \
    ports { input_1_load_22_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name input_1_load_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_23_cast \
    op interface \
    ports { input_1_load_23_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name input_1_load_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_24_cast \
    op interface \
    ports { input_1_load_24_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name input_1_load_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_25_cast \
    op interface \
    ports { input_1_load_25_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name input_1_load_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_26_cast \
    op interface \
    ports { input_1_load_26_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name input_1_load_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_27_cast \
    op interface \
    ports { input_1_load_27_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name input_1_load_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_28_cast \
    op interface \
    ports { input_1_load_28_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name input_1_load_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_29_cast \
    op interface \
    ports { input_1_load_29_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name input_1_load_30_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_30_cast \
    op interface \
    ports { input_1_load_30_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name input_1_load_31_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_31_cast \
    op interface \
    ports { input_1_load_31_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name input_1_load_32_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_32_cast \
    op interface \
    ports { input_1_load_32_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name input_1_load_33_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_33_cast \
    op interface \
    ports { input_1_load_33_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name input_1_load_34_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_34_cast \
    op interface \
    ports { input_1_load_34_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name input_1_load_35_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_35_cast \
    op interface \
    ports { input_1_load_35_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name input_1_load_36_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_36_cast \
    op interface \
    ports { input_1_load_36_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name input_1_load_37_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_37_cast \
    op interface \
    ports { input_1_load_37_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name input_1_load_38_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_38_cast \
    op interface \
    ports { input_1_load_38_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name input_1_load_39_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_39_cast \
    op interface \
    ports { input_1_load_39_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name input_1_load_40_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_40_cast \
    op interface \
    ports { input_1_load_40_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name input_1_load_41_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_41_cast \
    op interface \
    ports { input_1_load_41_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name input_1_load_42_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_42_cast \
    op interface \
    ports { input_1_load_42_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name input_1_load_43_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_43_cast \
    op interface \
    ports { input_1_load_43_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name input_1_load_44_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_44_cast \
    op interface \
    ports { input_1_load_44_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name input_1_load_45_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_45_cast \
    op interface \
    ports { input_1_load_45_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name input_1_load_46_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_46_cast \
    op interface \
    ports { input_1_load_46_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name input_1_load_47_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_47_cast \
    op interface \
    ports { input_1_load_47_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name input_1_load_48_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_48_cast \
    op interface \
    ports { input_1_load_48_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name input_1_load_49_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_49_cast \
    op interface \
    ports { input_1_load_49_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name input_1_load_50_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_50_cast \
    op interface \
    ports { input_1_load_50_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name input_1_load_51_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_51_cast \
    op interface \
    ports { input_1_load_51_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name input_1_load_52_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_52_cast \
    op interface \
    ports { input_1_load_52_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name input_1_load_53_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_53_cast \
    op interface \
    ports { input_1_load_53_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name input_1_load_54_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_54_cast \
    op interface \
    ports { input_1_load_54_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name input_1_load_55_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_55_cast \
    op interface \
    ports { input_1_load_55_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name input_1_load_56_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_56_cast \
    op interface \
    ports { input_1_load_56_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name input_1_load_57_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_57_cast \
    op interface \
    ports { input_1_load_57_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name input_1_load_58_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_58_cast \
    op interface \
    ports { input_1_load_58_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name input_1_load_59_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_59_cast \
    op interface \
    ports { input_1_load_59_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name input_1_load_60_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_60_cast \
    op interface \
    ports { input_1_load_60_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name input_1_load_61_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_61_cast \
    op interface \
    ports { input_1_load_61_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name input_1_load_62_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_load_62_cast \
    op interface \
    ports { input_1_load_62_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name sext_ln28_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln28_2 \
    op interface \
    ports { sext_ln28_2 { I 2 vector } } \
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


