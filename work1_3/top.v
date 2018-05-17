module top(
	input [2:0]dp,
	output led
);



assign led = (dp[0]|dp[1])&(~dp[1]|dp[2]);

endmodule
