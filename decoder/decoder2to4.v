
module decoder2to4 (
	input wire[1:0] w,
	input wire en,
	output reg [3:0] y
);

	always @*
		casez ({en, w})
			3'b0?? : y = 4'b0000;
			3'b100 : y = 4'b0001;
			3'b101 : y = 4'b0010;
			3'b110 : y = 4'b0100;
			3'b111 : y = 4'b1000;
		endcase

endmodule
