module master_slave(
    input clk,
   
    input s,
    input r,
    output Q,
    output  QBAR
    );
     
    wire w1,w2,w3,w4;
    wire sclk;
    
    assign sclk = ~clk;
    
    jk_flipflop master(clk,s,r,w1,w2);
    jk_flipflop slave(sclk,w1,w2,Q,QBAR);
    
//    initial begin
//    Q = w3;
//    QBAR = w4;
//    end
    
endmodule
