module data(
	input ck,sw,db,
	output [17:0]led
);

reg data;
reg [17:0]led_;
wire [17:0]data_ = 18'b010101010101010101;

assign led = led_ & data_;

always@(posedge ck)
begin
	if(db == 1'b0)
	begin
		led_[17:1] <= led_[16:0];
		led_[0] <= ~sw;
	end
	else
	begin
		data = led_[17];
		led_[17:1] = led_[16:0];
		led_[0] = led_[17];
	end
end

endmodule
