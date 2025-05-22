set SynModuleInfo {
  {SRCNAME forwardHidden_Pipeline_VITIS_LOOP_36_1 MODELNAME forwardHidden_Pipeline_VITIS_LOOP_36_1 RTLNAME train_step_forwardHidden_Pipeline_VITIS_LOOP_36_1
    SUBMODULES {
      {MODELNAME train_step_mul_8s_2s_10_1_1 RTLNAME train_step_mul_8s_2s_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME train_step_mac_muladd_8s_2s_10s_10_4_1 RTLNAME train_step_mac_muladd_8s_2s_10s_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME train_step_flow_control_loop_pipe_sequential_init RTLNAME train_step_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME train_step_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME forwardHidden MODELNAME forwardHidden RTLNAME train_step_forwardHidden}
  {SRCNAME forwardOutput_Pipeline_VITIS_LOOP_54_1 MODELNAME forwardOutput_Pipeline_VITIS_LOOP_54_1 RTLNAME train_step_forwardOutput_Pipeline_VITIS_LOOP_54_1
    SUBMODULES {
      {MODELNAME train_step_mac_muladd_8s_2s_10s_11_4_1 RTLNAME train_step_mac_muladd_8s_2s_10s_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME forwardOutput MODELNAME forwardOutput RTLNAME train_step_forwardOutput}
  {SRCNAME train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2 MODELNAME train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_75_2
    SUBMODULES {
      {MODELNAME train_step_sparsemux_21_4_2_1_1 RTLNAME train_step_sparsemux_21_4_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME train_step_sparsemux_129_6_2_1_1 RTLNAME train_step_sparsemux_129_6_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME train_step_mul_2s_3s_4_1_1 RTLNAME train_step_mul_2s_3s_4_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME updateOutput MODELNAME updateOutput RTLNAME train_step_updateOutput
    SUBMODULES {
      {MODELNAME train_step_mac_muladd_3s_2s_8s_9_4_1 RTLNAME train_step_mac_muladd_3s_2s_8s_9_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME train_step MODELNAME train_step RTLNAME train_step IS_TOP 1
    SUBMODULES {
      {MODELNAME train_step_mul_2s_2s_4_1_1 RTLNAME train_step_mul_2s_2s_4_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME train_step_mac_muladd_2s_2s_4s_5_4_1 RTLNAME train_step_mac_muladd_2s_2s_4s_5_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME train_step_mac_muladd_2s_2s_5s_5_4_1 RTLNAME train_step_mac_muladd_2s_2s_5s_5_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME train_step_WEIGHTS_m_axi RTLNAME train_step_WEIGHTS_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME train_step_CTRL_s_axi RTLNAME train_step_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME train_step_control_s_axi RTLNAME train_step_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
