module _8bit_subractor(
    input [7:0] a,
    input [7:0] b,
    output [7:0]D,
    output Borrow
    );
    
    wire w1,w2,w3,w4,w5,w6,w7;
    
    full_subtractor  s1(a[0],b[0],1'b0,w1,D[0]);
    full_subtractor  s2(a[1],b[1],1'b0,w2,D[1]);
    full_subtractor  s3(a[2],b[2],1'b0,w3,D[2]);
    full_subtractor  s4(a[3],b[3],1'b0,w4,D[3]);
    full_subtractor  s5(a[4],b[4],1'b0,w5,D[4]);
    full_subtractor  s6(a[5],b[5],1'b0,w6,D[5]);
    full_subtractor  s7(a[6],b[6],1'b0,w7,D[6]);
    full_subtractor  s8(a[7],b[7],1'b0,Borrow,D[7]);
    
    
    
    
endmodule
