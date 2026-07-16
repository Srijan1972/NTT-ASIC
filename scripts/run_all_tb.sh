#!/usr/bin/env bash
# Full verification chain. Run from the repo root (the directory that
# contains rtl/, tb/, golden/, sim/). Requires: python3, iverilog.
set -e
cd "$(dirname "$0")/.."

echo "=== regenerate golden collateral ==="
python3 golden/gen_zeta_rom.py
python3 golden/gen_modmul_vectors.py   --out-dir golden/test_vectors
python3 golden/gen_bfly_vectors.py     --out-dir golden/test_vectors
python3 golden/gen_engine_vectors.py   --out-dir golden/test_vectors
python3 golden/gen_pointwise_vectors.py --out-dir golden/test_vectors
python3 golden/gen_intt_vectors.py     --out-dir golden/test_vectors

echo "=== golden self-checks ==="
python3 golden/test_dilithium_modmul.py | tail -1
python3 golden/test_dilithium_ntt.py    | tail -1
python3 golden/dilithium_pointwise.py   | tail -1
python3 golden/dilithium_intt.py        | tail -1
python3 golden/dilithium_engine_sched.py | tail -1
python3 golden/dilithium_zeta_sram.py     | tail -1
python3 golden/dilithium_merged_sched.py  | tail -1

RTL_CORE="rtl/modmul_solinas.sv rtl/ntt_butterfly_ct.sv rtl/zeta_store.sv rtl/ntt_engine_256.sv"
BEH="rtl/bank_ram_1r1w.sv rtl/bank_ram_1rw1r.sv"
MACRO="rtl/asic_sram_1r1w_sky130.v rtl/asic_sram_1rw1r_sky130.v sim/sky130_sram_beh.v"

echo "=== behavioral-RAM RTL sims ==="
iverilog -g2012 -o /tmp/t_mm  rtl/modmul_solinas.sv tb/tb_modmul_solinas.sv               && vvp /tmp/t_mm  | grep -E "PASS|FAIL"
iverilog -g2012 -o /tmp/t_bf  rtl/modmul_solinas.sv rtl/ntt_butterfly_ct.sv tb/tb_ntt_butterfly_ct.sv && vvp /tmp/t_bf | grep -E "PASS|FAIL"
iverilog -g2012 -o /tmp/t_nt  $RTL_CORE $BEH tb/tb_ntt_engine_256.sv                       && vvp /tmp/t_nt  | grep -E "PASS|FAIL"
iverilog -g2012 -o /tmp/t_pw  $RTL_CORE $BEH tb/tb_ntt_pointwise.sv                         && vvp /tmp/t_pw  | grep -E "PASS|FAIL"
iverilog -g2012 -o /tmp/t_pm  $RTL_CORE $BEH tb/tb_ntt_polymul.sv                           && vvp /tmp/t_pm  | grep -E "PASS|FAIL"

echo "=== SRAM-macro-bound RTL sims (behavioral macro model) ==="
iverilog -g2012 -DUSE_SRAM_MACRO -o /tmp/t_ntm $RTL_CORE $MACRO tb/tb_ntt_engine_256.sv    && vvp /tmp/t_ntm | grep -E "PASS|FAIL"
iverilog -g2012 -DUSE_SRAM_MACRO -o /tmp/t_pwm $RTL_CORE $MACRO tb/tb_ntt_pointwise.sv      && vvp /tmp/t_pwm | grep -E "PASS|FAIL"
iverilog -g2012 -DUSE_SRAM_MACRO -o /tmp/t_pmm $RTL_CORE $MACRO tb/tb_ntt_polymul.sv        && vvp /tmp/t_pmm | grep -E "PASS|FAIL"

echo "=== all tests complete ==="
