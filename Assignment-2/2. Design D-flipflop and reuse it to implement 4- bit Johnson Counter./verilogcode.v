module _4bit_johnson_counter(
    input clk,
    input reset,
    output  [3:0] q
    );
    
    Dff d1(clk,reset,~q[3],q[0]);
    Dff d2(clk,reset,q[0],q[1]);
    Dff d3(clk,reset,q[1],q[2]);
    Dff d4(clk,reset,q[2],q[3]);
    
endmodule
