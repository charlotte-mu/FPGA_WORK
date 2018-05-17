module top(
	input [3:0]dp,
	input [1:0]sw,
	output reg led
);



always@(dp,sw)
begin
	case(sw)
		2'b00:
		begin
			led <= ~dp[0];
		end
		2'b01:
		begin
			led <= ~dp[1];
		end
		2'b10:
		begin
			led <= ~dp[2];
		end
		2'b11:
		begin
			led <= ~dp[3];
		end
	endcase
end

endmodule
