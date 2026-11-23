module pc32_imem(input clk,reset,output [31:0] pc,output reg [31:0] instruction);
 reg [31:0] mem[0:15]; integer i;
 pc32 p(clk,reset,pc);
 initial begin
  for(i=0;i<16;i=i+1) mem[i]=32'h00000013;
  mem[0]=32'h00500093; // addi x1,x0,5
  mem[1]=32'h00300113; // addi x2,x0,3
  mem[2]=32'h002081B3; // add x3,x1,x2
  mem[3]=32'h40208233; // sub x4,x1,x2
 end
 always @* begin
  if(pc[5:2]<16) instruction=mem[pc[5:2]];
  else instruction=32'h00000013;
 end
endmodule
