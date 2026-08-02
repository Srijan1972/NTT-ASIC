if {$argc == 3} {
    lassign $argv merged_lef candidate_def output_dir
} elseif {
    [info exists ::env(SAMMY_MERGED_LEF)]
    && [info exists ::env(SAMMY_CANDIDATE_DEF)]
    && [info exists ::env(SAMMY_OUTPUT_DIR)]
} {
    set merged_lef $::env(SAMMY_MERGED_LEF)
    set candidate_def $::env(SAMMY_CANDIDATE_DEF)
    set output_dir $::env(SAMMY_OUTPUT_DIR)
} else {
    puts stderr "set SAMMY_MERGED_LEF, SAMMY_CANDIDATE_DEF, and SAMMY_OUTPUT_DIR"
    exit 2
}

set merged_lef [file normalize $merged_lef]
set candidate_def [file normalize $candidate_def]
set output_dir [file normalize $output_dir]

if {![file isfile $merged_lef]} {
    puts stderr "merged LEF does not exist: $merged_lef"
    exit 2
}
if {![file isfile $candidate_def]} {
    puts stderr "candidate DEF does not exist: $candidate_def"
    exit 2
}

file mkdir $output_dir

read_lef $merged_lef
read_def $candidate_def

set antenna_report [file join $output_dir antenna_violators.rpt]

check_antennas -report_file $antenna_report

write_db [file join $output_dir candidate.odb]
write_def [file join $output_dir candidate.openroad.def]

puts "antenna report: $antenna_report"
