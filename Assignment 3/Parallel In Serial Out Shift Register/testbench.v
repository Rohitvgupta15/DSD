module piso_tb;
reg clk,ld;
reg rst;
reg [3:0]d;
wire out;

piso uut(clk,ld,rst,d,out);

   initial begin
   clk = 1'b0;
   forever #5 clk = ~clk;
   end
   
   initial begin
       rst = 1'b1;  ld  = 1'b1;
   #10 rst = 1'b0;  ld  = 1'b0;
    end
 
     initial begin
       #00 d=4'b0000;  
       #10 d=4'b1001;
       #10 d=4'b1011;
       #10 d=4'b1101;
       #10 d=4'b0101;
       #10 d=4'b1010;
       #10 d=4'b1100;
       #10 d=4'b1111;
       #10 d=4'b0000;
       #10 d=4'b0001;
       #10 d=4'b0011;
       #10 $finish;
       end
endmodule
