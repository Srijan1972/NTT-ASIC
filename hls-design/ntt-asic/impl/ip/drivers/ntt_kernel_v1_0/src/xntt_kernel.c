// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xntt_kernel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNtt_kernel_CfgInitialize(XNtt_kernel *InstancePtr, XNtt_kernel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNtt_kernel_Start(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNtt_kernel_IsDone(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNtt_kernel_IsIdle(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNtt_kernel_IsReady(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNtt_kernel_EnableAutoRestart(XNtt_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XNtt_kernel_DisableAutoRestart(XNtt_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XNtt_kernel_Set_x(XNtt_kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_X_DATA, (u32)(Data));
    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XNtt_kernel_Get_x(XNtt_kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_X_DATA);
    Data += (u64)XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XNtt_kernel_Set_psi_powers(XNtt_kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_PSI_POWERS_DATA, (u32)(Data));
    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_PSI_POWERS_DATA + 4, (u32)(Data >> 32));
}

u64 XNtt_kernel_Get_psi_powers(XNtt_kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_PSI_POWERS_DATA);
    Data += (u64)XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_PSI_POWERS_DATA + 4) << 32;
    return Data;
}

void XNtt_kernel_Set_twiddles(XNtt_kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_TWIDDLES_DATA, (u32)(Data));
    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_TWIDDLES_DATA + 4, (u32)(Data >> 32));
}

u64 XNtt_kernel_Get_twiddles(XNtt_kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_TWIDDLES_DATA);
    Data += (u64)XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_TWIDDLES_DATA + 4) << 32;
    return Data;
}

void XNtt_kernel_Set_q(XNtt_kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_Q_DATA, Data);
}

u32 XNtt_kernel_Get_q(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_Q_DATA);
    return Data;
}

void XNtt_kernel_Set_q_inv(XNtt_kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_Q_INV_DATA, Data);
}

u32 XNtt_kernel_Get_q_inv(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_Q_INV_DATA);
    return Data;
}

void XNtt_kernel_Set_batch_size(XNtt_kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_BATCH_SIZE_DATA, Data);
}

u32 XNtt_kernel_Get_batch_size(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_BATCH_SIZE_DATA);
    return Data;
}

void XNtt_kernel_Set_n(XNtt_kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_N_DATA, Data);
}

u32 XNtt_kernel_Get_n(XNtt_kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_N_DATA);
    return Data;
}

void XNtt_kernel_InterruptGlobalEnable(XNtt_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_GIE, 1);
}

void XNtt_kernel_InterruptGlobalDisable(XNtt_kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_GIE, 0);
}

void XNtt_kernel_InterruptEnable(XNtt_kernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_IER);
    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_IER, Register | Mask);
}

void XNtt_kernel_InterruptDisable(XNtt_kernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_IER);
    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XNtt_kernel_InterruptClear(XNtt_kernel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_kernel_WriteReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_ISR, Mask);
}

u32 XNtt_kernel_InterruptGetEnabled(XNtt_kernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_IER);
}

u32 XNtt_kernel_InterruptGetStatus(XNtt_kernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNtt_kernel_ReadReg(InstancePtr->Control_BaseAddress, XNTT_KERNEL_CONTROL_ADDR_ISR);
}

