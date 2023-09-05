module rbit_johnson_counter_tb;

  reg clk,reset;
  wire [3:0] q;
  
  _4bit_johnson_counter uut(clk,reset,q);
  
  initial
  begin 
  
      reset = 1'b1;
      clk = 1'b1;
     
  end
  
  always #10 clk = ~clk;
 
  initial 
  begin
    #00  reset = 1'b1;
    #20 reset = 1'b0;
    #500 $finish;
  
  end

endmodule
