module _4x1_mux(
    input a,
    input b,
    input c,
    input d,
    input s1,s2,
    output reg out
    );

    always @ (*)
     begin 
         case({s1 , s2})
             
             2'b00 :  out = a;
             2'b01 :  out = b;
             2'b10 :  out = c;
             2'b11 :  out = d;
         endcase
     end        
             
endmodule
