module mux__21(
    input x0,
    input x1,
    input s,
    output out
    );
    
    assign out = x0*~s | x1*s;
    
endmodule
