# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_sparsemux_21_4_2_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_sparsemux_129_6_2_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


set name train_step_mul_2s_3s_4_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 391 \
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
    id 392 \
    name out_pos_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_load \
    op interface \
    ports { out_pos_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name out_pos_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_1_load \
    op interface \
    ports { out_pos_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name out_pos_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_2_load \
    op interface \
    ports { out_pos_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name out_pos_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_3_load \
    op interface \
    ports { out_pos_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name out_pos_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_4_load \
    op interface \
    ports { out_pos_4_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name out_pos_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_5_load \
    op interface \
    ports { out_pos_5_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name out_pos_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_6_load \
    op interface \
    ports { out_pos_6_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name out_pos_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_7_load \
    op interface \
    ports { out_pos_7_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name out_pos_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_8_load \
    op interface \
    ports { out_pos_8_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name out_pos_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pos_9_load \
    op interface \
    ports { out_pos_9_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name out_neg_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_load \
    op interface \
    ports { out_neg_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name out_neg_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_1_load \
    op interface \
    ports { out_neg_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name out_neg_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_2_load \
    op interface \
    ports { out_neg_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name out_neg_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_3_load \
    op interface \
    ports { out_neg_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name out_neg_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_4_load \
    op interface \
    ports { out_neg_4_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name out_neg_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_5_load \
    op interface \
    ports { out_neg_5_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name out_neg_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_6_load \
    op interface \
    ports { out_neg_6_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name out_neg_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_7_load \
    op interface \
    ports { out_neg_7_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name out_neg_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_8_load \
    op interface \
    ports { out_neg_8_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name out_neg_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_neg_9_load \
    op interface \
    ports { out_neg_9_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
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
    id 413 \
    name in_pos \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos \
    op interface \
    ports { in_pos { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name in_pos_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_1 \
    op interface \
    ports { in_pos_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name in_pos_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_2 \
    op interface \
    ports { in_pos_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name in_pos_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_3 \
    op interface \
    ports { in_pos_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name in_pos_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_4 \
    op interface \
    ports { in_pos_4 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name in_pos_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_5 \
    op interface \
    ports { in_pos_5 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name in_pos_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_6 \
    op interface \
    ports { in_pos_6 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name in_pos_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_7 \
    op interface \
    ports { in_pos_7 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name in_pos_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_8 \
    op interface \
    ports { in_pos_8 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name in_pos_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_9 \
    op interface \
    ports { in_pos_9 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name in_pos_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_10 \
    op interface \
    ports { in_pos_10 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name in_pos_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_11 \
    op interface \
    ports { in_pos_11 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name in_pos_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_12 \
    op interface \
    ports { in_pos_12 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name in_pos_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_13 \
    op interface \
    ports { in_pos_13 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name in_pos_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_14 \
    op interface \
    ports { in_pos_14 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name in_pos_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_15 \
    op interface \
    ports { in_pos_15 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name in_pos_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_16 \
    op interface \
    ports { in_pos_16 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name in_pos_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_17 \
    op interface \
    ports { in_pos_17 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name in_pos_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_18 \
    op interface \
    ports { in_pos_18 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name in_pos_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_19 \
    op interface \
    ports { in_pos_19 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name in_pos_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_20 \
    op interface \
    ports { in_pos_20 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name in_pos_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_21 \
    op interface \
    ports { in_pos_21 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name in_pos_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_22 \
    op interface \
    ports { in_pos_22 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name in_pos_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_23 \
    op interface \
    ports { in_pos_23 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name in_pos_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_24 \
    op interface \
    ports { in_pos_24 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name in_pos_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_25 \
    op interface \
    ports { in_pos_25 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name in_pos_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_26 \
    op interface \
    ports { in_pos_26 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name in_pos_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_27 \
    op interface \
    ports { in_pos_27 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name in_pos_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_28 \
    op interface \
    ports { in_pos_28 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name in_pos_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_29 \
    op interface \
    ports { in_pos_29 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name in_pos_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_30 \
    op interface \
    ports { in_pos_30 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name in_pos_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_31 \
    op interface \
    ports { in_pos_31 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name in_pos_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_32 \
    op interface \
    ports { in_pos_32 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name in_pos_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_33 \
    op interface \
    ports { in_pos_33 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name in_pos_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_34 \
    op interface \
    ports { in_pos_34 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name in_pos_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_35 \
    op interface \
    ports { in_pos_35 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name in_pos_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_36 \
    op interface \
    ports { in_pos_36 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name in_pos_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_37 \
    op interface \
    ports { in_pos_37 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name in_pos_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_38 \
    op interface \
    ports { in_pos_38 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name in_pos_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_39 \
    op interface \
    ports { in_pos_39 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name in_pos_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_40 \
    op interface \
    ports { in_pos_40 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name in_pos_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_41 \
    op interface \
    ports { in_pos_41 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name in_pos_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_42 \
    op interface \
    ports { in_pos_42 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name in_pos_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_43 \
    op interface \
    ports { in_pos_43 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name in_pos_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_44 \
    op interface \
    ports { in_pos_44 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name in_pos_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_45 \
    op interface \
    ports { in_pos_45 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name in_pos_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_46 \
    op interface \
    ports { in_pos_46 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name in_pos_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_47 \
    op interface \
    ports { in_pos_47 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name in_pos_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_48 \
    op interface \
    ports { in_pos_48 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name in_pos_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_49 \
    op interface \
    ports { in_pos_49 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name in_pos_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_50 \
    op interface \
    ports { in_pos_50 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name in_pos_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_51 \
    op interface \
    ports { in_pos_51 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name in_pos_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_52 \
    op interface \
    ports { in_pos_52 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name in_pos_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_53 \
    op interface \
    ports { in_pos_53 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name in_pos_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_54 \
    op interface \
    ports { in_pos_54 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name in_pos_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_55 \
    op interface \
    ports { in_pos_55 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name in_pos_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_56 \
    op interface \
    ports { in_pos_56 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name in_pos_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_57 \
    op interface \
    ports { in_pos_57 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name in_pos_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_58 \
    op interface \
    ports { in_pos_58 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name in_pos_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_59 \
    op interface \
    ports { in_pos_59 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name in_pos_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_60 \
    op interface \
    ports { in_pos_60 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name in_pos_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_61 \
    op interface \
    ports { in_pos_61 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name in_pos_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_62 \
    op interface \
    ports { in_pos_62 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name in_pos_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_pos_63 \
    op interface \
    ports { in_pos_63 { I 2 vector } } \
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


