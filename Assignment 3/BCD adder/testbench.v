module bcd_adder_tb(

    );
         reg [3:0]a;
         reg [3:0]b;
         reg   c_in;
         wire c_out;
         wire [3:0]sum;
         
         bcd_adder uut(a,b,c_in,c_out,sum);
         
         initial begin
                 
                 #000 a = 4'b0101 ; b = 4'b0110 ; c_in = 0;
                 #100 a = 4'b0011 ; b = 4'b0001 ; c_in = 0;
                 #100 a = 4'b0011 ; b = 4'b1001 ; c_in = 0;
                 #100 a = 4'b0110 ; b = 4'b0111 ; c_in = 0;
                 #100 a = 4'b1000 ; b = 4'b0001 ; c_in = 0;
                 #100 a = 4'b0000 ; b = 4'b0000 ; c_in = 0;
                 #100 a = 4'b0001 ; b = 4'b0001 ; c_in = 0;
                 #100 a = 4'b0011 ; b = 4'b0011 ; c_in = 0;
                 #100 a = 4'b0111 ; b = 4'b1001 ; c_in = 0;
                 #100 a = 4'b0111 ; b = 4'b0111 ; c_in = 0;
                 #100 $finish;
                 
                 end
             initial begin                                                                                            
                 $dumpfile("dump.vcd");                                                                                 
                 $dumpvars(0);                                                                                          
               end 
         
endmodule
