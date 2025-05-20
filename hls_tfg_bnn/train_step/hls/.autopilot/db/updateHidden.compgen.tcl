# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_mac_muladd_8s_8s_2s_12_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 108 \
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
    id 109 \
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
    id 110 \
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
    id 111 \
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
    id 112 \
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
    id 113 \
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
    id 114 \
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
    id 115 \
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
    id 116 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name W1_0_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_0 \
    op interface \
    ports { W1_0_0_i { I 2 vector } W1_0_0_o { O 2 vector } W1_0_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed \
    op interface \
    ports { train_mulmulmulstep_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 \
    op interface \
    ports { train_step_ap_fixed_const_ap_fixed_const_int_int_ap_uint_volatile_ap_fixed_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name W1_1_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_0 \
    op interface \
    ports { W1_1_0_i { I 2 vector } W1_1_0_o { O 2 vector } W1_1_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name W1_2_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_0 \
    op interface \
    ports { W1_2_0_i { I 2 vector } W1_2_0_o { O 2 vector } W1_2_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name W1_3_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_0 \
    op interface \
    ports { W1_3_0_i { I 2 vector } W1_3_0_o { O 2 vector } W1_3_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name W1_4_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_0 \
    op interface \
    ports { W1_4_0_i { I 2 vector } W1_4_0_o { O 2 vector } W1_4_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name W1_5_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_0 \
    op interface \
    ports { W1_5_0_i { I 2 vector } W1_5_0_o { O 2 vector } W1_5_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name W1_6_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_0 \
    op interface \
    ports { W1_6_0_i { I 2 vector } W1_6_0_o { O 2 vector } W1_6_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name W1_7_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_0 \
    op interface \
    ports { W1_7_0_i { I 2 vector } W1_7_0_o { O 2 vector } W1_7_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name W1_0_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_1 \
    op interface \
    ports { W1_0_1_i { I 2 vector } W1_0_1_o { O 2 vector } W1_0_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name W1_1_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_1 \
    op interface \
    ports { W1_1_1_i { I 2 vector } W1_1_1_o { O 2 vector } W1_1_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name W1_2_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_1 \
    op interface \
    ports { W1_2_1_i { I 2 vector } W1_2_1_o { O 2 vector } W1_2_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name W1_3_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_1 \
    op interface \
    ports { W1_3_1_i { I 2 vector } W1_3_1_o { O 2 vector } W1_3_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name W1_4_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_1 \
    op interface \
    ports { W1_4_1_i { I 2 vector } W1_4_1_o { O 2 vector } W1_4_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name W1_5_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_1 \
    op interface \
    ports { W1_5_1_i { I 2 vector } W1_5_1_o { O 2 vector } W1_5_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name W1_6_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_1 \
    op interface \
    ports { W1_6_1_i { I 2 vector } W1_6_1_o { O 2 vector } W1_6_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name W1_7_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_1 \
    op interface \
    ports { W1_7_1_i { I 2 vector } W1_7_1_o { O 2 vector } W1_7_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name W1_0_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_2 \
    op interface \
    ports { W1_0_2_i { I 2 vector } W1_0_2_o { O 2 vector } W1_0_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name W1_1_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_2 \
    op interface \
    ports { W1_1_2_i { I 2 vector } W1_1_2_o { O 2 vector } W1_1_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name W1_2_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_2 \
    op interface \
    ports { W1_2_2_i { I 2 vector } W1_2_2_o { O 2 vector } W1_2_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name W1_3_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_2 \
    op interface \
    ports { W1_3_2_i { I 2 vector } W1_3_2_o { O 2 vector } W1_3_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name W1_4_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_2 \
    op interface \
    ports { W1_4_2_i { I 2 vector } W1_4_2_o { O 2 vector } W1_4_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name W1_5_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_2 \
    op interface \
    ports { W1_5_2_i { I 2 vector } W1_5_2_o { O 2 vector } W1_5_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name W1_6_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_2 \
    op interface \
    ports { W1_6_2_i { I 2 vector } W1_6_2_o { O 2 vector } W1_6_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name W1_7_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_2 \
    op interface \
    ports { W1_7_2_i { I 2 vector } W1_7_2_o { O 2 vector } W1_7_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name W1_0_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_3 \
    op interface \
    ports { W1_0_3_i { I 2 vector } W1_0_3_o { O 2 vector } W1_0_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name W1_1_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_3 \
    op interface \
    ports { W1_1_3_i { I 2 vector } W1_1_3_o { O 2 vector } W1_1_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name W1_2_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_3 \
    op interface \
    ports { W1_2_3_i { I 2 vector } W1_2_3_o { O 2 vector } W1_2_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name W1_3_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_3 \
    op interface \
    ports { W1_3_3_i { I 2 vector } W1_3_3_o { O 2 vector } W1_3_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name W1_4_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_3 \
    op interface \
    ports { W1_4_3_i { I 2 vector } W1_4_3_o { O 2 vector } W1_4_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name W1_5_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_3 \
    op interface \
    ports { W1_5_3_i { I 2 vector } W1_5_3_o { O 2 vector } W1_5_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name W1_6_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_3 \
    op interface \
    ports { W1_6_3_i { I 2 vector } W1_6_3_o { O 2 vector } W1_6_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name W1_7_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_3 \
    op interface \
    ports { W1_7_3_i { I 2 vector } W1_7_3_o { O 2 vector } W1_7_3_o_ap_vld { O 1 bit } } \
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


