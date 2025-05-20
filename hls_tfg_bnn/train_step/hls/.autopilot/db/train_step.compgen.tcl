# This script segment is generated automatically by AutoPilot

set name train_step_mul_32ns_34ns_42_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_CTRL {
img_pos_0 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
img_pos_1 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
img_pos_2 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
img_pos_3 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
img_pos_4 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
img_pos_5 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
img_pos_6 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
img_pos_7 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
img_neg_0 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
img_neg_1 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
img_neg_2 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
img_neg_3 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
img_neg_4 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
img_neg_5 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
img_neg_6 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
img_neg_7 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
last_sample { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
sample_idx { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 201 \
			corename train_step_CTRL_axilite \
			name train_step_CTRL_s_axi \
			ports {$port_CTRL} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'CTRL'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler train_step_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name W1_out \
    reset_level 0 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name W2_out \
    reset_level 0 \
    sync_rst true \
    dir O \
    corename W2_out \
    op interface \
    ports { W2_out_address0 { O 2 vector } W2_out_ce0 { O 1 bit } W2_out_we0 { O 1 bit } W2_out_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W2_out'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name leds_port \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_leds_port \
    op interface \
    ports { leds_port { O 4 vector } leds_port_ap_vld { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


