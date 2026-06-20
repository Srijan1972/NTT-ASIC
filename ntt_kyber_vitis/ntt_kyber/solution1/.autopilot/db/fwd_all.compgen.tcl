# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 927 \
    name sA0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sA0 \
    op interface \
    ports { sA0_dout { I 192 vector } sA0_num_data_valid { I 6 vector } sA0_fifo_cap { I 6 vector } sA0_empty_n { I 1 bit } sA0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 928 \
    name sB0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sB0 \
    op interface \
    ports { sB0_dout { I 192 vector } sB0_num_data_valid { I 6 vector } sB0_fifo_cap { I 6 vector } sB0_empty_n { I 1 bit } sB0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 929 \
    name sA1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sA1 \
    op interface \
    ports { sA1_din { O 192 vector } sA1_num_data_valid { I 6 vector } sA1_fifo_cap { I 6 vector } sA1_full_n { I 1 bit } sA1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 930 \
    name sB1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sB1 \
    op interface \
    ports { sB1_din { O 192 vector } sB1_num_data_valid { I 6 vector } sB1_fifo_cap { I 6 vector } sB1_full_n { I 1 bit } sB1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 931 \
    name batch \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_batch \
    op interface \
    ports { batch_dout { I 32 vector } batch_num_data_valid { I 3 vector } batch_fifo_cap { I 3 vector } batch_empty_n { I 1 bit } batch_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 932 \
    name batch_size_c14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_size_c14 \
    op interface \
    ports { batch_size_c14_din { O 32 vector } batch_size_c14_num_data_valid { I 3 vector } batch_size_c14_fifo_cap { I 3 vector } batch_size_c14_full_n { I 1 bit } batch_size_c14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


