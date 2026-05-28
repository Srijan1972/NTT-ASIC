// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xntt_kernel.h"

extern XNtt_kernel_Config XNtt_kernel_ConfigTable[];

#ifdef SDT
XNtt_kernel_Config *XNtt_kernel_LookupConfig(UINTPTR BaseAddress) {
	XNtt_kernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XNtt_kernel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XNtt_kernel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XNtt_kernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNtt_kernel_Initialize(XNtt_kernel *InstancePtr, UINTPTR BaseAddress) {
	XNtt_kernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNtt_kernel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNtt_kernel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XNtt_kernel_Config *XNtt_kernel_LookupConfig(u16 DeviceId) {
	XNtt_kernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNTT_KERNEL_NUM_INSTANCES; Index++) {
		if (XNtt_kernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNtt_kernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNtt_kernel_Initialize(XNtt_kernel *InstancePtr, u16 DeviceId) {
	XNtt_kernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNtt_kernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNtt_kernel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

