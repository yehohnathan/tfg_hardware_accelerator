# This script segment is generated automatically by AutoPilot

set name train_step_mul_2s_8s_10_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_mac_muladd_8s_2s_10s_11_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 35 \
    name input_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_0_val \
    op interface \
    ports { input_0_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name input_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_val \
    op interface \
    ports { input_1_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name input_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_2_val \
    op interface \
    ports { input_2_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name input_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_3_val \
    op interface \
    ports { input_3_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name input_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_4_val \
    op interface \
    ports { input_4_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name input_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_5_val \
    op interface \
    ports { input_5_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name input_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_6_val \
    op interface \
    ports { input_6_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name input_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_7_val \
    op interface \
    ports { input_7_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name W1_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_0 \
    op interface \
    ports { W1_0_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name W1_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_0 \
    op interface \
    ports { W1_1_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name W1_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_0 \
    op interface \
    ports { W1_2_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name W1_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_0 \
    op interface \
    ports { W1_3_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name W1_4_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_0 \
    op interface \
    ports { W1_4_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name W1_5_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_0 \
    op interface \
    ports { W1_5_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name W1_6_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_0 \
    op interface \
    ports { W1_6_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name W1_7_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_0 \
    op interface \
    ports { W1_7_0 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name W1_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_1 \
    op interface \
    ports { W1_0_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name W1_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_1 \
    op interface \
    ports { W1_1_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name W1_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_1 \
    op interface \
    ports { W1_2_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name W1_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_1 \
    op interface \
    ports { W1_3_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name W1_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_1 \
    op interface \
    ports { W1_4_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name W1_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_1 \
    op interface \
    ports { W1_5_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name W1_6_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_1 \
    op interface \
    ports { W1_6_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name W1_7_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_1 \
    op interface \
    ports { W1_7_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name W1_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_2 \
    op interface \
    ports { W1_0_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name W1_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_2 \
    op interface \
    ports { W1_1_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name W1_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_2 \
    op interface \
    ports { W1_2_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name W1_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_2 \
    op interface \
    ports { W1_3_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name W1_4_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_2 \
    op interface \
    ports { W1_4_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name W1_5_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_2 \
    op interface \
    ports { W1_5_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name W1_6_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_2 \
    op interface \
    ports { W1_6_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name W1_7_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_2 \
    op interface \
    ports { W1_7_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name W1_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_3 \
    op interface \
    ports { W1_0_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name W1_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_3 \
    op interface \
    ports { W1_1_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name W1_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_3 \
    op interface \
    ports { W1_2_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name W1_3_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_3 \
    op interface \
    ports { W1_3_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name W1_4_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_3 \
    op interface \
    ports { W1_4_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name W1_5_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_3 \
    op interface \
    ports { W1_5_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name W1_6_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_3 \
    op interface \
    ports { W1_6_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name W1_7_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_3 \
    op interface \
    ports { W1_7_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
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


