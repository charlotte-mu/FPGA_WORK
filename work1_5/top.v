module top(
	input [4:0]dp,
	output led
);



assign led =~(~(dp[0]&~(dp[1]&dp[2]))&~(dp[4]&~(dp[3]&~(dp[1]&dp[2]))));

endmodule
