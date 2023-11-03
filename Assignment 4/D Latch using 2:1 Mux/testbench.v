module tb();
    reg x,y,s;
    wire out;
    
    D_latch_2x1 uut(x,y,s,out);
    initial begin
    $monitor(" x = %b | y = %b | s = %b | out = %b",x,y,s,out);
    end
    initial begin
        x = 1; y = 0; s = 0;
    #10 x = 1; y = 0; s = 1;
    #10 x = 0; y = 1; s = 0;
    #10 x = 0; y = 1; s = 1;  
    #10 x = 1; y = 1; s = 0;
    #10 x = 1; y = 1; s = 1;  
    #10 $finish;
    end
endmodule

