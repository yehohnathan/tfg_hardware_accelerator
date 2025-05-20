// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of img_pos_0
//        bit 7~0 - img_pos_0[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of img_pos_1
//        bit 7~0 - img_pos_1[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of img_pos_2
//        bit 7~0 - img_pos_2[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of img_pos_3
//        bit 7~0 - img_pos_3[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of img_pos_4
//        bit 7~0 - img_pos_4[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of img_pos_5
//        bit 7~0 - img_pos_5[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of img_pos_6
//        bit 7~0 - img_pos_6[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of img_pos_7
//        bit 7~0 - img_pos_7[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of img_neg_0
//        bit 7~0 - img_neg_0[7:0] (Read/Write)
//        others  - reserved
// 0x54 : reserved
// 0x58 : Data signal of img_neg_1
//        bit 7~0 - img_neg_1[7:0] (Read/Write)
//        others  - reserved
// 0x5c : reserved
// 0x60 : Data signal of img_neg_2
//        bit 7~0 - img_neg_2[7:0] (Read/Write)
//        others  - reserved
// 0x64 : reserved
// 0x68 : Data signal of img_neg_3
//        bit 7~0 - img_neg_3[7:0] (Read/Write)
//        others  - reserved
// 0x6c : reserved
// 0x70 : Data signal of img_neg_4
//        bit 7~0 - img_neg_4[7:0] (Read/Write)
//        others  - reserved
// 0x74 : reserved
// 0x78 : Data signal of img_neg_5
//        bit 7~0 - img_neg_5[7:0] (Read/Write)
//        others  - reserved
// 0x7c : reserved
// 0x80 : Data signal of img_neg_6
//        bit 7~0 - img_neg_6[7:0] (Read/Write)
//        others  - reserved
// 0x84 : reserved
// 0x88 : Data signal of img_neg_7
//        bit 7~0 - img_neg_7[7:0] (Read/Write)
//        others  - reserved
// 0x8c : reserved
// 0x90 : Data signal of last_sample
//        bit 31~0 - last_sample[31:0] (Read/Write)
// 0x94 : reserved
// 0x98 : Data signal of sample_idx
//        bit 31~0 - sample_idx[31:0] (Read/Write)
// 0x9c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTRAIN_STEP_CTRL_ADDR_AP_CTRL          0x00
#define XTRAIN_STEP_CTRL_ADDR_GIE              0x04
#define XTRAIN_STEP_CTRL_ADDR_IER              0x08
#define XTRAIN_STEP_CTRL_ADDR_ISR              0x0c
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_0_DATA   0x10
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_0_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_1_DATA   0x18
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_1_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_2_DATA   0x20
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_2_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_3_DATA   0x28
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_3_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_4_DATA   0x30
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_4_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_5_DATA   0x38
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_5_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_6_DATA   0x40
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_6_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_POS_7_DATA   0x48
#define XTRAIN_STEP_CTRL_BITS_IMG_POS_7_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_0_DATA   0x50
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_0_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_1_DATA   0x58
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_1_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_2_DATA   0x60
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_2_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_3_DATA   0x68
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_3_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_4_DATA   0x70
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_4_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_5_DATA   0x78
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_5_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_6_DATA   0x80
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_6_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_IMG_NEG_7_DATA   0x88
#define XTRAIN_STEP_CTRL_BITS_IMG_NEG_7_DATA   8
#define XTRAIN_STEP_CTRL_ADDR_LAST_SAMPLE_DATA 0x90
#define XTRAIN_STEP_CTRL_BITS_LAST_SAMPLE_DATA 32
#define XTRAIN_STEP_CTRL_ADDR_SAMPLE_IDX_DATA  0x98
#define XTRAIN_STEP_CTRL_BITS_SAMPLE_IDX_DATA  32

