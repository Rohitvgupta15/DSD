module bcd_adder(
     input [3:0]a,
     input [3:0]b,
     input c_in,
     output c_out,
     output  [3:0]sum
    );
    wire w1,w2,p1,p2,c0;
    wire [3:0]data,z; 
    
    and (p1,z[3],z[2]);
    and (p2,z[3],z[1]);
    or  (c_out,p1,p2,w1);
    xor (c0,c_out,c_out);
    
    //assign data ={ 1'b0,c_out,c_out,1'b0};
        assign data[0]=c0;
        assign data[1]=c_out;
        assign data[2]=c_out;
        assign data[3]=c0;
        
    _4_bit_adder a1(a,b,c_in,z,w1);   
    _4_bit_adder a2(data,z,c_in,sum,w2);
    
    
endmodule
