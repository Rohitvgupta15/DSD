module decoder_24_gate_level(
    input x1,
    input x2,
    output y1,
    output y2,
    output y3,
    output y4
    );
    
    and a1(y1,~x1,~x2);
    and a2(y2,~x1,x2);
    and a3(y3,x1,~x2);
    and a4(y4,x1,x2);
    
endmodule
