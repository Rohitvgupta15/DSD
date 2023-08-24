module grey_3(
    input a,
    input b,
    input c,
    output x,
    output y,
    output z
    );
    
    assign x = a;
    assign y= a^b;
    assign z= b^c;
    
endmodule
