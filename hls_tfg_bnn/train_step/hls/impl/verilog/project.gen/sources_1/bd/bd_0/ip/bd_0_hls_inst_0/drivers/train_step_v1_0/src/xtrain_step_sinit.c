// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xtrain_step.h"

extern XTrain_step_Config XTrain_step_ConfigTable[];

#ifdef SDT
XTrain_step_Config *XTrain_step_LookupConfig(UINTPTR BaseAddress) {
	XTrain_step_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XTrain_step_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XTrain_step_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XTrain_step_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTrain_step_Initialize(XTrain_step *InstancePtr, UINTPTR BaseAddress) {
	XTrain_step_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTrain_step_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTrain_step_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XTrain_step_Config *XTrain_step_LookupConfig(u16 DeviceId) {
	XTrain_step_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTRAIN_STEP_NUM_INSTANCES; Index++) {
		if (XTrain_step_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTrain_step_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTrain_step_Initialize(XTrain_step *InstancePtr, u16 DeviceId) {
	XTrain_step_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTrain_step_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTrain_step_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

