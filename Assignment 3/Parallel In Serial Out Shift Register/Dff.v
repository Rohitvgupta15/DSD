module Dff(
    input clk,
    input rst,
    input d,
    output reg q
    );
    always @ (posedge clk)
     begin
        if(rst)
        q<=1'b0;
        else if(clk)
        q<=d;
     end      
    
endmodule
