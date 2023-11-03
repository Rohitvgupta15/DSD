module _1_bit_comparator_using_4x1_mux(
    input a,
    input b,
    output  a_greater_b,
    output  a_equal_b,
    output  b_greater_a
    );
    
    _4x1_mux  m1(1'b0,1'b0,1'b1,1'b0,a,b,a_greater_b);
    _4x1_mux  m2(1'b0,1'b1,1'b0,1'b0,a,b,b_greater_a);
    _4x1_mux  m3(1'b1,1'b0,1'b0,1'b1,a,b,a_equal_b);
endmodule
