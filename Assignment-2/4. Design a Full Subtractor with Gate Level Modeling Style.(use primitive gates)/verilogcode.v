module full_subtractor_gate_level(
    input x,
    input y,
    input z,
    output difference,
    output borrow
    );
    
    xor_21 x1(x,y,k1);
    xor_21 x2(k1,z,difference);
    
    and_21 a1(~x,y,k2);
    and_21 a2(~x,z,k3);
    and_21 a3(y,z,k4);
    
    or_21 o1(k2,k3,k5);
    or_21 o2(k5,k4,borrow);
    
endmodule
