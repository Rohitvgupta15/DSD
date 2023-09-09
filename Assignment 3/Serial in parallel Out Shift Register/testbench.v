module sipo_tb;
  reg clk,rst;
  reg s_in;
  wire [3:0]s_out;
    
    sipo uut(clk,rst,s_in,s_out);
    
    initial begin
   
    clk = 1'b0;
    forever #5 clk = ~clk;
    end
     
     initial begin
     rst=1'b1;
     
     #10 rst = 1'b0;
     
     end 
     
    always @ (posedge clk,s_in)
    begin
        
                   #10 s_in = 1'b0;
                   #10 s_in = 1'b1;
                   #10 s_in = 1'b1;
                   #10 s_in = 1'b0;
                   #10 s_in = 1'b1;
                   #10 s_in = 1'b0;
                   #10 s_in = 1'b1;
                   #10 $finish;
   end

endmodule
