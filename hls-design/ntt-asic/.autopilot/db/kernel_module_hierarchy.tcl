set ModuleHierarchy {[{
"Name" : "ntt_kernel","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_ntt_kernel_Pipeline_CACHE_TWIDDLES_LOOP_fu_343","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CACHE_TWIDDLES_LOOP","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_ntt_kernel_Pipeline_CACHE_PSI_LOOP_fu_355","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CACHE_PSI_LOOP","ID" : "4","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "BATCH_LOOP","ID" : "5","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_ntt_kernel_Pipeline_BURST_READ_LOOP_fu_364","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "BURST_READ_LOOP","ID" : "7","Type" : "pipeline"},]},
	{"Name" : "grp_ntt_kernel_Pipeline_PERMUTE_LOOP_fu_373","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PERMUTE_LOOP","ID" : "9","Type" : "pipeline"},]},
	{"Name" : "grp_ntt_kernel_Pipeline_WRITE_BACK_LOOP_fu_423","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "WRITE_BACK_LOOP","ID" : "11","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "STAGE_LOOP","ID" : "12","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_ntt_kernel_Pipeline_FLATTENED_BUTTERFLY_LOOP_fu_388","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "FLATTENED_BUTTERFLY_LOOP","ID" : "14","Type" : "pipeline"},]},]},]},]
}]}