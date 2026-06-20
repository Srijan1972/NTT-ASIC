set ModuleHierarchy {[{
"Name" : "kyber_mult","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "load_all_U0","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_load_all_Pipeline_LD_BLK_LD_fu_106","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "LD_BLK_LD","ID" : "4","Type" : "pipeline"},]},]},
	{"Name" : "fwd_all_U0","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FW_BLK","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_fwd_all_Pipeline_FW_RD_fu_320","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "FW_RD","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_fwd_ntt2_fu_360","ID" : "9","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_fwd_stage2_t_128_s_fu_1190","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "11","Type" : "pipeline"},]},
				{"Name" : "grp_fwd_stage2_t_64_s_fu_1338","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "13","Type" : "pipeline"},]},
				{"Name" : "grp_fwd_stage2_t_32_s_fu_1454","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "15","Type" : "pipeline"},]},
				{"Name" : "grp_fwd_stage2_t_16_s_fu_1570","ID" : "16","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "17","Type" : "pipeline"},]},
				{"Name" : "grp_fwd_stage2_t_8_s_fu_1686","ID" : "18","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "19","Type" : "pipeline"},]},
				{"Name" : "grp_fwd_stage2_t_4_s_fu_1802","ID" : "20","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "21","Type" : "pipeline"},]},
				{"Name" : "grp_fwd_stage2_t_2_s_fu_1918","ID" : "22","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "FWD_BF2","ID" : "23","Type" : "pipeline"},]},],
				"SubLoops" : [
				{"Name" : "FCP2","ID" : "24","Type" : "pipeline"},]},
		{"Name" : "grp_fwd_all_Pipeline_FW_WR_fu_508","ID" : "25","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "FW_WR","ID" : "26","Type" : "pipeline"},]},]},]},
	{"Name" : "basemul_all_U0","ID" : "27","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BM_BLK","ID" : "28","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_basemul_all_Pipeline_BM_RD_fu_286","ID" : "29","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "BM_RD","ID" : "30","Type" : "pipeline"},]},
		{"Name" : "grp_basemul_fu_326","ID" : "31","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "BM","ID" : "32","Type" : "pipeline"},]},
		{"Name" : "grp_basemul_all_Pipeline_BM_WR_fu_394","ID" : "33","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "BM_WR","ID" : "34","Type" : "pipeline"},]},]},]},
	{"Name" : "inv_all_U0","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "IN_BLK","ID" : "36","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_inv_all_Pipeline_IN_RD_fu_252","ID" : "37","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "IN_RD","ID" : "38","Type" : "pipeline"},]},
		{"Name" : "grp_inv_ntt_fu_274","ID" : "39","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_inv_stage_t_2_s_fu_728","ID" : "40","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "41","Type" : "pipeline"},]},
				{"Name" : "grp_inv_stage_t_4_s_fu_812","ID" : "42","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "43","Type" : "pipeline"},]},
				{"Name" : "grp_inv_stage_t_8_s_fu_880","ID" : "44","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "45","Type" : "pipeline"},]},
				{"Name" : "grp_inv_stage_t_16_s_fu_948","ID" : "46","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "47","Type" : "pipeline"},]},
				{"Name" : "grp_inv_stage_t_32_s_fu_1016","ID" : "48","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "49","Type" : "pipeline"},]},
				{"Name" : "grp_inv_stage_t_64_s_fu_1084","ID" : "50","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "51","Type" : "pipeline"},]},
				{"Name" : "grp_inv_stage_t_128_s_fu_1152","ID" : "52","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INV_BF","ID" : "53","Type" : "pipeline"},]},],
				"SubLoops" : [
				{"Name" : "SCALE","ID" : "54","Type" : "pipeline"},]},
		{"Name" : "grp_inv_all_Pipeline_IN_WR_fu_406","ID" : "55","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "IN_WR","ID" : "56","Type" : "pipeline"},]},]},]},
	{"Name" : "store_all_U0","ID" : "57","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_store_all_Pipeline_ST_BLK_ST_fu_77","ID" : "58","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ST_BLK_ST","ID" : "59","Type" : "pipeline"},]},]},]
}]}