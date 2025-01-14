
module eq4_testbench;

	reg [3:0] w0, w1;
	wire out;

	eq4 uut (.a(w0), .b(w1), .y(out));

	initial
	begin
		w0 = 4'b0001; w1 = 4'b0001;
        	#20
        	w0 = 4'b0011; w1 = 4'b0001;
        	#20
        	w0 = 4'b0101; w1 = 4'b0101;
        	#20
        	w0 = 4'b1000; w1 = 4'b1000;
        	#20
        	w0 = 4'b0110; w1 = 4'b1011;
        	#20
        	w0 = 4'b1010; w1 = 4'b1010;
        	#20
		$stop;
	end

endmodule
