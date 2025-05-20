# This script segment is generated automatically by AutoPilot

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


