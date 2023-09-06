module ring_counter_tb(

    );
    
    reg clk;
    reg rst;
    wire [3:0]q;
    
    ring_counter uut(clk,rst,q);
    
    initial begin
    #0 clk=1'b0;
    #0 rst = 1'b0;
    end
    
    always 
    #10 clk = ~clk;
    initial
    begin
     #10 rst =1'b1;
     #20 rst =1'b0;
     #500 $finish;
     end
    
    
endmodule
