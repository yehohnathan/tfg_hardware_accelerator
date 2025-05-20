set ModuleHierarchy {[{
"Name" : "train_step","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_forwardHidden_fu_325","ID" : "1","Type" : "pipeline"},
	{"Name" : "grp_forwardHidden_fu_409","ID" : "2","Type" : "pipeline"},
	{"Name" : "grp_updateHidden_fu_493","ID" : "3","Type" : "pipeline"},
	{"Name" : "grp_train_step_Pipeline_VITIS_LOOP_136_1_fu_585","ID" : "4","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_136_1","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "grp_train_step_Pipeline_VITIS_LOOP_141_4_fu_623","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_141_4","ID" : "7","Type" : "pipeline"},]},]
}]}