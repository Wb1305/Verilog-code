
module tb_encoder8to3;

	reg [8:1] w;
	wire[3:0] y;

	encoder8to3 uut (
		.w(w), 
		.y(y)
	);
	
	initial begin
		w = 8'b00111111; //y = 4'b1111;
		#10;
		w = 8'b11111110;//y = 4'b1000;
		#10;
		w = 8'b11111101;	//y = 4'b1001;
		#10;
		w = 8'b11111111; //y = 4'b0000;
		#10;
		w = 8'b01111111; //y = 4'b1111;
		#10;
		w = 8'b10100101; //y = 4'b1110;
		#10;
		w = 8'b11010011; //y = 4'b1101;
		#10;
		w = 8'b11101111; //y = 4'b1100;
		#10;
		w = 8'b11110111;//y = 4'b1011;
		#10;
		w = 8'b11111001; //y = 4'b1010;
		#10;
		w = 8'b11111101; //y = 4'b1001;
		#10;
		w = 8'b11111110; //y = 4'b1000;
		#10;
		$finish;
	end

endmodule

/*
module tb_encoder8to3;

    // Khai b�o t�n hi?u ??u v�o v� ??u ra cho testbench
    reg [8:1] w;
    wire [3:0] y;

    // Khai b�o module c?n ki?m tra
    encoder8to3 uut (
        .w(w),
        .y(y)
    );

    initial begin
        // Tr??ng h?p test ??u ti�n
        w = 8'b00000000; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? hai
        w = 8'b11111111; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? ba
        w = 8'b00000001; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? t?
        w = 8'b00000010; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? n?m
        w = 8'b00000100; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? s�u
        w = 8'b00001000; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? b?y
        w = 8'b00010000; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? t�m
        w = 8'b00100000; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? ch�n
        w = 8'b01000000; #10;
        $display("w = %b, y = %b", w, y);

        // Tr??ng h?p test th? m??i
        w = 8'b10000000; #10;
        $display("w = %b, y = %b", w, y);

        $finish;
    end

endmodule
*/
