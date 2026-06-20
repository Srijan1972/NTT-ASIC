set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME kyber_mult_entry_proc}
  {SRCNAME load_all_Pipeline_LD_BLK_LD MODELNAME load_all_Pipeline_LD_BLK_LD RTLNAME kyber_mult_load_all_Pipeline_LD_BLK_LD
    SUBMODULES {
      {MODELNAME kyber_mult_flow_control_loop_pipe_sequential_init RTLNAME kyber_mult_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kyber_mult_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_all MODELNAME load_all RTLNAME kyber_mult_load_all}
  {SRCNAME fwd_all_Pipeline_FW_RD MODELNAME fwd_all_Pipeline_FW_RD RTLNAME kyber_mult_fwd_all_Pipeline_FW_RD}
  {SRCNAME fwd_stage2_t<128> MODELNAME fwd_stage2_t_128_s RTLNAME kyber_mult_fwd_stage2_t_128_s
    SUBMODULES {
      {MODELNAME kyber_mult_mul_16ns_12ns_28_3_1 RTLNAME kyber_mult_mul_16ns_12ns_28_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mul_12ns_11ns_23_3_1 RTLNAME kyber_mult_mul_12ns_11ns_23_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mac_mulsub_12ns_12ns_23ns_24_3_1 RTLNAME kyber_mult_mac_mulsub_12ns_12ns_23ns_24_3_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_128_s_p_ZL5FWD_W_0_0_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_128_s_p_ZL5FWD_W_0_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_128_s_p_ZL6FWD_MW_0_0_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_128_s_p_ZL6FWD_MW_0_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_stage2_t<64> MODELNAME fwd_stage2_t_64_s RTLNAME kyber_mult_fwd_stage2_t_64_s
    SUBMODULES {
      {MODELNAME kyber_mult_mul_12ns_12ns_24_3_1 RTLNAME kyber_mult_mul_12ns_12ns_24_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mac_mulsub_12ns_12ns_24ns_25_3_1 RTLNAME kyber_mult_mac_mulsub_12ns_12ns_24ns_25_3_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_64_s_p_ZL5FWD_W_0_1_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_64_s_p_ZL5FWD_W_0_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_64_s_p_ZL6FWD_MW_0_1_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_64_s_p_ZL6FWD_MW_0_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_stage2_t<32> MODELNAME fwd_stage2_t_32_s RTLNAME kyber_mult_fwd_stage2_t_32_s
    SUBMODULES {
      {MODELNAME kyber_mult_fwd_stage2_t_32_s_p_ZL5FWD_W_0_2_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_32_s_p_ZL5FWD_W_0_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_32_s_p_ZL6FWD_MW_0_2_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_32_s_p_ZL6FWD_MW_0_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_stage2_t<16> MODELNAME fwd_stage2_t_16_s RTLNAME kyber_mult_fwd_stage2_t_16_s
    SUBMODULES {
      {MODELNAME kyber_mult_fwd_stage2_t_16_s_p_ZL5FWD_W_0_3_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_16_s_p_ZL5FWD_W_0_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_16_s_p_ZL6FWD_MW_0_3_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_16_s_p_ZL6FWD_MW_0_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_stage2_t<8> MODELNAME fwd_stage2_t_8_s RTLNAME kyber_mult_fwd_stage2_t_8_s
    SUBMODULES {
      {MODELNAME kyber_mult_fwd_stage2_t_8_s_p_ZL5FWD_W_0_4_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_8_s_p_ZL5FWD_W_0_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_8_s_p_ZL6FWD_MW_0_4_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_8_s_p_ZL6FWD_MW_0_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_stage2_t<4> MODELNAME fwd_stage2_t_4_s RTLNAME kyber_mult_fwd_stage2_t_4_s
    SUBMODULES {
      {MODELNAME kyber_mult_fwd_stage2_t_4_s_p_ZL5FWD_W_0_5_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_4_s_p_ZL5FWD_W_0_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_4_s_p_ZL6FWD_MW_0_5_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_4_s_p_ZL6FWD_MW_0_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_stage2_t<2> MODELNAME fwd_stage2_t_2_s RTLNAME kyber_mult_fwd_stage2_t_2_s
    SUBMODULES {
      {MODELNAME kyber_mult_fwd_stage2_t_2_s_p_ZL5FWD_W_0_6_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_2_s_p_ZL5FWD_W_0_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_2_s_p_ZL6FWD_MW_0_6_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_2_s_p_ZL6FWD_MW_0_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_2_s_p_ZL5FWD_W_2_6_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_2_s_p_ZL5FWD_W_2_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_fwd_stage2_t_2_s_p_ZL6FWD_MW_2_6_ROM_AUTO_1R RTLNAME kyber_mult_fwd_stage2_t_2_s_p_ZL6FWD_MW_2_6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_ntt2 MODELNAME fwd_ntt2 RTLNAME kyber_mult_fwd_ntt2
    SUBMODULES {
      {MODELNAME kyber_mult_sparsemux_33_4_12_1_1 RTLNAME kyber_mult_sparsemux_33_4_12_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME kyber_mult_fwd_ntt2_tA_RAM_AUTO_1R1W RTLNAME kyber_mult_fwd_ntt2_tA_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fwd_all_Pipeline_FW_WR MODELNAME fwd_all_Pipeline_FW_WR RTLNAME kyber_mult_fwd_all_Pipeline_FW_WR}
  {SRCNAME fwd_all MODELNAME fwd_all RTLNAME kyber_mult_fwd_all}
  {SRCNAME basemul_all_Pipeline_BM_RD MODELNAME basemul_all_Pipeline_BM_RD RTLNAME kyber_mult_basemul_all_Pipeline_BM_RD}
  {SRCNAME basemul MODELNAME basemul RTLNAME kyber_mult_basemul
    SUBMODULES {
      {MODELNAME kyber_mult_mul_32ns_16ns_48_3_1 RTLNAME kyber_mult_mul_32ns_16ns_48_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mul_32s_13ns_32_3_1 RTLNAME kyber_mult_mul_32s_13ns_32_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mul_24ns_14ns_37_3_1 RTLNAME kyber_mult_mul_24ns_14ns_37_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mac_mulsub_13ns_12ns_24ns_25_3_1 RTLNAME kyber_mult_mac_mulsub_13ns_12ns_24ns_25_3_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_mac_mul_sub_25s_12ns_32ns_32_3_1 RTLNAME kyber_mult_mac_mul_sub_25s_12ns_32ns_32_3_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_basemul_p_ZL4BM_W_1_ROM_AUTO_1R RTLNAME kyber_mult_basemul_p_ZL4BM_W_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_basemul_p_ZL5BM_MW_1_ROM_AUTO_1R RTLNAME kyber_mult_basemul_p_ZL5BM_MW_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_basemul_p_ZL4BM_W_3_ROM_AUTO_1R RTLNAME kyber_mult_basemul_p_ZL4BM_W_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_basemul_p_ZL5BM_MW_3_ROM_AUTO_1R RTLNAME kyber_mult_basemul_p_ZL5BM_MW_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME basemul_all_Pipeline_BM_WR MODELNAME basemul_all_Pipeline_BM_WR RTLNAME kyber_mult_basemul_all_Pipeline_BM_WR}
  {SRCNAME basemul_all MODELNAME basemul_all RTLNAME kyber_mult_basemul_all
    SUBMODULES {
      {MODELNAME kyber_mult_basemul_all_A_RAM_AUTO_1R1W RTLNAME kyber_mult_basemul_all_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_all_Pipeline_IN_RD MODELNAME inv_all_Pipeline_IN_RD RTLNAME kyber_mult_inv_all_Pipeline_IN_RD}
  {SRCNAME inv_stage_t<2> MODELNAME inv_stage_t_2_s RTLNAME kyber_mult_inv_stage_t_2_s
    SUBMODULES {
      {MODELNAME kyber_mult_mac_mul_sub_14s_12ns_32s_32_3_1 RTLNAME kyber_mult_mac_mul_sub_14s_12ns_32s_32_3_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_2_s_p_ZL5INV_W_0_0_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_2_s_p_ZL5INV_W_0_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_2_s_p_ZL6INV_MW_0_0_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_2_s_p_ZL6INV_MW_0_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_2_s_p_ZL5INV_W_2_0_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_2_s_p_ZL5INV_W_2_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_2_s_p_ZL6INV_MW_2_0_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_2_s_p_ZL6INV_MW_2_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_stage_t<4> MODELNAME inv_stage_t_4_s RTLNAME kyber_mult_inv_stage_t_4_s
    SUBMODULES {
      {MODELNAME kyber_mult_inv_stage_t_4_s_p_ZL5INV_W_0_1_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_4_s_p_ZL5INV_W_0_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_4_s_p_ZL6INV_MW_0_1_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_4_s_p_ZL6INV_MW_0_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_stage_t<8> MODELNAME inv_stage_t_8_s RTLNAME kyber_mult_inv_stage_t_8_s
    SUBMODULES {
      {MODELNAME kyber_mult_inv_stage_t_8_s_p_ZL5INV_W_0_2_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_8_s_p_ZL5INV_W_0_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_8_s_p_ZL6INV_MW_0_2_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_8_s_p_ZL6INV_MW_0_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_stage_t<16> MODELNAME inv_stage_t_16_s RTLNAME kyber_mult_inv_stage_t_16_s
    SUBMODULES {
      {MODELNAME kyber_mult_inv_stage_t_16_s_p_ZL5INV_W_0_3_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_16_s_p_ZL5INV_W_0_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_16_s_p_ZL6INV_MW_0_3_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_16_s_p_ZL6INV_MW_0_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_stage_t<32> MODELNAME inv_stage_t_32_s RTLNAME kyber_mult_inv_stage_t_32_s
    SUBMODULES {
      {MODELNAME kyber_mult_inv_stage_t_32_s_p_ZL5INV_W_0_4_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_32_s_p_ZL5INV_W_0_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_32_s_p_ZL6INV_MW_0_4_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_32_s_p_ZL6INV_MW_0_4_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_stage_t<64> MODELNAME inv_stage_t_64_s RTLNAME kyber_mult_inv_stage_t_64_s
    SUBMODULES {
      {MODELNAME kyber_mult_inv_stage_t_64_s_p_ZL5INV_W_0_5_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_64_s_p_ZL5INV_W_0_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kyber_mult_inv_stage_t_64_s_p_ZL6INV_MW_0_5_ROM_AUTO_1R RTLNAME kyber_mult_inv_stage_t_64_s_p_ZL6INV_MW_0_5_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_stage_t<128> MODELNAME inv_stage_t_128_s RTLNAME kyber_mult_inv_stage_t_128_s
    SUBMODULES {
      {MODELNAME kyber_mult_mac_mul_sub_14s_11ns_32s_32_3_1 RTLNAME kyber_mult_mac_mul_sub_14s_11ns_32s_32_3_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_ntt MODELNAME inv_ntt RTLNAME kyber_mult_inv_ntt
    SUBMODULES {
      {MODELNAME kyber_mult_mul_12ns_13ns_24_3_1 RTLNAME kyber_mult_mul_12ns_13ns_24_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inv_all_Pipeline_IN_WR MODELNAME inv_all_Pipeline_IN_WR RTLNAME kyber_mult_inv_all_Pipeline_IN_WR}
  {SRCNAME inv_all MODELNAME inv_all RTLNAME kyber_mult_inv_all}
  {SRCNAME store_all_Pipeline_ST_BLK_ST MODELNAME store_all_Pipeline_ST_BLK_ST RTLNAME kyber_mult_store_all_Pipeline_ST_BLK_ST}
  {SRCNAME store_all MODELNAME store_all RTLNAME kyber_mult_store_all}
  {SRCNAME kyber_mult MODELNAME kyber_mult RTLNAME kyber_mult IS_TOP 1
    SUBMODULES {
      {MODELNAME kyber_mult_fifo_w64_d6_S RTLNAME kyber_mult_fifo_w64_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_c_U}
      {MODELNAME kyber_mult_fifo_w192_d32_A RTLNAME kyber_mult_fifo_w192_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sA0_U}
      {MODELNAME kyber_mult_fifo_w192_d32_A RTLNAME kyber_mult_fifo_w192_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sB0_U}
      {MODELNAME kyber_mult_fifo_w32_d2_S RTLNAME kyber_mult_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME batch_size_c15_U}
      {MODELNAME kyber_mult_fifo_w192_d32_A RTLNAME kyber_mult_fifo_w192_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sA1_U}
      {MODELNAME kyber_mult_fifo_w192_d32_A RTLNAME kyber_mult_fifo_w192_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sB1_U}
      {MODELNAME kyber_mult_fifo_w32_d2_S RTLNAME kyber_mult_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME batch_size_c14_U}
      {MODELNAME kyber_mult_fifo_w192_d32_A RTLNAME kyber_mult_fifo_w192_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sC0_U}
      {MODELNAME kyber_mult_fifo_w32_d2_S RTLNAME kyber_mult_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME batch_size_c13_U}
      {MODELNAME kyber_mult_fifo_w192_d32_A RTLNAME kyber_mult_fifo_w192_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sC1_U}
      {MODELNAME kyber_mult_fifo_w32_d2_S RTLNAME kyber_mult_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME batch_size_c_U}
      {MODELNAME kyber_mult_start_for_store_all_U0 RTLNAME kyber_mult_start_for_store_all_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_store_all_U0_U}
      {MODELNAME kyber_mult_start_for_fwd_all_U0 RTLNAME kyber_mult_start_for_fwd_all_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fwd_all_U0_U}
      {MODELNAME kyber_mult_start_for_basemul_all_U0 RTLNAME kyber_mult_start_for_basemul_all_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_basemul_all_U0_U}
      {MODELNAME kyber_mult_start_for_inv_all_U0 RTLNAME kyber_mult_start_for_inv_all_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_inv_all_U0_U}
      {MODELNAME kyber_mult_gmem0_m_axi RTLNAME kyber_mult_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kyber_mult_gmem1_m_axi RTLNAME kyber_mult_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kyber_mult_gmem2_m_axi RTLNAME kyber_mult_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kyber_mult_control_s_axi RTLNAME kyber_mult_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
