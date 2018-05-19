module clk(
	input ck,
	output reg ck1
);

reg [31:0]data;

always@(posedge ck)
begin
	if(data == 32'd12500000)
	begin
		data <= 32'd0;
		ck1 <= ~ck1;
	end
	else
	begin
		data <= data + 32'd1;
	end
end

endmodule
