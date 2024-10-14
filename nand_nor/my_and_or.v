module AND_OR (andOut, orOut, A, B);
	output andOut, orOut;
	input A, B;
	and AndGate(andOut, A, B);
	or OrGate(orOut, A, B);
endmodule
