module piso(
    input clk,
    input ld,rst,
    input [3:0] d,
    output  out
    );
//    initial begin 
//     q[0]=d[0];
//     end
    wire w1,w2,w3;
    wire q1,q2,q3;
     Dff d1(clk,rst,d[0],w1);
     shift_register s1(d[1],w1,ld,q1);
     
     Dff d2(clk,rst,q1,w2);
     shift_register s2(d[2],w2,ld,q2);
          
     Dff d3(clk,rst,q2,w3);
     shift_register s3(d[3],w3,ld,q3);

     Dff d4(clk,rst,q3,out);
              
    
    
endmodule
