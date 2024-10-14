module decoder3to8(
	input wire[2:0] w,
	input wire en,
	output wire[7:0] y
);

	wire en0, en1;
	assign en0 = en & ~w[2];
	assign en1 = en & w[2];

	decoder2to4 dec1(.w(w[1:0]), .en(en0), .y(y[7:4]));
	decoder2to4 dec2(.w(w[1:0]), .en(en1), .y(y[3:0]));

endmodule
