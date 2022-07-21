## Non project batch mode, out of context synthesis

# Assemble the design source files (cf xxx_manifest.flist )
read_verilog ./cv32e41p/rtl/include/cv32e41p_apu_core_pkg.sv
read_verilog ./cv32e41p/rtl/include/cv32e41p_fpu_pkg.sv
read_verilog ./cv32e41p/rtl/include/cv32e41p_pkg.sv
read_verilog ./cv32e41p/rtl/../bhv/include/cv32e41p_tracer_pkg.sv
read_verilog ./cv32e41p/rtl/cv32e41p_if_stage.sv
read_verilog ./cv32e41p/rtl/cv32e41p_cs_registers.sv
read_verilog ./cv32e41p/rtl/cv32e41p_register_file_ff.sv
read_verilog ./cv32e41p/rtl/cv32e41p_load_store_unit.sv
read_verilog ./cv32e41p/rtl/cv32e41p_id_stage.sv
read_verilog ./cv32e41p/rtl/cv32e41p_aligner.sv
read_verilog ./cv32e41p/rtl/cv32e41p_merged_decoder.sv
read_verilog ./cv32e41p/rtl/cv32e41p_fifo.sv
read_verilog ./cv32e41p/rtl/cv32e41p_prefetch_buffer.sv
read_verilog ./cv32e41p/rtl/cv32e41p_hwloop_regs.sv
read_verilog ./cv32e41p/rtl/cv32e41p_mult.sv
read_verilog ./cv32e41p/rtl/cv32e41p_int_controller.sv
read_verilog ./cv32e41p/rtl/cv32e41p_ex_stage.sv
read_verilog ./cv32e41p/rtl/cv32e41p_alu_div.sv
read_verilog ./cv32e41p/rtl/cv32e41p_alu.sv
read_verilog ./cv32e41p/rtl/cv32e41p_ff_one.sv
read_verilog ./cv32e41p/rtl/cv32e41p_popcnt.sv
read_verilog ./cv32e41p/rtl/cv32e41p_apu_disp.sv
read_verilog ./cv32e41p/rtl/cv32e41p_controller.sv
read_verilog ./cv32e41p/rtl/cv32e41p_obi_interface.sv
read_verilog ./cv32e41p/rtl/cv32e41p_prefetch_controller.sv
read_verilog ./cv32e41p/rtl/cv32e41p_sleep_unit.sv
read_verilog ./HPMtracer/cv32e41p_core.sv
read_verilog ./cv32e41p/rtl/../bhv/cv32e41p_sim_clock_gate.sv
read_verilog ./cv32e41p/rtl/../bhv/cv32e41p_wrapper.sv
read_verilog ./HPMtracer/HPMtracer.sv

#start_gui

# Run synthesis: Results for article
set partNum xc7a35ticsg324-1L

## Design version 3: baseline + HPM (12) + HPMtracer
set outputDir ./design_output-cv32e41p-version2
file mkdir $outputDir

synth_design -top cv32e41p_core -part $partNum -generic NUM_MHPCOUNTERS=12
write_checkpoint -force $outputDir/post_synth

report_utilization -hierarchical -file $outputDir/post_synth_utilization.rpt

