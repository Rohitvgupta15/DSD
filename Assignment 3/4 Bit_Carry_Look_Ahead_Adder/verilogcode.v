module _4Bit_Carry_Look_Ahead_Adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
    );
//    reg p1,p2,p3,p4;
//    reg g1,g2,g3,g4;
//    reg c1,c2,c3,c4;
    
    and (g1,a[0],b[0]);
    and (g2,a[1],b[1]);
    and (g3,a[2],b[2]);
    and (g4,a[3],b[3]);
    
    xor (p1,a[0],b[0]); 
    xor (p2,a[1],b[1]);
    xor (p3,a[2],b[2]);
    xor (p4,a[3],b[3]);
    
    assign c1= cin;
    assign c2= g1 | (p1 & c1);
    assign c3= g2 | (p2 & (g1 | (p1 & c1)));
    assign c4= g3 | (p3 & (g2 | (p2 & (g1 | (p1 & c1)))));
    assign c5= g4 | (p4 & (g3 | (p3 & (g2 | (p2 & (g1 | (p1 & c1)))))));
    
    assign sum[0] = p1 ^ c1;
    assign sum[1] = p2 ^ c2;
    assign sum[2] = p3 ^ c3;
    assign sum[3] = p4 ^ c4;
       
    assign cout = c5; 
endmodule
