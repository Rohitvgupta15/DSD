module full_subtractor(
    input x,
    input y,
    input z,
    output diff,
    output borrow
    );
    
    assign diff = x^y^z;
    assign borrow = ~x^y | ~x^z | y^z;
endmodule
