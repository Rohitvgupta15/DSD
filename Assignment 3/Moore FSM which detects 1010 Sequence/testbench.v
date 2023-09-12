module fsm_moore_1010_tb(

    );
    reg clk;
    reg rst;
    reg in;
    wire out;
    
    fsm_moore_1010 uut(clk,rst,in,out);
    initial begin
    $monitor($time," | rst=%b | in=%b | out=%b",rst,in,out );
    end
    initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
    end
    
    initial begin
      rst = 1'b1;
     #10 rst = 1'b0; in=1'b0;
     #10  in=1'b1;
     #10  in=1'b0;
     #10  in=1'b1;
     #10  in=1'b1;
     #10  in=1'b0;
     #10  in=1'b1;
     #10  in=1'b0;
     #10  in=1'b1;
     #10  in=1'b0;
     #10  in=1'b1;
     #10  in=1'b0;
     #10  in=1'b0;
     
     
        end
    
endmodule
