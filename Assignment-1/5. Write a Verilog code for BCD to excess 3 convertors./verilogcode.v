module bcd_excess3(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d
    );
    
    assign a = w | (x*y) | (x*z);
    assign b = ~x*y | ~x*z | x*(~y)*(~z);
    assign c = ~(y^z);
    assign d = ~z;
    
endmodule
