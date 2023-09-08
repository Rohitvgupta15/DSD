module siso_tb(

    );
    reg clk,s_in;
        reg rst;
        wire [3:0]q;
        wire s_out;
        
        siso uut(clk,rst,q,s_in,s_out);
        
        initial begin
               clk = 0;
               forever #5 clk = ~clk;
             end
             initial 
               begin
                 #00  rst = 1'b1;
                 #10 rst = 1'b0;
                 #500 $finish;
               
               end
             initial begin
                
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
