// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XKYBER_MULT_H
#define XKYBER_MULT_H

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
#include "xkyber_mult_hw.h"

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
} XKyber_mult_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKyber_mult;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKyber_mult_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKyber_mult_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKyber_mult_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKyber_mult_ReadReg(BaseAddress, RegOffset) \
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
int XKyber_mult_Initialize(XKyber_mult *InstancePtr, UINTPTR BaseAddress);
XKyber_mult_Config* XKyber_mult_LookupConfig(UINTPTR BaseAddress);
#else
int XKyber_mult_Initialize(XKyber_mult *InstancePtr, u16 DeviceId);
XKyber_mult_Config* XKyber_mult_LookupConfig(u16 DeviceId);
#endif
int XKyber_mult_CfgInitialize(XKyber_mult *InstancePtr, XKyber_mult_Config *ConfigPtr);
#else
int XKyber_mult_Initialize(XKyber_mult *InstancePtr, const char* InstanceName);
int XKyber_mult_Release(XKyber_mult *InstancePtr);
#endif

void XKyber_mult_Start(XKyber_mult *InstancePtr);
u32 XKyber_mult_IsDone(XKyber_mult *InstancePtr);
u32 XKyber_mult_IsIdle(XKyber_mult *InstancePtr);
u32 XKyber_mult_IsReady(XKyber_mult *InstancePtr);
void XKyber_mult_EnableAutoRestart(XKyber_mult *InstancePtr);
void XKyber_mult_DisableAutoRestart(XKyber_mult *InstancePtr);

void XKyber_mult_Set_a(XKyber_mult *InstancePtr, u64 Data);
u64 XKyber_mult_Get_a(XKyber_mult *InstancePtr);
void XKyber_mult_Set_b(XKyber_mult *InstancePtr, u64 Data);
u64 XKyber_mult_Get_b(XKyber_mult *InstancePtr);
void XKyber_mult_Set_c(XKyber_mult *InstancePtr, u64 Data);
u64 XKyber_mult_Get_c(XKyber_mult *InstancePtr);
void XKyber_mult_Set_batch_size(XKyber_mult *InstancePtr, u32 Data);
u32 XKyber_mult_Get_batch_size(XKyber_mult *InstancePtr);

void XKyber_mult_InterruptGlobalEnable(XKyber_mult *InstancePtr);
void XKyber_mult_InterruptGlobalDisable(XKyber_mult *InstancePtr);
void XKyber_mult_InterruptEnable(XKyber_mult *InstancePtr, u32 Mask);
void XKyber_mult_InterruptDisable(XKyber_mult *InstancePtr, u32 Mask);
void XKyber_mult_InterruptClear(XKyber_mult *InstancePtr, u32 Mask);
u32 XKyber_mult_InterruptGetEnabled(XKyber_mult *InstancePtr);
u32 XKyber_mult_InterruptGetStatus(XKyber_mult *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
