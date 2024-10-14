
module TEST;
	reg R, S;
	wire a, o;
	initial
	begin
		R=1; S=1;
		#10 R=0;
		#10 S=0;
		#10 R=1;
	end
	AND_OR UUT(a,o,R,S);
	initial
		$monitor($time, , a, o, , R, S);
endmodule 