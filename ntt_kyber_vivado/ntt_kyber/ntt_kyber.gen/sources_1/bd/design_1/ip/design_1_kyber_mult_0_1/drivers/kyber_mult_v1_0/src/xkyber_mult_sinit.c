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
#include "xkyber_mult.h"

extern XKyber_mult_Config XKyber_mult_ConfigTable[];

#ifdef SDT
XKyber_mult_Config *XKyber_mult_LookupConfig(UINTPTR BaseAddress) {
	XKyber_mult_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XKyber_mult_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XKyber_mult_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XKyber_mult_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKyber_mult_Initialize(XKyber_mult *InstancePtr, UINTPTR BaseAddress) {
	XKyber_mult_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKyber_mult_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKyber_mult_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XKyber_mult_Config *XKyber_mult_LookupConfig(u16 DeviceId) {
	XKyber_mult_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKYBER_MULT_NUM_INSTANCES; Index++) {
		if (XKyber_mult_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKyber_mult_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKyber_mult_Initialize(XKyber_mult *InstancePtr, u16 DeviceId) {
	XKyber_mult_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKyber_mult_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKyber_mult_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

