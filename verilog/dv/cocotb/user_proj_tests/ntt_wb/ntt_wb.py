# SPDX-FileCopyrightText: 2026 Srijan1972
# SPDX-License-Identifier: Apache-2.0

import cocotb
from caravel_cocotb.caravel_interfaces import report_test, test_configure


@cocotb.test()
@report_test
async def ntt_wb(dut):
    """Run the SRAM readback and COPY test from management firmware."""
    caravel_env = await test_configure(dut, timeout_cycles=80000)

    await caravel_env.release_csb()
    await caravel_env.wait_mgmt_gpio(1)
    cocotb.log.info("NTT firmware reached the configured/start marker")
    await caravel_env.wait_mgmt_gpio(0)
    cocotb.log.info("NTT Wishbone SRAM and COPY checks passed")
