transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA_WORK/final_project {D:/FPGA_WORK/final_project/clk.v}
vlog -vlog01compat -work work +incdir+D:/FPGA_WORK/final_project {D:/FPGA_WORK/final_project/LED7.v}
vlog -vlog01compat -work work +incdir+D:/FPGA_WORK/final_project {D:/FPGA_WORK/final_project/LED7_5bit.v}

vlog -vlog01compat -work work +incdir+D:/FPGA_WORK/final_project {D:/FPGA_WORK/final_project/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
