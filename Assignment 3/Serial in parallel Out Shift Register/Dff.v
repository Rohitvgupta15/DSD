module Dff(
    input clk,
    input rst,
    input d,
    output reg q
    );
      always @ (posedge clk)
      begin
      if(rst)
        q=0;
        
      else if(clk)
     
        q = d ;
      end
endmodule
