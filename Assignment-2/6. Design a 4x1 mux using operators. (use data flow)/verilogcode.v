module mux_41__operator(
    input x1,
    input x2,
    input x3,
    input x4,
    input s0, s1,
    output y
    );
    assign  y = s1 ?  ( s0 ? x4:x3) : ( s0 ? x2:x1);
endmodule
