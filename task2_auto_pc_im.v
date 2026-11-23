module pc4_auto(input clk,reset,output reg [3:0] address);
 always @(posedge clk or posedge reset) begin
  if(reset) address<=0; else address<=address+1'b1;
 end
endmodule
module instruction_memory8(input [3:0] address,output reg [7:0] instruction);
 reg [7:0] mem[0:15]; integer i;
 initial begin
  for(i=0;i<16;i=i+1) mem[i]=8'h00;
  mem[0]=8'h11; mem[1]=8'h22; mem[2]=8'h33; mem[3]=8'h44;
 end
 always @* begin
  if(address<16) instruction=mem[address]; else instruction=8'b0;
 end
endmodule
