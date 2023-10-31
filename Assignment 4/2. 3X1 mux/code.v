module mux_31(
    input a,
    input b,
    input c,
    input [1:0] s,
    output reg out
    );
    
    always @ (*)
    begin
         case(s)
               2'b00 :  out = a;
               2'b01 :  out = b;
               2'b10 :  out = c;
             default :  out = 0;
         endcase
     end          
endmodule
