// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_train_step (
volatile void* img_pos_0,
volatile void* img_pos_1,
volatile void* img_pos_2,
volatile void* img_pos_3,
volatile void* img_pos_4,
volatile void* img_pos_5,
volatile void* img_pos_6,
volatile void* img_pos_7,
volatile void* img_neg_0,
volatile void* img_neg_1,
volatile void* img_neg_2,
volatile void* img_neg_3,
volatile void* img_neg_4,
volatile void* img_neg_5,
volatile void* img_neg_6,
volatile void* img_neg_7,
int last_sample,
int sample_idx,
volatile void* leds_port,
volatile void* W1_out,
volatile void* W2_out);
