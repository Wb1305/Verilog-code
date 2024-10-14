module mux4_1 (
input wire w0, w1, w2, w3, s0, s1,
output wire y
);
wire e1, e2;

mux2_1 out1 (w0, w1, s0, y1);
mux2_1 out2 (w2, w3, s0, y2);
mux2_1 out3 (y1, y2, s1, y);

endmodule
