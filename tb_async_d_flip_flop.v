module tb_async_d_flip_flop;
  reg clk, rst;
  reg [7:0]data_in;
  wire [7:0]data_out;
  
  async_d_flip_flop f1(clk, rst, data_in, data_out);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk = 1'b0;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    data_in = 8'd5;
    #50;
    data_in = 8'd225;
    #20;
    data_in = 8'd250;
    #150 $finish;
  end
  
  always #5 clk = ~clk;
  
endmodule
