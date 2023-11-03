module bcd_to_7segment(
    input rst,
    input [3:0] x,
    output reg [6:0] out
    );
    
     
     always @ (*) 
     begin
     if(rst)
        out <= 7'b0000000;
      
             case (x)
                
                   4'h0 :  out <= 7'b1111110;
                   4'h1 :  out <= 7'b0110000;
                   4'h2 :  out <= 7'b1101101;
                   4'h3 :  out <= 7'b1111001;
                   4'h4 :  out <= 7'b0110011;
                   4'h5 :  out <= 7'b1011011;
                   4'h6 :  out <= 7'b1011111;
                   4'h7 :  out <= 7'b1110000;
                   4'h8 :  out <= 7'b1111111;
                   4'h9 :  out <= 7'b1111011;
                default :  out <= 7'b1111110;   
            endcase
         end   
    endmodule
