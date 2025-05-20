// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xtrain_step.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTrain_step_CfgInitialize(XTrain_step *InstancePtr, XTrain_step_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTrain_step_Start(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL) & 0x80;
    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTrain_step_IsDone(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTrain_step_IsIdle(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTrain_step_IsReady(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTrain_step_EnableAutoRestart(XTrain_step *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTrain_step_DisableAutoRestart(XTrain_step *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_AP_CTRL, 0);
}

void XTrain_step_Set_img_pos_0(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_0_DATA, Data);
}

u32 XTrain_step_Get_img_pos_0(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_0_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_1(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_1_DATA, Data);
}

u32 XTrain_step_Get_img_pos_1(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_1_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_2(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_2_DATA, Data);
}

u32 XTrain_step_Get_img_pos_2(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_2_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_3(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_3_DATA, Data);
}

u32 XTrain_step_Get_img_pos_3(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_3_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_4(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_4_DATA, Data);
}

u32 XTrain_step_Get_img_pos_4(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_4_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_5(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_5_DATA, Data);
}

u32 XTrain_step_Get_img_pos_5(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_5_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_6(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_6_DATA, Data);
}

u32 XTrain_step_Get_img_pos_6(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_6_DATA);
    return Data;
}

void XTrain_step_Set_img_pos_7(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_7_DATA, Data);
}

u32 XTrain_step_Get_img_pos_7(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_POS_7_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_0(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_0_DATA, Data);
}

u32 XTrain_step_Get_img_neg_0(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_0_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_1(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_1_DATA, Data);
}

u32 XTrain_step_Get_img_neg_1(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_1_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_2(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_2_DATA, Data);
}

u32 XTrain_step_Get_img_neg_2(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_2_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_3(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_3_DATA, Data);
}

u32 XTrain_step_Get_img_neg_3(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_3_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_4(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_4_DATA, Data);
}

u32 XTrain_step_Get_img_neg_4(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_4_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_5(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_5_DATA, Data);
}

u32 XTrain_step_Get_img_neg_5(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_5_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_6(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_6_DATA, Data);
}

u32 XTrain_step_Get_img_neg_6(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_6_DATA);
    return Data;
}

void XTrain_step_Set_img_neg_7(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_7_DATA, Data);
}

u32 XTrain_step_Get_img_neg_7(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IMG_NEG_7_DATA);
    return Data;
}

void XTrain_step_Set_last_sample(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_LAST_SAMPLE_DATA, Data);
}

u32 XTrain_step_Get_last_sample(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_LAST_SAMPLE_DATA);
    return Data;
}

void XTrain_step_Set_sample_idx(XTrain_step *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_SAMPLE_IDX_DATA, Data);
}

u32 XTrain_step_Get_sample_idx(XTrain_step *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_SAMPLE_IDX_DATA);
    return Data;
}

void XTrain_step_InterruptGlobalEnable(XTrain_step *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_GIE, 1);
}

void XTrain_step_InterruptGlobalDisable(XTrain_step *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_GIE, 0);
}

void XTrain_step_InterruptEnable(XTrain_step *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IER);
    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IER, Register | Mask);
}

void XTrain_step_InterruptDisable(XTrain_step *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IER);
    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IER, Register & (~Mask));
}

void XTrain_step_InterruptClear(XTrain_step *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_ISR, Mask);
}

u32 XTrain_step_InterruptGetEnabled(XTrain_step *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_IER);
}

u32 XTrain_step_InterruptGetStatus(XTrain_step *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTrain_step_ReadReg(InstancePtr->Ctrl_BaseAddress, XTRAIN_STEP_CTRL_ADDR_ISR);
}

