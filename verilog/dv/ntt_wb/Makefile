# SPDX-FileCopyrightText: 2026 Srijan1972
# SPDX-License-Identifier: Apache-2.0

RTL := ../../rtl
SOURCES := \
	$(RTL)/bank_ram_1r1w.v \
	$(RTL)/bank_ram_1rw1r.v \
	$(RTL)/modmul_solinas.v \
	$(RTL)/ntt_butterfly_ct.v \
	$(RTL)/zeta_store.v \
	$(RTL)/ntt_engine_256.v \
	$(RTL)/ntt.v \
	ntt_wb_tb.v

.PHONY: all clean
all:
	iverilog -g2012 -Wall -s ntt_wb_tb -o ntt_wb.vvp $(SOURCES)
	vvp ntt_wb.vvp

clean:
	rm -f ntt_wb.vvp
