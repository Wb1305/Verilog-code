module eq1(input i0, i1, output eq);
assign p0 = ~i0 & ~i1;
assign p1 = i0 & i1;
assign eq = p0 | p1;
endmodule
