module bcd_timecount_tb();


    reg clk,rst;
    wire [6:0] second_bcd,minute_bcd,hour_bcd;
    
    bcd_timecount uut(clk,rst,second_bcd,minute_bcd,hour_bcd);
    
    initial begin 
    $display("hour :  minute  :   second");
    $monitor("%d   :   %d     :    %d  ",hour_bcd,minute_bcd,second_bcd);
    end
    
    initial begin
     forever #5 clk = ~clk;
     end
     
     initial begin
     clk = 0;
     rst = 1;
     #10 rst =0;
     #15000 $finish;
     end
endmodule
