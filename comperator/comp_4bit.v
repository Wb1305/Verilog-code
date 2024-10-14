module eq4(
	input wire[3:0] a, b,
	output wire y
);

wire e0,e1, e2, e3;

eq1 eq_bit0 (.i0(a[0]), .i1(b[0]), .eq(e0));
eq1 eq_bit1 (.i0(a[1]), .i1(b[1]), .eq(e1));
eq1 eq_bit2 (.i0(a[2]), .i1(b[2]), .eq(e2));
eq1 eq_bit3 (.i0(a[3]), .i1(b[3]), .eq(e3));

assign y = e0 & e1 & e2 & e3;

endmodule
