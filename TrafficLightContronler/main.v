
`timescale 1ns / 1ps
module main(
	output MR,
	output MY,
	output MG,
	output SR,
	output SY,
	output SG,
	input reset,
	input C,
	input CLK

);

timerModule part1(TS, TL, ST, CLK);
fsmModule part2(MR, MY, MG, SR, SY, SG, ST, TS, TL,reset, CLK);

endmodule

