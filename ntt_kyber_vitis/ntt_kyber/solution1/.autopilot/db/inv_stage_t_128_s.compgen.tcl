# This script segment is generated automatically by AutoPilot

set id 1543
set name kyber_mult_mac_mul_sub_14s_11ns_32s_32_3_1
set corename simcore_mac
set op mac
set stage_num 3
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 14
set in0_signed 1
set in1_width 11
set in1_signed 0
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {14 1 +} i1 {11 0 +} m {25 1 +} i2 {32 1 -} p {32 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 2 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
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
    id 1552 \
    name src_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_0 \
    op interface \
    ports { src_0_address0 { O 4 vector } src_0_ce0 { O 1 bit } src_0_q0 { I 12 vector } src_0_address1 { O 4 vector } src_0_ce1 { O 1 bit } src_0_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1553 \
    name src_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_1 \
    op interface \
    ports { src_1_address0 { O 4 vector } src_1_ce0 { O 1 bit } src_1_q0 { I 12 vector } src_1_address1 { O 4 vector } src_1_ce1 { O 1 bit } src_1_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1554 \
    name src_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_2 \
    op interface \
    ports { src_2_address0 { O 4 vector } src_2_ce0 { O 1 bit } src_2_q0 { I 12 vector } src_2_address1 { O 4 vector } src_2_ce1 { O 1 bit } src_2_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1555 \
    name src_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_3 \
    op interface \
    ports { src_3_address0 { O 4 vector } src_3_ce0 { O 1 bit } src_3_q0 { I 12 vector } src_3_address1 { O 4 vector } src_3_ce1 { O 1 bit } src_3_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1556 \
    name src_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_4 \
    op interface \
    ports { src_4_address0 { O 4 vector } src_4_ce0 { O 1 bit } src_4_q0 { I 12 vector } src_4_address1 { O 4 vector } src_4_ce1 { O 1 bit } src_4_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1557 \
    name src_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_5 \
    op interface \
    ports { src_5_address0 { O 4 vector } src_5_ce0 { O 1 bit } src_5_q0 { I 12 vector } src_5_address1 { O 4 vector } src_5_ce1 { O 1 bit } src_5_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1558 \
    name src_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_6 \
    op interface \
    ports { src_6_address0 { O 4 vector } src_6_ce0 { O 1 bit } src_6_q0 { I 12 vector } src_6_address1 { O 4 vector } src_6_ce1 { O 1 bit } src_6_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1559 \
    name src_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_7 \
    op interface \
    ports { src_7_address0 { O 4 vector } src_7_ce0 { O 1 bit } src_7_q0 { I 12 vector } src_7_address1 { O 4 vector } src_7_ce1 { O 1 bit } src_7_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1560 \
    name src_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_8 \
    op interface \
    ports { src_8_address0 { O 4 vector } src_8_ce0 { O 1 bit } src_8_q0 { I 12 vector } src_8_address1 { O 4 vector } src_8_ce1 { O 1 bit } src_8_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1561 \
    name src_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_9 \
    op interface \
    ports { src_9_address0 { O 4 vector } src_9_ce0 { O 1 bit } src_9_q0 { I 12 vector } src_9_address1 { O 4 vector } src_9_ce1 { O 1 bit } src_9_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1562 \
    name src_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_10 \
    op interface \
    ports { src_10_address0 { O 4 vector } src_10_ce0 { O 1 bit } src_10_q0 { I 12 vector } src_10_address1 { O 4 vector } src_10_ce1 { O 1 bit } src_10_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1563 \
    name src_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_11 \
    op interface \
    ports { src_11_address0 { O 4 vector } src_11_ce0 { O 1 bit } src_11_q0 { I 12 vector } src_11_address1 { O 4 vector } src_11_ce1 { O 1 bit } src_11_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1564 \
    name src_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_12 \
    op interface \
    ports { src_12_address0 { O 4 vector } src_12_ce0 { O 1 bit } src_12_q0 { I 12 vector } src_12_address1 { O 4 vector } src_12_ce1 { O 1 bit } src_12_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1565 \
    name src_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_13 \
    op interface \
    ports { src_13_address0 { O 4 vector } src_13_ce0 { O 1 bit } src_13_q0 { I 12 vector } src_13_address1 { O 4 vector } src_13_ce1 { O 1 bit } src_13_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1566 \
    name src_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_14 \
    op interface \
    ports { src_14_address0 { O 4 vector } src_14_ce0 { O 1 bit } src_14_q0 { I 12 vector } src_14_address1 { O 4 vector } src_14_ce1 { O 1 bit } src_14_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1567 \
    name src_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src_15 \
    op interface \
    ports { src_15_address0 { O 4 vector } src_15_ce0 { O 1 bit } src_15_q0 { I 12 vector } src_15_address1 { O 4 vector } src_15_ce1 { O 1 bit } src_15_q1 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1568 \
    name dst_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_0 \
    op interface \
    ports { dst_0_address0 { O 4 vector } dst_0_ce0 { O 1 bit } dst_0_we0 { O 1 bit } dst_0_d0 { O 12 vector } dst_0_address1 { O 4 vector } dst_0_ce1 { O 1 bit } dst_0_we1 { O 1 bit } dst_0_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1569 \
    name dst_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_1 \
    op interface \
    ports { dst_1_address0 { O 4 vector } dst_1_ce0 { O 1 bit } dst_1_we0 { O 1 bit } dst_1_d0 { O 12 vector } dst_1_address1 { O 4 vector } dst_1_ce1 { O 1 bit } dst_1_we1 { O 1 bit } dst_1_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1570 \
    name dst_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_2 \
    op interface \
    ports { dst_2_address0 { O 4 vector } dst_2_ce0 { O 1 bit } dst_2_we0 { O 1 bit } dst_2_d0 { O 12 vector } dst_2_address1 { O 4 vector } dst_2_ce1 { O 1 bit } dst_2_we1 { O 1 bit } dst_2_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1571 \
    name dst_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_3 \
    op interface \
    ports { dst_3_address0 { O 4 vector } dst_3_ce0 { O 1 bit } dst_3_we0 { O 1 bit } dst_3_d0 { O 12 vector } dst_3_address1 { O 4 vector } dst_3_ce1 { O 1 bit } dst_3_we1 { O 1 bit } dst_3_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1572 \
    name dst_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_4 \
    op interface \
    ports { dst_4_address0 { O 4 vector } dst_4_ce0 { O 1 bit } dst_4_we0 { O 1 bit } dst_4_d0 { O 12 vector } dst_4_address1 { O 4 vector } dst_4_ce1 { O 1 bit } dst_4_we1 { O 1 bit } dst_4_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1573 \
    name dst_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_5 \
    op interface \
    ports { dst_5_address0 { O 4 vector } dst_5_ce0 { O 1 bit } dst_5_we0 { O 1 bit } dst_5_d0 { O 12 vector } dst_5_address1 { O 4 vector } dst_5_ce1 { O 1 bit } dst_5_we1 { O 1 bit } dst_5_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1574 \
    name dst_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_6 \
    op interface \
    ports { dst_6_address0 { O 4 vector } dst_6_ce0 { O 1 bit } dst_6_we0 { O 1 bit } dst_6_d0 { O 12 vector } dst_6_address1 { O 4 vector } dst_6_ce1 { O 1 bit } dst_6_we1 { O 1 bit } dst_6_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1575 \
    name dst_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_7 \
    op interface \
    ports { dst_7_address0 { O 4 vector } dst_7_ce0 { O 1 bit } dst_7_we0 { O 1 bit } dst_7_d0 { O 12 vector } dst_7_address1 { O 4 vector } dst_7_ce1 { O 1 bit } dst_7_we1 { O 1 bit } dst_7_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1576 \
    name dst_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_8 \
    op interface \
    ports { dst_8_address0 { O 4 vector } dst_8_ce0 { O 1 bit } dst_8_we0 { O 1 bit } dst_8_d0 { O 12 vector } dst_8_address1 { O 4 vector } dst_8_ce1 { O 1 bit } dst_8_we1 { O 1 bit } dst_8_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1577 \
    name dst_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_9 \
    op interface \
    ports { dst_9_address0 { O 4 vector } dst_9_ce0 { O 1 bit } dst_9_we0 { O 1 bit } dst_9_d0 { O 12 vector } dst_9_address1 { O 4 vector } dst_9_ce1 { O 1 bit } dst_9_we1 { O 1 bit } dst_9_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1578 \
    name dst_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_10 \
    op interface \
    ports { dst_10_address0 { O 4 vector } dst_10_ce0 { O 1 bit } dst_10_we0 { O 1 bit } dst_10_d0 { O 12 vector } dst_10_address1 { O 4 vector } dst_10_ce1 { O 1 bit } dst_10_we1 { O 1 bit } dst_10_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1579 \
    name dst_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_11 \
    op interface \
    ports { dst_11_address0 { O 4 vector } dst_11_ce0 { O 1 bit } dst_11_we0 { O 1 bit } dst_11_d0 { O 12 vector } dst_11_address1 { O 4 vector } dst_11_ce1 { O 1 bit } dst_11_we1 { O 1 bit } dst_11_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1580 \
    name dst_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_12 \
    op interface \
    ports { dst_12_address0 { O 4 vector } dst_12_ce0 { O 1 bit } dst_12_we0 { O 1 bit } dst_12_d0 { O 12 vector } dst_12_address1 { O 4 vector } dst_12_ce1 { O 1 bit } dst_12_we1 { O 1 bit } dst_12_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1581 \
    name dst_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_13 \
    op interface \
    ports { dst_13_address0 { O 4 vector } dst_13_ce0 { O 1 bit } dst_13_we0 { O 1 bit } dst_13_d0 { O 12 vector } dst_13_address1 { O 4 vector } dst_13_ce1 { O 1 bit } dst_13_we1 { O 1 bit } dst_13_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1582 \
    name dst_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_14 \
    op interface \
    ports { dst_14_address0 { O 4 vector } dst_14_ce0 { O 1 bit } dst_14_we0 { O 1 bit } dst_14_d0 { O 12 vector } dst_14_address1 { O 4 vector } dst_14_ce1 { O 1 bit } dst_14_we1 { O 1 bit } dst_14_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1583 \
    name dst_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst_15 \
    op interface \
    ports { dst_15_address0 { O 4 vector } dst_15_ce0 { O 1 bit } dst_15_we0 { O 1 bit } dst_15_d0 { O 12 vector } dst_15_address1 { O 4 vector } dst_15_ce1 { O 1 bit } dst_15_we1 { O 1 bit } dst_15_d1 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst_15'"
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


# flow_control definition:
set InstName kyber_mult_flow_control_loop_pipe_sequential_init_U
set CompName kyber_mult_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix kyber_mult_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


