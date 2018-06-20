module LED7_5bit(
	input Q0,Q1,Q2,Q3,Q4,ctrl,
	output reg [0:6]L0,L1
);

reg [4:0]q;
reg [3:0]data0,data1;

always@(Q0,Q1,Q2,Q3,Q4)
begin
	q[0] = Q0;
	q[1] = Q1;
	q[2] = Q2;
	q[3] = Q3;
	q[4] = Q4;
end

always@(q,ctrl)
begin
	if(ctrl)
	begin
		case(q)
			5'd0:
				begin
					data0 = 4'd0;
					data1 = 4'd0;
				end
			5'd1:
				begin
					data0 = 4'd1;
					data1 = 4'd0;
				end
			5'd2:
				begin
					data0 = 4'd2;
					data1 = 4'd0;
				end
			5'd3:
				begin
					data0 = 4'd3;
					data1 = 4'd0;
				end
			5'd4:
				begin
					data0 = 4'd4;
					data1 = 4'd0;
				end
			5'd5:
				begin
					data0 = 4'd5;
					data1 = 4'd0;
				end
			5'd6:
				begin
					data0 = 4'd6;
					data1 = 4'd0;
				end
			5'd7:
				begin
					data0 = 4'd7;
					data1 = 4'd0;
				end
			5'd8:
				begin
					data0 = 4'd8;
					data1 = 4'd0;
				end
			5'd9:
				begin
					data0 = 4'd9;
					data1 = 4'd0;
				end
			5'd10:
				begin
					data0 = 4'd0;
					data1 = 4'd1;
				end
			5'd11:
				begin
					data0 = 4'd1;
					data1 = 4'd1;
				end
			5'd12:
				begin
					data0 = 4'd2;
					data1 = 4'd1;
				end
			5'd13:
				begin
					data0 = 4'd3;
					data1 = 4'd1;
				end
			5'd14:
				begin
					data0 = 4'd4;
					data1 = 4'd1;
				end
			5'd15:
				begin
					data0 = 4'd5;
					data1 = 4'd1;
				end
			5'd16:
				begin
					data0 = 4'd6;
					data1 = 4'd1;
				end
			5'd17:
				begin
					data0 = 4'd7;
					data1 = 4'd1;
				end
			5'd18:
				begin
					data0 = 4'd8;
					data1 = 4'd1;
				end
			5'd19:
				begin
					data0 = 4'd9;
					data1 = 4'd1;
				end
			5'd20:
				begin
					data0 = 4'd0;
					data1 = 4'd2;
				end
			5'd21:
				begin
					data0 = 4'd1;
					data1 = 4'd2;
				end
			5'd22:
				begin
					data0 = 4'd2;
					data1 = 4'd2;
				end
			5'd23:
				begin
					data0 = 4'd3;
					data1 = 4'd2;
				end
			5'd24:
				begin
					data0 = 4'd4;
					data1 = 4'd2;
				end
			5'd25:
				begin
					data0 = 4'd5;
					data1 = 4'd2;
				end
			5'd26:
				begin
					data0 = 4'd6;
					data1 = 4'd2;
				end
			5'd27:
				begin
					data0 = 4'd7;
					data1 = 4'd2;
				end
			5'd28:
				begin
					data0 = 4'd8;
					data1 = 4'd2;
				end
			5'd29:
				begin
					data0 = 4'd9;
					data1 = 4'd2;
				end
			5'd30:
				begin
					data0 = 4'd0;
					data1 = 4'd3;
				end
			5'd31:
				begin
					data0 = 4'd1;
					data1 = 4'd3;
				end
			default:
				begin
					data0 = 4'd10;
					data1 = 4'd10;
				end
		endcase
	end
	else
	begin
		data0 = 4'd10;
		data1 = 4'd10;
	end
end

always@(data0)
begin
	case(data0)
		4'd0:
			begin
				L0 = ~7'b0111111;
			end
		4'd1:
			begin
				L0 = ~7'b0000110;
			end
		4'd2:
			begin
				L0 = ~7'b1011011;
			end
		4'd3:
			begin
				L0 = ~7'b1001111;
			end
		4'd4:
			begin
				L0 = ~7'b1100110;
			end
		4'd5:
			begin
				L0 = ~7'b1101101;
			end
		4'd6:
			begin
				L0 = ~7'b1111101;
			end
		4'd7:
			begin
				L0 = ~7'b0000111;
			end
		4'd8:
			begin
				L0 = ~7'b1111111;
			end
		4'd9:
			begin
				L0 = ~7'b1101111;
			end
		4'd10:
			begin
				L0 = ~7'b1110111;
			end
		default:
			begin
				L0 = ~7'b1110111;
			end
	endcase
end

always@(data1)
begin
	case(data1)
		4'd0:
			begin
				L1 = ~7'b0111111;
			end
		4'd1:
			begin
				L1 = ~7'b0000110;
			end
		4'd2:
			begin
				L1 = ~7'b1011011;
			end
		4'd3:
			begin
				L1 = ~7'b1001111;
			end
		4'd4:
			begin
				L1 = ~7'b1100110;
			end
		4'd5:
			begin
				L1 = ~7'b1101101;
			end
		4'd6:
			begin
				L1 = ~7'b1111101;
			end
		4'd7:
			begin
				L1 = ~7'b0000111;
			end
		4'd8:
			begin
				L1 = ~7'b1111111;
			end
		4'd9:
			begin
				L1 = ~7'b1101111;
			end
		4'd10:
			begin
				L1 = ~7'b1110111;
			end
		default:
			begin
				L1 = ~7'b1110111;
			end
	endcase
end

endmodule
