#!/usr/bin/env tclsh

if {$argc != 2} {
    puts stderr "usage: make_met3_min_area_eco.tcl INPUT.def OUTPUT.def"
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

# Both violations are undersized met3 islands between adjacent M2M3_PR and
# M3M4_PR vias at the bottom pins of the input SRAM.  Add a 0.460 um horizontal
# met3 stub from each existing M3M4_PR via toward its met4 SRAM-pin connection.
# This adds area without moving a via or changing either endpoint or net.
set replacements [dict create \
    {      NEW met2 ( 351210 79730 ) ( * 79900 ) M2M3_PR ( 350980 * ) M3M4_PR ( 350150 * ) ( * 80530 0 ) ;} \
    {      NEW met2 ( 351210 79730 ) ( * 79900 ) M2M3_PR ( 350980 * ) M3M4_PR ( 350150 * ) ( * 80530 0 )
      NEW met3 ( 350980 79900 ) ( 350520 * ) ;} \
    {      NEW met2 ( 206770 79900 ) M2M3_PR ( 206540 * ) M3M4_PR ( 205310 * ) ( * 80530 0 ) ;} \
    {      NEW met2 ( 206770 79900 ) M2M3_PR ( 206540 * ) M3M4_PR ( 205310 * ) ( * 80530 0 )
      NEW met3 ( 206540 79900 ) ( 206080 * ) ;}]

set replacement_counts [dict create]
foreach original [dict keys $replacements] {
    dict set replacement_counts $original 0
}

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
if {$failures != 0} {
    exit 1
}

puts "created $output_def with two met3 minimum-area repairs"
