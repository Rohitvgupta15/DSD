module fulladder_using_halfadder(
    input x,
    input y,
    input z,
    output sum,
    output carry
    );
    
    half_adder ha1 ( .x(x), .y(y), .sum(k1), .carry(c1));
    half_adder ha2 ( .x(k1), .y(z), .sum(sum), .carry(c2));
    
    or_21 o1( .x(c1),.y(c2),.z(carry));
endmodule
