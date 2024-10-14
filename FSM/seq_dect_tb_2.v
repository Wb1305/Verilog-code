`timescale 1ns / 1ps

module sequence_detector_tb;

  reg clk;
  reg reset;
  reg w;
  wire z;

  sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .w(w),
    .z(z)
  );

  always begin
    #5 clk = ~clk;  
  end

  initial begin
    clk = 0;
    reset = 0;
    w = 0;

    reset = 1;
    #10;
    reset = 0;

    w = 0; #10;
    w = 1; #10;
    w = 0; #10;
    w = 1; #10;
    w = 1; #10;
    w = 0; #10;
    w = 1; #10;
    w = 1; #10;
    w = 1; #10;
    w = 0; #10;
    w = 1; #10;
   
    $stop;
  end
endmodule
