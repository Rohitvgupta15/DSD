module mux_21(
    input x,
    input y,
    input sel,
    output reg out
    );
    
   
    always @ (*)
    begin 
    case(sel)
       
        1'b0 :  out = x;
        1'b1 :  out = y;
    endcase
    
    end
