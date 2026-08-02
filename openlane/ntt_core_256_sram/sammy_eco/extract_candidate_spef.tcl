foreach variable {SAMMY_MERGED_LEF SAMMY_CANDIDATE_DEF SAMMY_RCX_RULESET SAMMY_OUTPUT_SPEF} {
    if {![info exists ::env($variable)]} {
        puts stderr "missing required environment variable: $variable"
        exit 2
    }
}

set merged_lef [file normalize $::env(SAMMY_MERGED_LEF)]
set candidate_def [file normalize $::env(SAMMY_CANDIDATE_DEF)]
set rcx_ruleset [file normalize $::env(SAMMY_RCX_RULESET)]
set output_spef [file normalize $::env(SAMMY_OUTPUT_SPEF)]

foreach input [list $merged_lef $candidate_def $rcx_ruleset] {
    if {![file isfile $input]} {
        puts stderr "required input does not exist: $input"
        exit 2
    }
}

file mkdir [file dirname $output_spef]

read_lef $merged_lef
read_def $candidate_def

define_process_corner -ext_model_index 0 X
extract_parasitics -ext_model_file $rcx_ruleset -lef_res
write_spef $output_spef

puts "candidate SPEF: $output_spef"
