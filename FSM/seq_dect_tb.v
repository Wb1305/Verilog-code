`timescale 1ns / 1ps

module sequence_detector_tb;

  // Khai báo các biến để kết nối với DUT (Device Under Test)
  reg clk;
  reg reset;
  reg w;
  wire z;

  // Khởi tạo DUT
  sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .w(w),
    .z(z)
  );

  // Tạo xung clock với chu kỳ 10ns
  always begin
    #5 clk = ~clk;  // 5ns cho mỗi cạnh của xung clock, tổng chu kỳ là 10ns
  end

  // Testbench chính
  initial begin
    // Khởi tạo tín hiệu
    clk = 0;
    reset = 0;
    w = 0;

    // Đặt lại hệ thống
    reset = 1;
    #10;
    reset = 0;

    // Áp dụng các giá trị đầu vào và kiểm tra đầu ra
    // Chuỗi kiểm tra: 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1
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
    
    // Dừng mô phỏng
    $stop;
  end

endmodule
