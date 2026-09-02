// SPDX-FileCopyrightText: 2026 Srijan1972
// SPDX-License-Identifier: Apache-2.0

#include <firmware_apis.h>

#define NTT_CMD_OFFSET         0
#define NTT_EXT_WR_CTL_OFFSET  1
#define NTT_EXT_RD_CTL_OFFSET  2
#define NTT_EXT_WR_DAT_OFFSET  3
#define NTT_STATUS_OFFSET      6
#define NTT_EXT_RD_DAT_OFFSET  7

#define NTT_STATUS_DONE        0x2
#define NTT_STATUS_EXT_RVALID  0x4
#define NTT_TEST_ADDR          0x2a
#define NTT_TEST_WORD          0xdeadbeef
#define NTT_POLL_LIMIT         2048
#define NTT_CTL(slot, addr)    (((addr) << 3) | ((slot) << 1) | 1)
#define NTT_COPY_CMD(src, dst) (1 | (1 << 1) | ((src) << 4) | ((dst) << 8))

static int wait_for_status(int mask, int expected)
{
    int timeout = NTT_POLL_LIMIT;

    while (timeout-- != 0) {
        if ((USER_readWord(NTT_STATUS_OFFSET) & mask) == expected)
            return 1;
    }
    return 0;
}

void main()
{
    ManagmentGpio_outputEnable();
    ManagmentGpio_write(0);
    enableHkSpi(0);
    GPIOs_configureAll(GPIO_MODE_USER_STD_INPUT_NOPULL);
    GPIOs_loadConfigs();
    User_enableIF();

    // High means configuration is complete and the self-test has started.
    ManagmentGpio_write(1);

    USER_writeWord(NTT_TEST_WORD, NTT_EXT_WR_DAT_OFFSET);
    USER_writeWord(NTT_CTL(2, NTT_TEST_ADDR), NTT_EXT_WR_CTL_OFFSET);
    USER_writeWord(NTT_CTL(2, NTT_TEST_ADDR), NTT_EXT_RD_CTL_OFFSET);
    if (!wait_for_status(NTT_STATUS_EXT_RVALID, NTT_STATUS_EXT_RVALID))
        return;
    if (USER_readWord(NTT_EXT_RD_DAT_OFFSET) != NTT_TEST_WORD)
        return;

    USER_writeWord(NTT_COPY_CMD(2, 1), NTT_CMD_OFFSET);
    if (!wait_for_status(NTT_STATUS_DONE, NTT_STATUS_DONE))
        return;

    USER_writeWord(NTT_CTL(1, NTT_TEST_ADDR), NTT_EXT_RD_CTL_OFFSET);
    if (!wait_for_status(NTT_STATUS_EXT_RVALID, NTT_STATUS_EXT_RVALID))
        return;
    if (USER_readWord(NTT_EXT_RD_DAT_OFFSET) != NTT_TEST_WORD)
        return;

    // Low after the start marker is the pass indication consumed by cocotb.
    ManagmentGpio_write(0);
}
