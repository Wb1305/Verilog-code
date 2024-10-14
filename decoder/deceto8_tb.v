module tb_decoder3to8;

    // Inputs
    reg [2:0] w;
    reg en;

    // Outputs
    wire [7:0] y;

    // Instantiate the Unit Under Test (UUT)
    decoder3to8 uut (
        .w(w), 
        .en(en), 
        .y(y)
    );

    // Test procedure
    initial begin
        // Initialize inputs
        w = 0;
        en = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Apply test vectors
        $display("Testing decoder3to8");
        $monitor("Time = %0t: en = %b, w = %b -> y = %b", $time, en, w, y);
        
        // Test case 1: Enable is 0, all outputs should be 0
        en = 0; w = 3'b000; #10;
        
        // Test case 2: Enable is 1, input w = 000
        en = 1; w = 3'b000; #10;

        // Test case 3: Enable is 1, input w = 001
        en = 1; w = 3'b001; #10;

        // Test case 4: Enable is 1, input w = 010
        en = 1; w = 3'b010; #10;

        // Test case 5: Enable is 1, input w = 011
        en = 1; w = 3'b011; #10;

        // Test case 6: Enable is 1, input w = 100
        en = 1; w = 3'b100; #10;

        // Test case 7: Enable is 1, input w = 101
        en = 1; w = 3'b101; #10;

        // Test case 8: Enable is 1, input w = 110
        en = 1; w = 3'b110; #10;

        // Test case 9: Enable is 1, input w = 111
        en = 1; w = 3'b111; #10;

        // Finish test
        $finish;
    end

endmodule

