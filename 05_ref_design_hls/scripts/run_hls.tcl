# --------------------------------------------------------------------------------
# -- CustomLogic - Run Vitis HLS Project
# --------------------------------------------------------------------------------
# --  Procedures: NONE
# --        File: run_hls.tcl
# --      Author: XC
# --------------------------------------------------------------------------------
# -- 0.1, 2019-03-06, XC, Initial release
# -- 0.2, 2019-04-02, PP, Integrated into CustomLogic release package
# -- 0.3, 2023-02-20, PP, Updated to Vitis HLS 2022.2
# --------------------------------------------------------------------------------

# Get Paths
set initialPath [pwd]
puts "EURESYS_INFO: \[Initial path\] $initialPath"

set scriptPath [file dirname [file normalize [info script]]]
puts "EURESYS_INFO: \[Script path\] $scriptPath"

set sourcePath [file normalize "$scriptPath/../srcs"]
puts "EURESYS_INFO: \[Source path\] $sourcePath"

set hlsProjectPath [file normalize "$scriptPath/.."]
puts "EURESYS_INFO: \[HLS project path\] $hlsProjectPath"

cd $hlsProjectPath

puts "EURESYS_INFO: Generating \"pix_threshold\" IP..."

open_project pix_threshold
set_top pix_threshold
add_files $sourcePath/pix_threshold.cpp
add_files -tb $sourcePath/pix_threshold_test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "KCU035" -flow_target vivado
set_part {xcku035-fbva676-2-e}
create_clock -period 4 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -description HLS_pix_threshold -display_name pix_threshold -format ip_catalog -library KCU035 -rtl verilog -vendor EURESYS -version 0.1 -vivado_phys_opt place -vivado_report_level 0
config_schedule -effort medium -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose
csim_design -clean
csynth_design
cosim_design -trace_level all -argv {-Wno-}
#export_design -rtl verilog -format ip_catalog -description "HLS_pix_threshold" -vendor "EURESYS" -library "KCU035" -version "0.1" -display_name "pix_threshold"

set filesList [glob -nocomplain $hlsProjectPath/pix_threshold/KCU035/impl/vhdl/*.*]
foreach fileName $filesList {
    file copy -force $fileName "$hlsProjectPath/../04_ref_design"
    puts "EURESYS_INFO: '$fileName' copied to [file normalize $hlsProjectPath/../04_ref_design]."
}
puts "EURESYS_INFO: Generation of the \"pix_threshold\" IP done."

cd $initialPath
exit
