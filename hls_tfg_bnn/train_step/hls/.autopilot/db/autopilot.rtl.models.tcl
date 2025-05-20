set SynModuleInfo {
  {SRCNAME forwardHidden MODELNAME forwardHidden RTLNAME train_step_forwardHidden
    SUBMODULES {
      {MODELNAME train_step_mul_2s_8s_10_1_1 RTLNAME train_step_mul_2s_8s_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME train_step_mac_muladd_8s_2s_10s_11_4_1 RTLNAME train_step_mac_muladd_8s_2s_10s_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME updateHidden MODELNAME updateHidden RTLNAME train_step_updateHidden
    SUBMODULES {
      {MODELNAME train_step_mac_muladd_8s_8s_2s_12_4_1 RTLNAME train_step_mac_muladd_8s_8s_2s_12_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME train_step_Pipeline_VITIS_LOOP_136_1 MODELNAME train_step_Pipeline_VITIS_LOOP_136_1 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_136_1
    SUBMODULES {
      {MODELNAME train_step_sparsemux_9_2_2_1_1 RTLNAME train_step_sparsemux_9_2_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME train_step_flow_control_loop_pipe_sequential_init RTLNAME train_step_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME train_step_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME train_step_Pipeline_VITIS_LOOP_141_4 MODELNAME train_step_Pipeline_VITIS_LOOP_141_4 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_141_4}
  {SRCNAME train_step MODELNAME train_step RTLNAME train_step IS_TOP 1
    SUBMODULES {
      {MODELNAME train_step_mul_32ns_34ns_42_2_1 RTLNAME train_step_mul_32ns_34ns_42_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME train_step_CTRL_s_axi RTLNAME train_step_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
