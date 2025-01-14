`timescale 1ns/1ns

module counter_to_10_tb();
  reg clk, reset, d;
  wire c;
  wire[3:0] q;

  localparam T = 20;
  counter_to_10 counter (.clk(clk), .reset(reset), .d(d), .count(q), .carry(c));
  always 
  begin 
    clk = 1'b1;
    #(T/4);
    clk = 1'b0;
    #(T/4);
  end

  initial
  begin 
  $dumpfile("counter_to_10_tb.vcd");
  $dumpvars(0, counter_to_10_tb);
  end

  initial 
  begin 
    reset <= 1; d <= 0; 
    #(T)
    #(T/2); reset <= 0; d <=0;
    #(T*5);
    reset <= 1;
    #(T/2); reset <= 0; d <=1;
    #(T*5);
    #(T/2); d <=0;
    #(T*2); d<=1;
    #(T); d <=0;
    #(T*3); d<=1;

    #(T*4);
    $finish;
  end
endmodule 
