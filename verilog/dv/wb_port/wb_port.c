/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

// This include is relative to $CARAVEL_PATH (see Makefile)
#include <defs.h>
#include <stub.c>

#define NTT_BASE       0x30000000u
#define NTT_CMD        (*(volatile uint32_t *)(NTT_BASE + 0x00u))
#define NTT_EXT_WR_CTL (*(volatile uint32_t *)(NTT_BASE + 0x04u))
#define NTT_EXT_RD_CTL (*(volatile uint32_t *)(NTT_BASE + 0x08u))
#define NTT_EXT_WR_DAT (*(volatile uint32_t *)(NTT_BASE + 0x0cu))
#define NTT_STATUS     (*(volatile uint32_t *)(NTT_BASE + 0x18u))
#define NTT_EXT_RD_DAT (*(volatile uint32_t *)(NTT_BASE + 0x1cu))

#define NTT_STATUS_BUSY        0x1u
#define NTT_STATUS_DONE        0x2u
#define NTT_STATUS_EXT_RVALID  0x4u
#define NTT_TEST_ADDR          0x2au
#define NTT_TEST_SLOT          2u
#define NTT_TEST_WORD          0xdeadbeefu
#define NTT_POLL_LIMIT         2048u
#define NTT_CTL(slot, addr)    (((addr) << 3) | ((slot) << 1) | 1u)
#define NTT_COPY_CMD(src, dst) (1u | (1u << 1) | ((src) << 4) | ((dst) << 8))

static uint32_t wait_for_status(uint32_t mask, uint32_t expected)
{
    uint32_t timeout = NTT_POLL_LIMIT;

    while (timeout-- != 0u) {
        if ((NTT_STATUS & mask) == expected)
            return 1u;
    }
    return 0u;
}

/*
	NTT Wishbone Test:
		- Writes and reads a coefficient through the Caravel user bus
		- Starts an NTT-engine COPY operation and verifies its result
*/

void main()
{

	/* 
	IO Control Registers
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |
	Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
	
	 
	Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |
	*/

	/* Set up the housekeeping SPI to be connected internally so	*/
	/* that external pin changes don't affect it.			*/

    reg_spi_enable = 1;
    reg_wb_enable = 1;
	// reg_spimaster_config = 0xa002;	// Enable, prescaler = 2,
                                        // connect to housekeeping SPI

	// Connect the housekeeping SPI to the SPI master
	// so that the CSB line is not left floating.  This allows
	// all of the GPIO pins to be used for user functions.

    reg_mprj_io_31 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_30 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_29 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_28 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_27 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_26 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_25 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_24 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_23 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_22 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_21 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_20 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_19 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_18 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_17 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_16 = GPIO_MODE_MGMT_STD_OUTPUT;

     /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

	reg_la2_oenb = reg_la2_iena = 0x00000000;    // [95:64]

    // Flag start of the test
	reg_mprj_datal = 0xAB600000;

    NTT_EXT_WR_DAT = NTT_TEST_WORD;
    NTT_EXT_WR_CTL = NTT_CTL(NTT_TEST_SLOT, NTT_TEST_ADDR);

    NTT_EXT_RD_CTL = NTT_CTL(NTT_TEST_SLOT, NTT_TEST_ADDR);
    if (!wait_for_status(NTT_STATUS_EXT_RVALID, NTT_STATUS_EXT_RVALID)) {
        reg_mprj_datal = 0xAB620000;
        return;
    }
    if (NTT_EXT_RD_DAT != NTT_TEST_WORD) {
        reg_mprj_datal = 0xAB630000;
        return;
    }

    // COPY slot 2 to slot 1 and wait for completion.  Do not poll for BUSY to
    // become high: the engine can finish before the management CPU's next
    // Wishbone read.  DONE remains asserted until another command starts.
    NTT_CMD = NTT_COPY_CMD(2u, 1u);
    if (!wait_for_status(NTT_STATUS_DONE, NTT_STATUS_DONE)) {
        reg_mprj_datal = 0xAB650000;
        return;
    }

    NTT_EXT_RD_CTL = NTT_CTL(1u, NTT_TEST_ADDR);
    if (!wait_for_status(NTT_STATUS_EXT_RVALID, NTT_STATUS_EXT_RVALID)) {
        reg_mprj_datal = 0xAB660000;
        return;
    }
    if (NTT_EXT_RD_DAT != NTT_TEST_WORD) {
        reg_mprj_datal = 0xAB670000;
        return;
    }

    reg_mprj_datal = 0xAB610000;
}
