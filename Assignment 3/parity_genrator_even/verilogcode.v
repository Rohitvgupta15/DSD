module parity_genrator(
    input x,
    input y,
    input z,
    output reg result
    );
    
    xor (result,x,y,z);
   
endmodule
