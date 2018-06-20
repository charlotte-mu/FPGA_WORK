module LED7(
	input Q0,Q1,Q2,
	output reg [0:6]L0
);

reg [2:0]q;

always@(Q0,Q1,Q2)
begin
	q[0] = Q0;
	q[1] = Q1;
	q[2] = Q2;
end

always@(q)
begin
	case(q)
		3'd0:
			begin
				L0 = ~7'b0111111;
			end
		3'd1:
			begin
				L0 = ~7'b0000110;
			end
		3'd2:
			begin
				L0 = ~7'b1011011;
			end
		3'd3:
			begin
				L0 = ~7'b1001111;
			end
		3'd4:
			begin
				L0 = ~7'b1100110;
			end
		3'd5:
			begin
				L0 = ~7'b1101101;
			end
		3'd6:
			begin
				L0 = ~7'b1111101;
			end
		3'd7:
			begin
				L0 = ~7'b0000111;
			end
		default:
			begin
				L0 = ~7'b1111111;
			end
	endcase
end

endmodule
