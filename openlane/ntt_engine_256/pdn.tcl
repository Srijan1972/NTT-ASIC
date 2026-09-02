# SPDX-FileCopyrightText: 2026 NTT-ASIC contributors
# SPDX-License-Identifier: Apache-2.0

# Keep the engine boundary pins on met4 and add a met5 stripe mesh. The met5
# stripes intersect the six embedded SRAM macros' met4 power rings, providing
# the physical VPWR/VGND connections required by LVS.

source $::env(SCRIPTS_DIR)/openroad/common/set_global_connections.tcl
set_global_connections

set_voltage_domain \
    -name CORE \
    -power $::env(VDD_NET) \
    -ground $::env(GND_NET)

define_pdn_grid \
    -name stdcell_grid \
    -starts_with POWER \
    -voltage_domain CORE \
    -pins $::env(FP_PDN_VERTICAL_LAYER)

add_pdn_stripe \
    -grid stdcell_grid \
    -layer $::env(FP_PDN_VERTICAL_LAYER) \
    -width $::env(FP_PDN_VWIDTH) \
    -pitch $::env(FP_PDN_VPITCH) \
    -offset $::env(FP_PDN_VOFFSET) \
    -starts_with POWER

add_pdn_stripe \
    -grid stdcell_grid \
    -layer $::env(FP_PDN_HORIZONTAL_LAYER) \
    -width $::env(FP_PDN_HWIDTH) \
    -pitch $::env(FP_PDN_HPITCH) \
    -offset $::env(FP_PDN_HOFFSET) \
    -starts_with POWER

add_pdn_connect \
    -grid stdcell_grid \
    -layers "$::env(FP_PDN_VERTICAL_LAYER) $::env(FP_PDN_HORIZONTAL_LAYER)"

if { $::env(FP_PDN_ENABLE_RAILS) == 1 } {
    add_pdn_stripe \
        -grid stdcell_grid \
        -layer $::env(FP_PDN_RAIL_LAYER) \
        -width $::env(FP_PDN_RAIL_WIDTH) \
        -followpins \
        -starts_with POWER

    add_pdn_connect \
        -grid stdcell_grid \
        -layers "$::env(FP_PDN_RAIL_LAYER) $::env(FP_PDN_VERTICAL_LAYER)"
}

define_pdn_grid \
    -macro \
    -default \
    -name macro_grid \
    -starts_with POWER \
    -halo "$::env(FP_PDN_HORIZONTAL_HALO) $::env(FP_PDN_VERTICAL_HALO)"

add_pdn_connect \
    -grid macro_grid \
    -layers "$::env(FP_PDN_VERTICAL_LAYER) $::env(FP_PDN_HORIZONTAL_LAYER)"
