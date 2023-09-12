module FA(
    input a,
    input b,
    input c_in,
    input sum,
    input c_out
    );
    
    assign sum = a^b^c_in;
    assign c_out = a&b | b&c_in | a&c_in;
endmodule
