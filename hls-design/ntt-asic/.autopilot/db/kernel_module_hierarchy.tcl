set ModuleHierarchy {[{
"Name" : "ntt_kernel","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "BATCH_LOOP","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_ntt_kernel_Pipeline_PERMUTE_LOOP_fu_250","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PERMUTE_LOOP","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_ntt_kernel_Pipeline_WRITE_BACK_LOOP_fu_278","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "WRITE_BACK_LOOP","ID" : "5","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "STAGE_LOOP","ID" : "6","Type" : "no",
		"SubLoops" : [
		{"Name" : "BLOCK_LOOP","ID" : "7","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_ntt_kernel_Pipeline_BUTTERFLY_LOOP_fu_263","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "BUTTERFLY_LOOP","ID" : "9","Type" : "pipeline"},]},]},]},]},]
}]}