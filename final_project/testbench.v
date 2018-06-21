`timescale 1ns/10ps

module testbench;
reg ck_w,clr_w,stop_w,ctrl_w;
reg SW2_w,SW3_w,SW4_w,SW5_w,SW6_w,SW7_w,SW8_w,SW9_w;
reg KEY1_w,KEY2_w;

//wire LEDR0_w,LEDR1_w,LEDR2_w,LEDR3_w,LEDR4_w;
wire [4:0]LEDR;
//wire LEDG0_w,LEDG1_w,LEDG2_w;
wire [2:0]LEDG;
//wire [6:0]L5bit_L0_w,L5bit_L1_w;
//wire [6:0]L4bit_L0_w,L4bit_L1_w;
//wire [6:0]L3bit_L0_w;


finalproject top(
	.ck(ck_w),
	.clr(clr_w),
	.stop(stop_w),
	.ctrl(ctrl_w),
	.SW2(SW2_w),
	.SW3(SW3_w),
	.SW4(SW4_w),
	.SW5(SW5_w),
	.SW6(SW6_w),
	.SW7(SW7_w),
	.SW8(SW8_w),
	.SW9(SW9_w),
	.KEY1(KEY1_w),
	.KEY2(KEY2_w),
	.LEDR0(LEDR[0]),
	.LEDR1(LEDR[1]),
	.LEDR2(LEDR[2]),
	.LEDR3(LEDR[3]),
	.LEDR4(LEDR[4]),
	.LEDG0(LEDG[0]),
	.LEDG1(LEDG[1]),
	.LEDG2(LEDG[2])
	//.L5bit_L0(L5bit_L0_w),
	//.L5bit_L1(L5bit_L0_w),
	//.L4bit_L0(L5bit_L0_w),
	//.L4bit_L1(L5bit_L0_w),
	//.L3bit_L0(L5bit_L0_w)
);


always 
	#10 ck_w = ~ck_w;

initial 
begin
				ck_w = 1'b0;
				clr_w = 1'b1;
				stop_w = 1'b1;
				ctrl_w = 1'b0;
				SW2_w = 1'b0;
				SW3_w = 1'b0;
				SW4_w = 1'b0;
				SW5_w = 1'b0;
				SW6_w = 1'b0;
				SW7_w = 1'b0;
				SW8_w = 1'b0;
				SW9_w = 1'b0;
				KEY1_w = 1'b1;
				KEY2_w = 1'b1;
	#200		
				clr_w = 1'b1;
				stop_w = 1'b1;
				ctrl_w = 1'b1;
				SW2_w = 1'b0;
				SW3_w = 1'b0;
				SW4_w = 1'b0;
				SW5_w = 1'b0;
				SW6_w = 1'b0;
				SW7_w = 1'b0;
				SW8_w = 1'b0;
				SW9_w = 1'b0;
				KEY1_w = 1'b1;
				KEY2_w = 1'b1;
	#200		
				clr_w = 1'b1;
				stop_w = 1'b1;
				ctrl_w = 1'b0;
				SW2_w = 1'b0;
				SW3_w = 1'b0;
				SW4_w = 1'b0;
				SW5_w = 1'b0;
				SW6_w = 1'b0;
				SW7_w = 1'b0;
				SW8_w = 1'b0;
				SW9_w = 1'b0;
				KEY1_w = 1'b1;
				KEY2_w = 1'b1;
	#300 	$finish;
end

endmodule
