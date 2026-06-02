############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project hls-design
set_top ntt_kernel
add_files hls-design/ntt-kernel.cpp
add_files hls-design/ntt-kernel.h
add_files -tb hls-design/ntt-test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "ntt-asic" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_cosim -tool xsim
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 10
source "./hls-design/ntt-asic/directives.tcl"
csim_design -clean -O
csynth_design
cosim_design -tool xsim
export_design -flow impl -rtl verilog -format ip_catalog
