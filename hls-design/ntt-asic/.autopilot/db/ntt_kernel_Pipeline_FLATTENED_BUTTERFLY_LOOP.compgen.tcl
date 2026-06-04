# This script segment is generated automatically by AutoPilot

set name ntt_kernel_mul_32ns_32ns_64_4_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name ntt_kernel_mul_32s_32s_32_4_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ntt_kernel_sparsemux_9_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ntt_kernel_sparsemux_17_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ntt_kernel_add_64ns_64ns_64_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ntt_kernel_sparsemux_9_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name local_twiddles \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_twiddles \
    op interface \
    ports { local_twiddles_address0 { O 10 vector } local_twiddles_ce0 { O 1 bit } local_twiddles_q0 { I 32 vector } local_twiddles_address1 { O 10 vector } local_twiddles_ce1 { O 1 bit } local_twiddles_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_twiddles'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name local_twiddles_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_twiddles_1 \
    op interface \
    ports { local_twiddles_1_address0 { O 10 vector } local_twiddles_1_ce0 { O 1 bit } local_twiddles_1_q0 { I 32 vector } local_twiddles_1_address1 { O 10 vector } local_twiddles_1_ce1 { O 1 bit } local_twiddles_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_twiddles_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name local_twiddles_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_twiddles_2 \
    op interface \
    ports { local_twiddles_2_address0 { O 10 vector } local_twiddles_2_ce0 { O 1 bit } local_twiddles_2_q0 { I 32 vector } local_twiddles_2_address1 { O 10 vector } local_twiddles_2_ce1 { O 1 bit } local_twiddles_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_twiddles_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name local_twiddles_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_twiddles_3 \
    op interface \
    ports { local_twiddles_3_address0 { O 10 vector } local_twiddles_3_ce0 { O 1 bit } local_twiddles_3_q0 { I 32 vector } local_twiddles_3_address1 { O 10 vector } local_twiddles_3_ce1 { O 1 bit } local_twiddles_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_twiddles_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name ping \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping \
    op interface \
    ports { ping_address0 { O 9 vector } ping_ce0 { O 1 bit } ping_q0 { I 32 vector } ping_address1 { O 9 vector } ping_ce1 { O 1 bit } ping_we1 { O 1 bit } ping_d1 { O 32 vector } ping_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name ping_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_1 \
    op interface \
    ports { ping_1_address0 { O 9 vector } ping_1_ce0 { O 1 bit } ping_1_q0 { I 32 vector } ping_1_address1 { O 9 vector } ping_1_ce1 { O 1 bit } ping_1_we1 { O 1 bit } ping_1_d1 { O 32 vector } ping_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name ping_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_2 \
    op interface \
    ports { ping_2_address0 { O 9 vector } ping_2_ce0 { O 1 bit } ping_2_q0 { I 32 vector } ping_2_address1 { O 9 vector } ping_2_ce1 { O 1 bit } ping_2_we1 { O 1 bit } ping_2_d1 { O 32 vector } ping_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name ping_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_3 \
    op interface \
    ports { ping_3_address0 { O 9 vector } ping_3_ce0 { O 1 bit } ping_3_q0 { I 32 vector } ping_3_address1 { O 9 vector } ping_3_ce1 { O 1 bit } ping_3_we1 { O 1 bit } ping_3_d1 { O 32 vector } ping_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name ping_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_4 \
    op interface \
    ports { ping_4_address0 { O 9 vector } ping_4_ce0 { O 1 bit } ping_4_q0 { I 32 vector } ping_4_address1 { O 9 vector } ping_4_ce1 { O 1 bit } ping_4_we1 { O 1 bit } ping_4_d1 { O 32 vector } ping_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name ping_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_5 \
    op interface \
    ports { ping_5_address0 { O 9 vector } ping_5_ce0 { O 1 bit } ping_5_q0 { I 32 vector } ping_5_address1 { O 9 vector } ping_5_ce1 { O 1 bit } ping_5_we1 { O 1 bit } ping_5_d1 { O 32 vector } ping_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name ping_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_6 \
    op interface \
    ports { ping_6_address0 { O 9 vector } ping_6_ce0 { O 1 bit } ping_6_q0 { I 32 vector } ping_6_address1 { O 9 vector } ping_6_ce1 { O 1 bit } ping_6_we1 { O 1 bit } ping_6_d1 { O 32 vector } ping_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name ping_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ping_7 \
    op interface \
    ports { ping_7_address0 { O 9 vector } ping_7_ce0 { O 1 bit } ping_7_q0 { I 32 vector } ping_7_address1 { O 9 vector } ping_7_ce1 { O 1 bit } ping_7_we1 { O 1 bit } ping_7_d1 { O 32 vector } ping_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ping_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name pong \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong \
    op interface \
    ports { pong_address0 { O 9 vector } pong_ce0 { O 1 bit } pong_q0 { I 32 vector } pong_address1 { O 9 vector } pong_ce1 { O 1 bit } pong_we1 { O 1 bit } pong_d1 { O 32 vector } pong_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name pong_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_1 \
    op interface \
    ports { pong_1_address0 { O 9 vector } pong_1_ce0 { O 1 bit } pong_1_q0 { I 32 vector } pong_1_address1 { O 9 vector } pong_1_ce1 { O 1 bit } pong_1_we1 { O 1 bit } pong_1_d1 { O 32 vector } pong_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name pong_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_2 \
    op interface \
    ports { pong_2_address0 { O 9 vector } pong_2_ce0 { O 1 bit } pong_2_q0 { I 32 vector } pong_2_address1 { O 9 vector } pong_2_ce1 { O 1 bit } pong_2_we1 { O 1 bit } pong_2_d1 { O 32 vector } pong_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name pong_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_3 \
    op interface \
    ports { pong_3_address0 { O 9 vector } pong_3_ce0 { O 1 bit } pong_3_q0 { I 32 vector } pong_3_address1 { O 9 vector } pong_3_ce1 { O 1 bit } pong_3_we1 { O 1 bit } pong_3_d1 { O 32 vector } pong_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name pong_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_4 \
    op interface \
    ports { pong_4_address0 { O 9 vector } pong_4_ce0 { O 1 bit } pong_4_q0 { I 32 vector } pong_4_address1 { O 9 vector } pong_4_ce1 { O 1 bit } pong_4_we1 { O 1 bit } pong_4_d1 { O 32 vector } pong_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name pong_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_5 \
    op interface \
    ports { pong_5_address0 { O 9 vector } pong_5_ce0 { O 1 bit } pong_5_q0 { I 32 vector } pong_5_address1 { O 9 vector } pong_5_ce1 { O 1 bit } pong_5_we1 { O 1 bit } pong_5_d1 { O 32 vector } pong_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name pong_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_6 \
    op interface \
    ports { pong_6_address0 { O 9 vector } pong_6_ce0 { O 1 bit } pong_6_q0 { I 32 vector } pong_6_address1 { O 9 vector } pong_6_ce1 { O 1 bit } pong_6_we1 { O 1 bit } pong_6_d1 { O 32 vector } pong_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name pong_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pong_7 \
    op interface \
    ports { pong_7_address0 { O 9 vector } pong_7_ce0 { O 1 bit } pong_7_q0 { I 32 vector } pong_7_address1 { O 9 vector } pong_7_ce1 { O 1 bit } pong_7_we1 { O 1 bit } pong_7_d1 { O 32 vector } pong_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pong_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name half_n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_half_n \
    op interface \
    ports { half_n { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name add_ln127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln127 \
    op interface \
    ports { add_ln127 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name empty_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_41 \
    op interface \
    ports { empty_41 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name empty_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_42 \
    op interface \
    ports { empty_42 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name use_ping_as_input \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_use_ping_as_input \
    op interface \
    ports { use_ping_as_input { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name q_inv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_q_inv \
    op interface \
    ports { q_inv { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name conv5_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv5_i \
    op interface \
    ports { conv5_i { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name q \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_q \
    op interface \
    ports { q { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name half_n_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_half_n_1 \
    op interface \
    ports { half_n_1 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 11 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName ntt_kernel_flow_control_loop_pipe_sequential_init_U
set CompName ntt_kernel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ntt_kernel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


