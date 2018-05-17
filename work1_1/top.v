module top(
	input [1:0]dp,
	output led
);



assign led = dp[0] & dp[1];

endmodule
