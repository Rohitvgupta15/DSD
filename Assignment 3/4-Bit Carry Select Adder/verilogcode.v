module _4bit_carry_select_adder(
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0]sum,
    output c_out
    );
    wire [3:0] s1;
    wire [3:0] s2;
    reg d1=1'b0,d2=1'b1;
    wire c1,c2;
    
//   _4bit_adder a1(a,b,d1,s1,c1);
//   _4bit_adder a2(a,b,d2,s2,c2);
    FA f1(a[0],b[0],d1,s1[0],w1);
    FA f2(a[1],b[1],w1,s1[1],w2);
    FA f3(a[2],b[2],w2,s1[2],w3);
    FA f4(a[3],b[3],w3,s1[3],c_out);
    
    FA f5(a[0],b[0],d2,s2[0],w4);
    FA f6(a[1],b[1],w4,s2[1],w5);
    FA f7(a[2],b[2],w5,s2[2],w6);
    FA f8(a[3],b[3],w6,s2[3],c_out);
   
   mux_21 m1(s1[0],s2[0],c_in,sum[0]);
   mux_21 m2(s1[1],s2[1],c_in,sum[1]);
   mux_21 m3(s1[2],s2[2],c_in,sum[2]);
   mux_21 m4(s1[3],s2[3],c_in,sum[3]);
   
   mux_21 m5(c1,c2,c_in,c_out);
   
       
endmodule
