set SynModuleInfo {
  {SRCNAME ntt_kernel_Pipeline_PERMUTE_LOOP MODELNAME ntt_kernel_Pipeline_PERMUTE_LOOP RTLNAME ntt_kernel_ntt_kernel_Pipeline_PERMUTE_LOOP
    SUBMODULES {
      {MODELNAME ntt_kernel_flow_control_loop_pipe_sequential_init RTLNAME ntt_kernel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ntt_kernel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ntt_kernel_Pipeline_BUTTERFLY_LOOP MODELNAME ntt_kernel_Pipeline_BUTTERFLY_LOOP RTLNAME ntt_kernel_ntt_kernel_Pipeline_BUTTERFLY_LOOP
    SUBMODULES {
      {MODELNAME ntt_kernel_mul_32ns_32ns_64_1_1 RTLNAME ntt_kernel_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ntt_kernel_mul_32s_32s_32_1_1 RTLNAME ntt_kernel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ntt_kernel_Pipeline_WRITE_BACK_LOOP MODELNAME ntt_kernel_Pipeline_WRITE_BACK_LOOP RTLNAME ntt_kernel_ntt_kernel_Pipeline_WRITE_BACK_LOOP}
  {SRCNAME ntt_kernel MODELNAME ntt_kernel RTLNAME ntt_kernel IS_TOP 1
    SUBMODULES {
      {MODELNAME ntt_kernel_local_x_RAM_2P_BRAM_1R1W RTLNAME ntt_kernel_local_x_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ntt_kernel_gmem0_m_axi RTLNAME ntt_kernel_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ntt_kernel_gmem1_m_axi RTLNAME ntt_kernel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ntt_kernel_gmem2_m_axi RTLNAME ntt_kernel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ntt_kernel_control_s_axi RTLNAME ntt_kernel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
