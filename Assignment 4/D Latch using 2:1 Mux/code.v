module D_latch_2x1(
    input x,
    input y,
    input s,
    output reg out
    );
    
    always @ (*)
    begin 
        case(s)
             1'b0 : out = x;
             1'b1 : out = y;
        endcase
    end         
endmodule
