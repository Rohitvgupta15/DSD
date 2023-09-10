module full_subtractor(
    input x,
    input y,
    input z,
    output borrow,
    output diff
    );
    
    assign diff = x^y^z;
    assign borrow = ~x^y | ~x^z | y^z;
endmodule
