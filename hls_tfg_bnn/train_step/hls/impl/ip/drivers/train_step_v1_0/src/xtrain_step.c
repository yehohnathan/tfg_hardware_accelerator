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

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
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

void XTrain_step_Set_W1(XTrain_step *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W1_DATA, (u32)(Data));
    XTrain_step_WriteReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W1_DATA + 4, (u32)(Data >> 32));
}

u64 XTrain_step_Get_W1(XTrain_step *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W1_DATA);
    Data += (u64)XTrain_step_ReadReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W1_DATA + 4) << 32;
    return Data;
}

void XTrain_step_Set_W2(XTrain_step *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTrain_step_WriteReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W2_DATA, (u32)(Data));
    XTrain_step_WriteReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W2_DATA + 4, (u32)(Data >> 32));
}

u64 XTrain_step_Get_W2(XTrain_step *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTrain_step_ReadReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W2_DATA);
    Data += (u64)XTrain_step_ReadReg(InstancePtr->Control_BaseAddress, XTRAIN_STEP_CONTROL_ADDR_W2_DATA + 4) << 32;
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

