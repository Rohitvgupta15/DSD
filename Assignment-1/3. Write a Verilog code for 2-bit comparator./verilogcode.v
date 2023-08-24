module comparator_2bit(
    input x1,
    input x0,
    input y1,
    input y0,
    output x_greater_than_y,
    output x_less_than_y,
    output x_equal_to_y
    );
    wire a,b;
    assign a=(x1^y1);
    assign b=(x0^y0);
    assign x_greater_than_y =  x1*(~y1) |( ~a*x0*(~y0));
    assign x_less_than_y = (~x1)*y1 |(~a*(~x0)*y0);
    assign x_equal_to_y =  ~b*~a;
    
endmodule
