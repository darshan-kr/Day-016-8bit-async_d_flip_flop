module async_d_flip_flop(
  input clk, rst,
  input [7:0]data_in,
  output reg [7:0]data_out);
  
  always@(posedge clk or posedge rst)
    data_out <= rst ? 8'd0:data_in;
  
endmodule
