module sipo(
    input clk,
    input rst,
    input s_in,
    output [3:0] s_out
    );
    
       Dff d1(clk,reset,s_in,s_out[0]);
       Dff d2(clk,reset,s_out[0],s_out[1]);
       Dff d3(clk,reset,s_out[1],s_out[2]);
       Dff d4(clk,reset,s_out[2],s_out[3]);
endmodule
