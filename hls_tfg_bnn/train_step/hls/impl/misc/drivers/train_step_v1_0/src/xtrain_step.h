// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XTRAIN_STEP_H
#define XTRAIN_STEP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtrain_step_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Ctrl_BaseAddress;
} XTrain_step_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XTrain_step;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTrain_step_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTrain_step_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTrain_step_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTrain_step_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XTrain_step_Initialize(XTrain_step *InstancePtr, UINTPTR BaseAddress);
XTrain_step_Config* XTrain_step_LookupConfig(UINTPTR BaseAddress);
#else
int XTrain_step_Initialize(XTrain_step *InstancePtr, u16 DeviceId);
XTrain_step_Config* XTrain_step_LookupConfig(u16 DeviceId);
#endif
int XTrain_step_CfgInitialize(XTrain_step *InstancePtr, XTrain_step_Config *ConfigPtr);
#else
int XTrain_step_Initialize(XTrain_step *InstancePtr, const char* InstanceName);
int XTrain_step_Release(XTrain_step *InstancePtr);
#endif

void XTrain_step_Start(XTrain_step *InstancePtr);
u32 XTrain_step_IsDone(XTrain_step *InstancePtr);
u32 XTrain_step_IsIdle(XTrain_step *InstancePtr);
u32 XTrain_step_IsReady(XTrain_step *InstancePtr);
void XTrain_step_EnableAutoRestart(XTrain_step *InstancePtr);
void XTrain_step_DisableAutoRestart(XTrain_step *InstancePtr);

void XTrain_step_Set_W1(XTrain_step *InstancePtr, u64 Data);
u64 XTrain_step_Get_W1(XTrain_step *InstancePtr);
void XTrain_step_Set_W2(XTrain_step *InstancePtr, u64 Data);
u64 XTrain_step_Get_W2(XTrain_step *InstancePtr);
void XTrain_step_Set_sample_idx(XTrain_step *InstancePtr, u32 Data);
u32 XTrain_step_Get_sample_idx(XTrain_step *InstancePtr);

void XTrain_step_InterruptGlobalEnable(XTrain_step *InstancePtr);
void XTrain_step_InterruptGlobalDisable(XTrain_step *InstancePtr);
void XTrain_step_InterruptEnable(XTrain_step *InstancePtr, u32 Mask);
void XTrain_step_InterruptDisable(XTrain_step *InstancePtr, u32 Mask);
void XTrain_step_InterruptClear(XTrain_step *InstancePtr, u32 Mask);
u32 XTrain_step_InterruptGetEnabled(XTrain_step *InstancePtr);
u32 XTrain_step_InterruptGetStatus(XTrain_step *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
