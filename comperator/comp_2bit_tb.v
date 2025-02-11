module eq2_testbench;

	reg [1:0] inp1, inp2;
	wire out;
	eq2 uut (.a(inp1), .b(inp2), .aeqb(out));
	initial
	begin
		inp1 = 2'b00;
		inp2 = 2'b00;
		# 200; 
		inp1 = 2'b01;
		inp2 = 2'b00; 
		# 200;
		inp1 = 2'b01;
		inp2 = 2'b11;
		# 200;
		inp1 = 2'b10;
		inp2 = 2'b10;
		# 200;
		inp1 = 2'b10;
		inp2 = 2'b00;
		# 200;
		inp1 = 2'b11;
		inp2 = 2'b11;
		# 200;
		inp1 = 2'b11;
		inp2 = 2'b01;
		# 200;
		$stop;
	end     
endmodule
