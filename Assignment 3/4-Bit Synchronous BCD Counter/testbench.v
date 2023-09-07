module _4Bit_Synchronous_BCD_Counter_tb(

    );
    
    reg clk;
    reg rst;
     wire [3:0]count;
     
     _4Bit_Synchronous_BCD_Counter uut(clk,rst,count);
        
     initial begin
       clk = 0;
       forever #5 clk = ~clk;
     end
     
     initial begin
       rst = 1;
       #10 rst = 0;
        $monitor ("T=%0t out=%b", $time, count);
       #150 rst = 1;
      #10 rst = 0;
      #200
      $finish;
      end
    
     
endmodule
