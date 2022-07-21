## Non project batch mode, out of context synthesis

# Assemble the design source files
read_verilog ./cv32e41p/rtl/include/cv32e41p_pkg.sv
read_verilog ./cv32e41p/rtl/include/cv32e41p_apu_core_pkg.sv
read_verilog ./cv32e41p/rtl/include/cv32e41p_fpu_pkg.sv
read_verilog [glob  ./cv32e41p/rtl/*.sv]
read_verilog ./cv32e41p/bhv/cv32e41p_sim_clock_gate.sv

#start_gui

# Run synthesis: Results for article
set partNum xc7a35ticsg324-1L

## Design version 1: baseline
set outputDir ./design_output-cv32e41p-version1
file mkdir $outputDir

synth_design -top cv32e41p_core -part $partNum -generic NUM_MHPCOUNTERS=1
write_checkpoint -force $outputDir/post_synth

report_utilization -hierarchical -file $outputDir/post_synth_utilization.rpt


