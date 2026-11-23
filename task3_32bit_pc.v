module pc32(input clk,reset,output reg [31:0] pc);
 always @(posedge clk or posedge reset) begin
  if(reset) pc<=32'h00000000; else pc<=pc+32'd4;
 end
endmodule
