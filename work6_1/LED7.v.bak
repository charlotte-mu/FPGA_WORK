module LED7(
	input Q0,Q1,Q2,Q3,Q4,
	output reg [6:0]L0,L1
);

reg [4:0]q;

always@(Q0,Q1,Q2,Q3,Q4)
begin
	q[0] = Q0;
	q[1] = Q1;
	q[2] = Q2;
	q[3] = Q3;
	q[4] = Q4;
end

always@(q)
begin
	case(q)
		5'd0:
			begin
				L0 = ~7'b1111110;
				L1 = ~7'b1111110;
			end
		5'd1:
			begin
				L0 = ~7'b0110000;
				L1 = ~7'b1111110;
			end
		5'd2:
			begin
				L0 = ~7'b1101101;
				L1 = ~7'b1111110;
			end
		5'd3:
			begin
				L0 = ~7'b1111001;
				L1 = ~7'b1111110;
			end
		5'd4:
			begin
				L0 = ~7'b0110011;
				L1 = ~7'b1111110;
			end
		5'd5:
			begin
				L0 = ~7'b1011011;
				L1 = ~7'b1111110;
			end
		5'd6:
			begin
				L0 = ~7'b1011111;
				L1 = ~7'b1111110;
			end
		5'd7:
			begin
				L0 = ~7'b1110000;
				L1 = ~7'b1111110;
			end
		5'd8:
			begin
				L0 = ~7'b1111111;
				L1 = ~7'b1111110;
			end
		5'd9:
			begin
				L0 = ~7'b1111011;
				L1 = ~7'b1111110;
			end
		5'd10:
			begin
				L0 = ~7'b1111110;
				L1 = ~7'b0110000;
			end
		5'd11:
			begin
				L0 = ~7'b0110000;
				L1 = ~7'b0110000;
			end
		5'd12:
			begin
				L0 = ~7'b1101101;
				L1 = ~7'b0110000;
			end
		5'd13:
			begin
				L0 = ~7'b1111001;
				L1 = ~7'b0110000;
			end
		5'd14:
			begin
				L0 = ~7'b0110011;
				L1 = ~7'b0110000;
			end
		5'd15:
			begin
				L0 = ~7'b1011011;
				L1 = ~7'b0110000;
			end
		5'd16:
			begin
				L0 = ~7'b1011111;
				L1 = ~7'b0110000;
			end
		5'd17:
			begin
				L0 = ~7'b1110000;
				L1 = ~7'b0110000;
			end
		5'd18:
			begin
				L0 = ~7'b1111111;
				L1 = ~7'b0110000;
			end
		default:
			begin
				L0 = ~7'b1111111;
				L1 = ~7'b1111111;
			end
	endcase
end

endmodule
