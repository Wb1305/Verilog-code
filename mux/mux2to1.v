module mux2_1(
input wire w0, w1, s,
output wire out
);

assign out = s ? w1:w0;

endmodule
