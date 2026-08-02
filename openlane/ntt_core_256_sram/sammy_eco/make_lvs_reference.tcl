#!/usr/bin/env tclsh

if {$argc != 2} {
    puts stderr "usage: make_lvs_reference.tcl INPUT.pnl.v OUTPUT.lvs.v"
    exit 2
}

lassign $argv input_netlist output_netlist
set input_netlist [file normalize $input_netlist]
set output_netlist [file normalize $output_netlist]

if {![file isfile $input_netlist]} {
    puts stderr "input powered netlist does not exist: $input_netlist"
    exit 2
}
if {$input_netlist eq $output_netlist} {
    puts stderr "refusing to overwrite the input powered netlist"
    exit 2
}
if {[file exists $output_netlist]} {
    puts stderr "refusing to overwrite existing output: $output_netlist"
    exit 2
}

file mkdir [file dirname $output_netlist]

set input [open $input_netlist r]
set output [open $output_netlist {WRONLY CREAT EXCL}]
set in_target_instance 0
set target_instances 0
set replacements 0

while {[gets $input line] >= 0} {
    if {[regexp {^[[:space:]]*sky130_sram_1kbyte_1rw1r_8x1024_8[[:space:]]} $line]} {
        set in_target_instance 1
        incr target_instances
    }

    if {$in_target_instance &&
            [regexp {^([[:space:]]*)\.wmask0\(\{([^{}[:space:]]+)\}\)\);$} \
                $line -> indent net]} {
        # Netgen treats a one-bit concatenation on an inferred scalar port
        # as a separate synthetic net.  Use the LEF/SPICE bit-pin name and
        # connect the net directly for the LVS-only reference view.
        set line [format {%s.\wmask0[0] (%s));} $indent $net]
        set in_target_instance 0
        incr replacements
    }

    puts $output $line
}
close $input
close $output

if {$target_instances != 1 || $replacements != 1} {
    puts stderr "expected one 8x1024 SRAM instance and one wmask0 rewrite; found $target_instances and $replacements"
    exit 1
}

puts "created $output_netlist with the SRAM LVS pin-name normalization"
