module work2_2(
	input [2:0]s,
	input [7:0]sw,
	output led
);

assign led = (s[2])? (s[1])?(s[0])? sw[0]:sw[1]:(s[0])?sw[2]:sw[3]:(s[1])?(s[0])? sw[4]:sw[5]:(s[0])?sw[6]:sw[7];

/*always@(*)
begin
	if(s[2]==1'b0)
	begin
		if(s[1]==1'b0)
		begin
			if(s[0]==1'b0)
			begin
				led = sw[0];
			end
			else
			begin
				led = sw[1];
			end
		end
		else
		begin
			if(s[0]==1'b0)
			begin
				led = sw[2];
			end
			else
			begin
				led = sw[3];
			end
		end
	end
	else
	begin
		if(s[1]==1'b0)
		begin
			if(s[0]==1'b0)
			begin
				led = sw[4];
			end
			else
			begin
				led = sw[5];
			end
		end
		else
		begin
			if(s[0]==1'b0)
			begin
				led = sw[6];
			end
			else
			begin
				led = sw[7];
			end
		end
	end
end
*/
/*always@(*)
begin
	case(s[2])
		1'b0:
			led = sw[0];
		1'b1:
			led = sw[1];
	endcase
end*/
/*always@(*)
begin
	case(s[2])
		1'b0:
			case(s[1])
				1'b0:
					case(s[0])
						1'b0:
							led = sw[0];
						1'b1:
							led = sw[1];
					endcase
				1'b1:
					case(s[0])
						1'b0:
							led = sw[2];
						1'b1:
							led = sw[3];
					endcase
			endcase
		1'b1:
			case(s[1])
				1'b0:
					case(s[0])
						1'b0:
							led = sw[4];
						1'b1:
							led = sw[5];
					endcase
				1'b1:
					case(s[0])
						1'b0:
							led = sw[6];
						1'b1:
							led = sw[7];
					endcase
	endcase
end*/

endmodule
