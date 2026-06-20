// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xkyber_mult.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKyber_mult_CfgInitialize(XKyber_mult *InstancePtr, XKyber_mult_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKyber_mult_Start(XKyber_mult *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKyber_mult_IsDone(XKyber_mult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKyber_mult_IsIdle(XKyber_mult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKyber_mult_IsReady(XKyber_mult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKyber_mult_EnableAutoRestart(XKyber_mult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKyber_mult_DisableAutoRestart(XKyber_mult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_AP_CTRL, 0);
}

void XKyber_mult_Set_a(XKyber_mult *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_A_DATA, (u32)(Data));
    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XKyber_mult_Get_a(XKyber_mult *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_A_DATA);
    Data += (u64)XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XKyber_mult_Set_b(XKyber_mult *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_B_DATA, (u32)(Data));
    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XKyber_mult_Get_b(XKyber_mult *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_B_DATA);
    Data += (u64)XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XKyber_mult_Set_c(XKyber_mult *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_C_DATA, (u32)(Data));
    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XKyber_mult_Get_c(XKyber_mult *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_C_DATA);
    Data += (u64)XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XKyber_mult_Set_batch_size(XKyber_mult *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_BATCH_SIZE_DATA, Data);
}

u32 XKyber_mult_Get_batch_size(XKyber_mult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_BATCH_SIZE_DATA);
    return Data;
}

void XKyber_mult_InterruptGlobalEnable(XKyber_mult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_GIE, 1);
}

void XKyber_mult_InterruptGlobalDisable(XKyber_mult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_GIE, 0);
}

void XKyber_mult_InterruptEnable(XKyber_mult *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_IER);
    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_IER, Register | Mask);
}

void XKyber_mult_InterruptDisable(XKyber_mult *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_IER);
    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKyber_mult_InterruptClear(XKyber_mult *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKyber_mult_WriteReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_ISR, Mask);
}

u32 XKyber_mult_InterruptGetEnabled(XKyber_mult *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_IER);
}

u32 XKyber_mult_InterruptGetStatus(XKyber_mult *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKyber_mult_ReadReg(InstancePtr->Control_BaseAddress, XKYBER_MULT_CONTROL_ADDR_ISR);
}

