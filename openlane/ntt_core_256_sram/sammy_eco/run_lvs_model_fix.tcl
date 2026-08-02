set script_dir [file dirname [file normalize [info script]]]
set design_dir [file dirname $script_dir]
set package_dir [file join $design_dir final RUN_2026.08.02_physical_sammy_met3_min_area_eco_signoff]
set work_dir [file join $design_dir runs RUN_2026.08.02_sammy_lvs_model_fix checks]

if {[info exists ::env(PDK_ROOT)]} {
    set pdk_root [file normalize $::env(PDK_ROOT)]
} else {
    set pdk_root /home/singularity1/.ciel
}

set layout [file join $package_dir ntt_core_256_sram.spice]
set baseline [file join $design_dir final RUN_2026.07.29_physical_v2_targeted_eco3_signoff ntt_core_256_sram.pnl.v]
set reference [file join $work_dir ntt_core_256_sram.lvs.v]
set setup [file join $pdk_root sky130A libs.tech netgen sky130A_setup.tcl]
set log [file join $package_dir lvs.log]

foreach required [list $layout $baseline $setup] {
    if {![file isfile $required]} {
        error "required LVS input does not exist: $required"
    }
}

if {![file isfile $reference]} {
    file mkdir $work_dir
    exec tclsh [file join $script_dir make_lvs_reference.tcl] $baseline $reference
}

lvs [list $layout ntt_core_256_sram] \
    [list $reference ntt_core_256_sram] \
    $setup $log -json
