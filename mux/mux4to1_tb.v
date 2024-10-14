module tb_mux4_1;

// Declare testbench variables
reg w0, w1, w2, w3, s0, s1;
wire y;

// Instantiate the module under test
mux4to1 uut (
    .w0(w0),
    .w1(w1),
    .w2(w2),
    .w3(w3),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin
    // Initialize inputs
    w0 = 0; w1 = 0; w2 = 0; w3 = 0;
    s0 = 0; s1 = 0;

    // Monitor changes
    $monitor("Time: %0d, w0=%b, w1=%b, w2=%b, w3=%b, s0=%b, s1=%b, y=%b", $time, w0, w1, w2, w3, s0, s1, y);

    // Test case
    #10 w0 = 1; w1 = 0; w2 = 0; w3 = 0; s0 = 0; s1 = 0;
    #10 w0 = 0; w1 = 1; w2 = 0; w3 = 0; s0 = 1; s1 = 0;
    #10 w0 = 0; w1 = 0; w2 = 1; w3 = 0; s0 = 0; s1 = 1;
    #10 w0 = 0; w1 = 0; w2 = 0; w3 = 1; s0 = 1; s1 = 1;

    // Finish simulation
    #10 $finish;
end

endmodule

