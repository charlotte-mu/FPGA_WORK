module conter(
	input ck,
	output reg clk = 1'b0
);

reg [24:0]data = 25'd0;

always@(posedge ck)
begin
	if(data == 25'd25000000)
	begin
		clk <= ~clk;
		data <= 25'd0;
	end
	else
	begin
		data <= data + 25'd1;
	end
end

endmodule
