transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {final_project.vo}

vlog -vlog01compat -work work +incdir+D:/FPGA_WORK/final_project {D:/FPGA_WORK/final_project/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
