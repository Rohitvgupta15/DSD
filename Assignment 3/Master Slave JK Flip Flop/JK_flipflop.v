
module jk_flipflop(
    input clk,
    input j,
    input k,
    output reg q,
    output reg qbar
    );
    
    always @ (posedge clk)
    begin 
    
    case ({j,k})
  
       2'b00 : begin q <= q;  qbar<= ~q; end
       2'b01 : begin q <= 0;  qbar<=  1; end
       2'b10 : begin q <= 1;  qbar<=  0; end
       2'b11 : begin q <= ~q; qbar<=  q; end 
    
     endcase
    end   
endmodule
