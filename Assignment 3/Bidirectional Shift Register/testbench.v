module bi_shift_reg_tb(

    );
    parameter n = 4;
          reg clk;
          reg rst;
          reg en;
          reg dir;
          reg d;
          wire [n-1:0]q;
          wire out;
          
          bi_shift_reg uut(clk,rst,en,dir,d,q,out );
          
          initial begin
          $monitor("clk = %t | en = %b | dir = %b | d = %b | q = %b",$time,en,dir,d,q);
          end
          
          initial begin 
          clk = 1'b0;
          forever #5 clk = ~clk;
          end
           
          initial begin 
              rst = 1'b1;  en=1'b0;
          #10 rst = 1'b0;  en=1'b1;
          end
          
          initial begin 
          
               dir = 0 ; d=1'b0; 
          #10  dir = 0 ; d=1'b1; 
          #10  dir = 0 ; d=1'b1; 
          #10  dir = 0 ; d=1'b0; 
          #10  dir = 0 ; d=1'b1;
          #10  dir = 0 ; d=1'b0; 
          #10  dir = 0 ; d=1'b1;
          #10  dir = 1 ; d=1'b0; 
          #10  dir = 1 ; d=1'b1; 
          #10  dir = 1 ; d=1'b1; 
          #10  dir = 1 ; d=1'b0; 
          #10  dir = 1 ; d=1'b1;
          #10  dir = 1 ; d=1'b0; 
          #10  dir = 1 ; d=1'b1;
          
          end
endmodule
