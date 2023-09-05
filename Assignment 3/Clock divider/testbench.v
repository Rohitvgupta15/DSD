module clock_divider_tb(

    );
    reg clk;
    reg rst;
    wire d_by_2;
    wire d_by_4;
    wire d_by_8;
    wire d_by_16;
    
    clock_divider uut(rst,clk,d_by_2,d_by_4,d_by_8,d_by_16);
    initial     clk = 1'b0;
        always #5 clk = ~clk;
        
   initial begin : test
    
            rst = 1'b0;
            #10
            rst = 1'b1;
            
            #60000
            $finish;
    
        end // test 
    
    
endmodule
