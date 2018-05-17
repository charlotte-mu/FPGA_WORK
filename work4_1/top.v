module top(
	input ck,sw,db,
	output [17:0]led
);

wire clk;
//wire [17:0]led_;
//wire [17:0]data = 18'b010101010101010101;

//assign led = led_ & data;

/*always@(led_,data)
begin
	led = led_ & data;
end*/

conter add1(.ck(ck),.clk(clk));
data add2(.ck(clk),.sw(sw),.led(led),.db(db));

endmodule
