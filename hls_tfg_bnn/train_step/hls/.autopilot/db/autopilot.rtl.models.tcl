set SynModuleInfo {
  {SRCNAME train_step_Pipeline_VITIS_LOOP_118_1 MODELNAME train_step_Pipeline_VITIS_LOOP_118_1 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_118_1
    SUBMODULES {
      {MODELNAME train_step_flow_control_loop_pipe_sequential_init RTLNAME train_step_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME train_step_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME train_step_Pipeline_VITIS_LOOP_28_1 MODELNAME train_step_Pipeline_VITIS_LOOP_28_1 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_28_1
    SUBMODULES {
      {MODELNAME train_step_mul_8s_2s_10_1_1 RTLNAME train_step_mul_8s_2s_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME train_step_mac_muladd_8s_2s_10s_10_4_1 RTLNAME train_step_mac_muladd_8s_2s_10s_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME train_step_Pipeline_VITIS_LOOP_45_1 MODELNAME train_step_Pipeline_VITIS_LOOP_45_1 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_45_1}
  {SRCNAME train_step_Pipeline_VITIS_LOOP_28_11 MODELNAME train_step_Pipeline_VITIS_LOOP_28_11 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_28_11}
  {SRCNAME train_step_Pipeline_VITIS_LOOP_45_12 MODELNAME train_step_Pipeline_VITIS_LOOP_45_12 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_45_12}
  {SRCNAME train_step_Pipeline_VITIS_LOOP_64_1 MODELNAME train_step_Pipeline_VITIS_LOOP_64_1 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_64_1
    SUBMODULES {
      {MODELNAME train_step_mac_muladd_3s_2s_8s_9_4_1 RTLNAME train_step_mac_muladd_3s_2s_8s_9_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME train_step_Pipeline_VITIS_LOOP_85_1 MODELNAME train_step_Pipeline_VITIS_LOOP_85_1 RTLNAME train_step_train_step_Pipeline_VITIS_LOOP_85_1}
  {SRCNAME train_step MODELNAME train_step RTLNAME train_step IS_TOP 1
    SUBMODULES {
      {MODELNAME train_step_in_pos_RAM_AUTO_1R1W RTLNAME train_step_in_pos_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME train_step_hidden_pos_RAM_AUTO_1R1W RTLNAME train_step_hidden_pos_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME train_step_out_pos_RAM_AUTO_1R1W RTLNAME train_step_out_pos_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME train_step_WEIGHTS_m_axi RTLNAME train_step_WEIGHTS_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME train_step_CTRL_s_axi RTLNAME train_step_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME train_step_control_s_axi RTLNAME train_step_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
