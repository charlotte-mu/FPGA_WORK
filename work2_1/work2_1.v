module work2_1(
	input [2:0]s,
	input [3:0]sw,dp,
	output reg led
);



always@(*)
begin
	case(s)
		3'b000:
		begin
			led = dp[0];
		end
		3'b001:
		begin
			led = sw[0]&sw[1]&sw[2]&sw[3];
		end
		3'b010:
		begin
			led = sw[0]|sw[1]|sw[2]|sw[3];
		end
		3'b011:
		begin
			led = sw[0]&sw[1];
		end
		3'b100:
		begin
			led = dp[1];
		end
		3'b101:
		begin
			led = dp[2];
		end
		3'b110:
		begin
			led = dp[3];
		end
		3'b111:
		begin
			led = (sw[0]&sw[2])|(sw[1]&~sw[2])|(~sw[0]&sw[1]&sw[2]);
		end
	endcase
end

endmodule
