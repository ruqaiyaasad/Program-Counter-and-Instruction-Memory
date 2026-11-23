module pc4(input clk,reset,input [3:0] next_addr,output reg [3:0] address);
 always @(posedge clk or posedge reset) begin
  if(reset) address<=0; else address<=next_addr;
 end
endmodule
