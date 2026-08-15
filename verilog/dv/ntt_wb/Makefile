# SPDX-FileCopyrightText: 2026 Srijan1972
# SPDX-License-Identifier: Apache-2.0

RTL := ../../rtl
PROJECT_ROOT := $(abspath ../../..)
DV_IMAGE ?= efabless/dv:cocotb
SOURCES := \
	$(RTL)/bank_ram_1r1w.v \
	$(RTL)/bank_ram_1rw1r.v \
	$(RTL)/modmul_solinas.v \
	$(RTL)/ntt_butterfly_ct.v \
	$(RTL)/zeta_store.v \
	$(RTL)/ntt_engine_256.v \
	$(RTL)/ntt.v \
	ntt_wb_tb.v

.PHONY: all run clean

ifeq ($(shell command -v iverilog 2>/dev/null),)
all:
	docker run --rm \
		-u $(shell id -u):$(shell id -g) \
		-v $(PROJECT_ROOT):/work \
		-w /work/verilog/dv/ntt_wb \
		$(DV_IMAGE) make run
else
all: run
endif

run:
	iverilog -g2012 -Wall -s ntt_wb_tb -o ntt_wb.vvp $(SOURCES)
	vvp ntt_wb.vvp

clean:
	rm -f ntt_wb.vvp
