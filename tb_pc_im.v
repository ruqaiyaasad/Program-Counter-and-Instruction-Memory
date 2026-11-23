module tb_pc_im;
 reg clk=0,reset=0; wire [31:0] pc,inst;
 pc32_imem dut(clk,reset,pc,inst);
 always #5 clk=~clk;
 initial begin
  reset=1;#12;reset=0;
  repeat(7) begin @(posedge clk);#1;$display("PC=%h instruction=%h",pc,inst);end
  $finish;
 end
endmodule
