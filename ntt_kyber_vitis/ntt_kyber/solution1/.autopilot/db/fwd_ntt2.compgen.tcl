# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler kyber_mult_sparsemux_33_4_12_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler kyber_mult_fwd_ntt2_tA_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 861 \
    name A_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_0 \
    op interface \
    ports { A_0_address0 { O 4 vector } A_0_ce0 { O 1 bit } A_0_we0 { O 1 bit } A_0_d0 { O 12 vector } A_0_q0 { I 12 vector } A_0_address1 { O 4 vector } A_0_ce1 { O 1 bit } A_0_we1 { O 1 bit } A_0_d1 { O 12 vector } A_0_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 862 \
    name A_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_1 \
    op interface \
    ports { A_1_address0 { O 4 vector } A_1_ce0 { O 1 bit } A_1_we0 { O 1 bit } A_1_d0 { O 12 vector } A_1_q0 { I 12 vector } A_1_address1 { O 4 vector } A_1_ce1 { O 1 bit } A_1_we1 { O 1 bit } A_1_d1 { O 12 vector } A_1_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 863 \
    name A_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_2 \
    op interface \
    ports { A_2_address0 { O 4 vector } A_2_ce0 { O 1 bit } A_2_we0 { O 1 bit } A_2_d0 { O 12 vector } A_2_q0 { I 12 vector } A_2_address1 { O 4 vector } A_2_ce1 { O 1 bit } A_2_we1 { O 1 bit } A_2_d1 { O 12 vector } A_2_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 864 \
    name A_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_3 \
    op interface \
    ports { A_3_address0 { O 4 vector } A_3_ce0 { O 1 bit } A_3_we0 { O 1 bit } A_3_d0 { O 12 vector } A_3_q0 { I 12 vector } A_3_address1 { O 4 vector } A_3_ce1 { O 1 bit } A_3_we1 { O 1 bit } A_3_d1 { O 12 vector } A_3_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 865 \
    name A_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_4 \
    op interface \
    ports { A_4_address0 { O 4 vector } A_4_ce0 { O 1 bit } A_4_we0 { O 1 bit } A_4_d0 { O 12 vector } A_4_q0 { I 12 vector } A_4_address1 { O 4 vector } A_4_ce1 { O 1 bit } A_4_we1 { O 1 bit } A_4_d1 { O 12 vector } A_4_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 866 \
    name A_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_5 \
    op interface \
    ports { A_5_address0 { O 4 vector } A_5_ce0 { O 1 bit } A_5_we0 { O 1 bit } A_5_d0 { O 12 vector } A_5_q0 { I 12 vector } A_5_address1 { O 4 vector } A_5_ce1 { O 1 bit } A_5_we1 { O 1 bit } A_5_d1 { O 12 vector } A_5_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 867 \
    name A_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_6 \
    op interface \
    ports { A_6_address0 { O 4 vector } A_6_ce0 { O 1 bit } A_6_we0 { O 1 bit } A_6_d0 { O 12 vector } A_6_q0 { I 12 vector } A_6_address1 { O 4 vector } A_6_ce1 { O 1 bit } A_6_we1 { O 1 bit } A_6_d1 { O 12 vector } A_6_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 868 \
    name A_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_7 \
    op interface \
    ports { A_7_address0 { O 4 vector } A_7_ce0 { O 1 bit } A_7_we0 { O 1 bit } A_7_d0 { O 12 vector } A_7_q0 { I 12 vector } A_7_address1 { O 4 vector } A_7_ce1 { O 1 bit } A_7_we1 { O 1 bit } A_7_d1 { O 12 vector } A_7_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 869 \
    name A_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_8 \
    op interface \
    ports { A_8_address0 { O 4 vector } A_8_ce0 { O 1 bit } A_8_we0 { O 1 bit } A_8_d0 { O 12 vector } A_8_q0 { I 12 vector } A_8_address1 { O 4 vector } A_8_ce1 { O 1 bit } A_8_we1 { O 1 bit } A_8_d1 { O 12 vector } A_8_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 870 \
    name A_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_9 \
    op interface \
    ports { A_9_address0 { O 4 vector } A_9_ce0 { O 1 bit } A_9_we0 { O 1 bit } A_9_d0 { O 12 vector } A_9_q0 { I 12 vector } A_9_address1 { O 4 vector } A_9_ce1 { O 1 bit } A_9_we1 { O 1 bit } A_9_d1 { O 12 vector } A_9_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 871 \
    name A_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_10 \
    op interface \
    ports { A_10_address0 { O 4 vector } A_10_ce0 { O 1 bit } A_10_we0 { O 1 bit } A_10_d0 { O 12 vector } A_10_q0 { I 12 vector } A_10_address1 { O 4 vector } A_10_ce1 { O 1 bit } A_10_we1 { O 1 bit } A_10_d1 { O 12 vector } A_10_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 872 \
    name A_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_11 \
    op interface \
    ports { A_11_address0 { O 4 vector } A_11_ce0 { O 1 bit } A_11_we0 { O 1 bit } A_11_d0 { O 12 vector } A_11_q0 { I 12 vector } A_11_address1 { O 4 vector } A_11_ce1 { O 1 bit } A_11_we1 { O 1 bit } A_11_d1 { O 12 vector } A_11_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 873 \
    name A_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_12 \
    op interface \
    ports { A_12_address0 { O 4 vector } A_12_ce0 { O 1 bit } A_12_we0 { O 1 bit } A_12_d0 { O 12 vector } A_12_q0 { I 12 vector } A_12_address1 { O 4 vector } A_12_ce1 { O 1 bit } A_12_we1 { O 1 bit } A_12_d1 { O 12 vector } A_12_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 874 \
    name A_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_13 \
    op interface \
    ports { A_13_address0 { O 4 vector } A_13_ce0 { O 1 bit } A_13_we0 { O 1 bit } A_13_d0 { O 12 vector } A_13_q0 { I 12 vector } A_13_address1 { O 4 vector } A_13_ce1 { O 1 bit } A_13_we1 { O 1 bit } A_13_d1 { O 12 vector } A_13_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 875 \
    name A_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_14 \
    op interface \
    ports { A_14_address0 { O 4 vector } A_14_ce0 { O 1 bit } A_14_we0 { O 1 bit } A_14_d0 { O 12 vector } A_14_q0 { I 12 vector } A_14_address1 { O 4 vector } A_14_ce1 { O 1 bit } A_14_we1 { O 1 bit } A_14_d1 { O 12 vector } A_14_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 876 \
    name A_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_15 \
    op interface \
    ports { A_15_address0 { O 4 vector } A_15_ce0 { O 1 bit } A_15_we0 { O 1 bit } A_15_d0 { O 12 vector } A_15_q0 { I 12 vector } A_15_address1 { O 4 vector } A_15_ce1 { O 1 bit } A_15_we1 { O 1 bit } A_15_d1 { O 12 vector } A_15_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 877 \
    name B_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_0 \
    op interface \
    ports { B_0_address0 { O 4 vector } B_0_ce0 { O 1 bit } B_0_we0 { O 1 bit } B_0_d0 { O 12 vector } B_0_q0 { I 12 vector } B_0_address1 { O 4 vector } B_0_ce1 { O 1 bit } B_0_we1 { O 1 bit } B_0_d1 { O 12 vector } B_0_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 878 \
    name B_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_1 \
    op interface \
    ports { B_1_address0 { O 4 vector } B_1_ce0 { O 1 bit } B_1_we0 { O 1 bit } B_1_d0 { O 12 vector } B_1_q0 { I 12 vector } B_1_address1 { O 4 vector } B_1_ce1 { O 1 bit } B_1_we1 { O 1 bit } B_1_d1 { O 12 vector } B_1_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 879 \
    name B_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_2 \
    op interface \
    ports { B_2_address0 { O 4 vector } B_2_ce0 { O 1 bit } B_2_we0 { O 1 bit } B_2_d0 { O 12 vector } B_2_q0 { I 12 vector } B_2_address1 { O 4 vector } B_2_ce1 { O 1 bit } B_2_we1 { O 1 bit } B_2_d1 { O 12 vector } B_2_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 880 \
    name B_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_3 \
    op interface \
    ports { B_3_address0 { O 4 vector } B_3_ce0 { O 1 bit } B_3_we0 { O 1 bit } B_3_d0 { O 12 vector } B_3_q0 { I 12 vector } B_3_address1 { O 4 vector } B_3_ce1 { O 1 bit } B_3_we1 { O 1 bit } B_3_d1 { O 12 vector } B_3_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 881 \
    name B_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_4 \
    op interface \
    ports { B_4_address0 { O 4 vector } B_4_ce0 { O 1 bit } B_4_we0 { O 1 bit } B_4_d0 { O 12 vector } B_4_q0 { I 12 vector } B_4_address1 { O 4 vector } B_4_ce1 { O 1 bit } B_4_we1 { O 1 bit } B_4_d1 { O 12 vector } B_4_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 882 \
    name B_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_5 \
    op interface \
    ports { B_5_address0 { O 4 vector } B_5_ce0 { O 1 bit } B_5_we0 { O 1 bit } B_5_d0 { O 12 vector } B_5_q0 { I 12 vector } B_5_address1 { O 4 vector } B_5_ce1 { O 1 bit } B_5_we1 { O 1 bit } B_5_d1 { O 12 vector } B_5_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 883 \
    name B_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_6 \
    op interface \
    ports { B_6_address0 { O 4 vector } B_6_ce0 { O 1 bit } B_6_we0 { O 1 bit } B_6_d0 { O 12 vector } B_6_q0 { I 12 vector } B_6_address1 { O 4 vector } B_6_ce1 { O 1 bit } B_6_we1 { O 1 bit } B_6_d1 { O 12 vector } B_6_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 884 \
    name B_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_7 \
    op interface \
    ports { B_7_address0 { O 4 vector } B_7_ce0 { O 1 bit } B_7_we0 { O 1 bit } B_7_d0 { O 12 vector } B_7_q0 { I 12 vector } B_7_address1 { O 4 vector } B_7_ce1 { O 1 bit } B_7_we1 { O 1 bit } B_7_d1 { O 12 vector } B_7_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 885 \
    name B_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_8 \
    op interface \
    ports { B_8_address0 { O 4 vector } B_8_ce0 { O 1 bit } B_8_we0 { O 1 bit } B_8_d0 { O 12 vector } B_8_q0 { I 12 vector } B_8_address1 { O 4 vector } B_8_ce1 { O 1 bit } B_8_we1 { O 1 bit } B_8_d1 { O 12 vector } B_8_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 886 \
    name B_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_9 \
    op interface \
    ports { B_9_address0 { O 4 vector } B_9_ce0 { O 1 bit } B_9_we0 { O 1 bit } B_9_d0 { O 12 vector } B_9_q0 { I 12 vector } B_9_address1 { O 4 vector } B_9_ce1 { O 1 bit } B_9_we1 { O 1 bit } B_9_d1 { O 12 vector } B_9_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 887 \
    name B_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_10 \
    op interface \
    ports { B_10_address0 { O 4 vector } B_10_ce0 { O 1 bit } B_10_we0 { O 1 bit } B_10_d0 { O 12 vector } B_10_q0 { I 12 vector } B_10_address1 { O 4 vector } B_10_ce1 { O 1 bit } B_10_we1 { O 1 bit } B_10_d1 { O 12 vector } B_10_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 888 \
    name B_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_11 \
    op interface \
    ports { B_11_address0 { O 4 vector } B_11_ce0 { O 1 bit } B_11_we0 { O 1 bit } B_11_d0 { O 12 vector } B_11_q0 { I 12 vector } B_11_address1 { O 4 vector } B_11_ce1 { O 1 bit } B_11_we1 { O 1 bit } B_11_d1 { O 12 vector } B_11_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 889 \
    name B_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_12 \
    op interface \
    ports { B_12_address0 { O 4 vector } B_12_ce0 { O 1 bit } B_12_we0 { O 1 bit } B_12_d0 { O 12 vector } B_12_q0 { I 12 vector } B_12_address1 { O 4 vector } B_12_ce1 { O 1 bit } B_12_we1 { O 1 bit } B_12_d1 { O 12 vector } B_12_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 890 \
    name B_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_13 \
    op interface \
    ports { B_13_address0 { O 4 vector } B_13_ce0 { O 1 bit } B_13_we0 { O 1 bit } B_13_d0 { O 12 vector } B_13_q0 { I 12 vector } B_13_address1 { O 4 vector } B_13_ce1 { O 1 bit } B_13_we1 { O 1 bit } B_13_d1 { O 12 vector } B_13_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 891 \
    name B_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_14 \
    op interface \
    ports { B_14_address0 { O 4 vector } B_14_ce0 { O 1 bit } B_14_we0 { O 1 bit } B_14_d0 { O 12 vector } B_14_q0 { I 12 vector } B_14_address1 { O 4 vector } B_14_ce1 { O 1 bit } B_14_we1 { O 1 bit } B_14_d1 { O 12 vector } B_14_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 892 \
    name B_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename B_15 \
    op interface \
    ports { B_15_address0 { O 4 vector } B_15_ce0 { O 1 bit } B_15_we0 { O 1 bit } B_15_d0 { O 12 vector } B_15_q0 { I 12 vector } B_15_address1 { O 4 vector } B_15_ce1 { O 1 bit } B_15_we1 { O 1 bit } B_15_d1 { O 12 vector } B_15_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_15'"
}
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


