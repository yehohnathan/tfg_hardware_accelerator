set ModuleHierarchy {[{
"Name" : "train_step","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_forwardHidden_fu_1732","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_forwardHidden_Pipeline_VITIS_LOOP_36_1_fu_621","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_36_1","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "grp_forwardOutput_fu_1835","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_forwardOutput_Pipeline_VITIS_LOOP_54_1_fu_321","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_54_1","ID" : "6","Type" : "pipeline"},]},]},
	{"Name" : "grp_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2_fu_1884","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_73_1_VITIS_LOOP_75_2","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_updateOutput_fu_1975","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_92_1","ID" : "10","Type" : "pipeline"},]},]
}]}