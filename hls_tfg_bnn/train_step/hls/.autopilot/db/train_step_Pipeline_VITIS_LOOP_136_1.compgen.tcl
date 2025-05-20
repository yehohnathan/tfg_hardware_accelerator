# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_sparsemux_9_2_2_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 165 \
    name W1_out \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename W1_out \
    op interface \
    ports { W1_out_address0 { O 5 vector } W1_out_ce0 { O 1 bit } W1_out_we0 { O 1 bit } W1_out_d0 { O 8 vector } W1_out_address1 { O 5 vector } W1_out_ce1 { O 1 bit } W1_out_we1 { O 1 bit } W1_out_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W1_out'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name W1_0_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_0_load \
    op interface \
    ports { W1_0_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name W1_0_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_1_load \
    op interface \
    ports { W1_0_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name W1_0_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_2_load \
    op interface \
    ports { W1_0_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name W1_0_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_0_3_load \
    op interface \
    ports { W1_0_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name W1_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_0_load \
    op interface \
    ports { W1_1_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name W1_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_1_load \
    op interface \
    ports { W1_1_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name W1_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_2_load \
    op interface \
    ports { W1_1_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name W1_1_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_1_3_load \
    op interface \
    ports { W1_1_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name W1_2_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_0_load \
    op interface \
    ports { W1_2_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name W1_2_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_1_load \
    op interface \
    ports { W1_2_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name W1_2_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_2_load \
    op interface \
    ports { W1_2_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name W1_2_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_2_3_load \
    op interface \
    ports { W1_2_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name W1_3_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_0_load \
    op interface \
    ports { W1_3_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name W1_3_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_1_load \
    op interface \
    ports { W1_3_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name W1_3_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_2_load \
    op interface \
    ports { W1_3_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name W1_3_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_3_3_load \
    op interface \
    ports { W1_3_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name W1_4_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_0_load \
    op interface \
    ports { W1_4_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name W1_4_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_1_load \
    op interface \
    ports { W1_4_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name W1_4_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_2_load \
    op interface \
    ports { W1_4_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name W1_4_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_4_3_load \
    op interface \
    ports { W1_4_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name W1_5_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_0_load \
    op interface \
    ports { W1_5_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name W1_5_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_1_load \
    op interface \
    ports { W1_5_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name W1_5_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_2_load \
    op interface \
    ports { W1_5_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name W1_5_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_5_3_load \
    op interface \
    ports { W1_5_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name W1_6_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_0_load \
    op interface \
    ports { W1_6_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name W1_6_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_1_load \
    op interface \
    ports { W1_6_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name W1_6_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_2_load \
    op interface \
    ports { W1_6_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name W1_6_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_6_3_load \
    op interface \
    ports { W1_6_3_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name W1_7_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_0_load \
    op interface \
    ports { W1_7_0_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name W1_7_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_1_load \
    op interface \
    ports { W1_7_1_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name W1_7_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_2_load \
    op interface \
    ports { W1_7_2_load { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name W1_7_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W1_7_3_load \
    op interface \
    ports { W1_7_3_load { I 2 vector } } \
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


