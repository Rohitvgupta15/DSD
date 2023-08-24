module full_adder(
    input a,
    input b,
    input Cin,
    output sum,
    output cout
    );
    
    assign sum = a ^ b ^ Cin;
    assign cout = (a * b) |  (b * Cin) | (a * Cin);
    
endmodule
