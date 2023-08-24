module mux_81(
    input [7:0] x,
    input [2:0] s,
    output out
    );
    
    wire k1,k2,k3,k4,k5,k6;
    
    mux__21  m1(x[0],x[1],s[0],k1);
    mux__21  m2(x[2],x[3],s[0],k2);
    mux__21  m3(x[4],x[5],s[0],k3);
    mux__21  m4(x[6],x[7],s[0],k4);
    mux__21  m5(k1,k2,s[1],k5);
    mux__21  m6(k3,k4,s[1],k6);
    mux__21  m7(k5,k6,s[2],out);
    
    
endmodule
