module shift_register(
    input d,
    input si,
    input ld,
    output q
    );
    
    assign q = (si & ld) | (d & ~ld);
endmodule
