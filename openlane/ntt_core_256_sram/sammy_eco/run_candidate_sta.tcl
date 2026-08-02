foreach variable {
    SAMMY_STD_LIB
    SAMMY_SRAM_LIBS
    SAMMY_NETLIST
    SAMMY_SDC
    SAMMY_SPEF
} {
    if {![info exists ::env($variable)]} {
        puts stderr "missing required environment variable: $variable"
        exit 2
    }
}

read_liberty $::env(SAMMY_STD_LIB)
foreach library $::env(SAMMY_SRAM_LIBS) {
    read_liberty $library
}
read_verilog $::env(SAMMY_NETLIST)
link_design ntt_core_256_sram
read_sdc $::env(SAMMY_SDC)
read_spef $::env(SAMMY_SPEF)

puts "==========================================================================="
puts "report_tns"
puts "==========================================================================="
report_tns

puts "==========================================================================="
puts "report_wns"
puts "==========================================================================="
report_wns

puts "==========================================================================="
puts "report_worst_slack -max (Setup)"
puts "==========================================================================="
report_worst_slack -max

puts "==========================================================================="
puts "report_worst_slack -min (Hold)"
puts "==========================================================================="
report_worst_slack -min
