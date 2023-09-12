module prbs_tb();
    
    reg clk, rst;
    wire out;
    
   prbs uut ( clk, rst,out);
   
   initial begin
   $monitor("clk = %t | rst = %b | out = %b ",$time,rst,out);
   end
   
  initial begin
      clk <= 0;
   forever #5  clk <= ~clk;
    end

    initial begin
           rst = 1;
     #10   rst = 0;
   end
   
     initial begin
       #500 $finish;
     end
endmodule
