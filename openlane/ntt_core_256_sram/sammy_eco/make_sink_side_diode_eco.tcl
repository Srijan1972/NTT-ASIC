#!/usr/bin/env tclsh

if {$argc != 2} {
    puts stderr "usage: make_sink_side_diode_eco.tcl INPUT.def OUTPUT.def"
    exit 2
}

lassign $argv input_def output_def
set input_def [file normalize $input_def]
set output_def [file normalize $output_def]

if {![file isfile $input_def]} {
    puts stderr "input DEF does not exist: $input_def"
    exit 2
}
if {$input_def eq $output_def} {
    puts stderr "refusing to overwrite the input DEF"
    exit 2
}
if {[file exists $output_def]} {
    puts stderr "refusing to overwrite existing output: $output_def"
    exit 2
}

file mkdir [file dirname $output_def]

set replacements [dict create \
    {    - ANTENNA__5459__A1 sky130_fd_sc_hd__diode_2 + PLACED ( 637560 524960 ) FS ;} \
    {    - ANTENNA__5459__A1 sky130_fd_sc_hd__diode_2 + PLACED ( 638480 530400 ) FS ;} \
    {    - ECO3_FILLER_0_185_1341 sky130_fd_sc_hd__fill_1 + SOURCE DIST + PLACED ( 637100 524960 ) FS ;} \
    {    - ECO3_FILLER_0_185_1341 sky130_fd_sc_hd__fill_1 + SOURCE DIST + PLACED ( 639400 530400 ) FS ;} \
    {    - PHY_1334 sky130_fd_sc_hd__decap_3 + SOURCE DIST + FIXED ( 20240 530400 ) FS ;} \
    {    - PHY_1334 sky130_fd_sc_hd__decap_3 + SOURCE DIST + FIXED ( 637100 524960 ) FS ;} \
    {    - PHY_1335 sky130_fd_sc_hd__decap_3 + SOURCE DIST + FIXED ( 638480 530400 ) S ;} \
    {    - PHY_1335 sky130_fd_sc_hd__decap_3 + SOURCE DIST + FIXED ( 20240 530400 ) S ;}]

set replacement_counts [dict create]
foreach original [dict keys $replacements] {
    dict set replacement_counts $original 0
}
set route_insertion_count 0

set input [open $input_def r]
set output [open $output_def {WRONLY CREAT EXCL}]

try {
    while {[gets $input line] >= 0} {
        if {[dict exists $replacements $line]} {
            set original $line
            set line [dict get $replacements $original]
            dict incr replacement_counts $original
        }

        puts $output $line
        if {$line eq {      NEW met1 ( 636870 531930 ) L1M1_PR}} {
            puts $output {      NEW met1 ( 636870 531930 ) ( 638710 * ) L1M1_PR}
            incr route_insertion_count
        }
    }
} finally {
    close $input
    close $output
}

set failures 0
foreach original [dict keys $replacements] {
    set count [dict get $replacement_counts $original]
    if {$count != 1} {
        puts stderr "expected one replacement for '$original'; found $count"
        incr failures
    }
}
if {$route_insertion_count != 1} {
    puts stderr "expected exactly one route insertion point; found $route_insertion_count"
    incr failures
}
if {$failures != 0} {
    exit 1
}

puts "created $output_def with the sink-side diode relocation and met1 stub"
