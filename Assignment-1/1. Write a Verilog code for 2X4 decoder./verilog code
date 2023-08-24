module decoder_24(
    input [1:0] x,
    output reg [3:0] y
    );
    
       always @ (*)
     begin : mux
     y=4'b0000;
     case(x)
     
     2'b00  :  y[0] = 1'b1;
     2'b01  :  y[1] = 1'b1;
     2'b10  :  y[2] = 1'b1;
     2'b11  :  y[3] = 1'b1;
     
     endcase
     end
    
endmodule
