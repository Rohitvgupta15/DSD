module _4Bit_Carry_Look_Ahead_Adder_tb(

    );
    reg [3:0]a;
    reg [3:0]b;
    reg cin;
    wire cout;
    wire [3:0]sum;
    
    _4Bit_Carry_Look_Ahead_Adder uut(a,b,cin,sum,cout);

        initial begin
        
        #000 a = 4'b0000 ; b = 4'b0000 ; cin = 0;
        #100 a = 4'b0001 ; b = 4'b0001 ; cin = 0;
        #100 a = 4'b0011 ; b = 4'b0011 ; cin = 0;
        #100 a = 4'b0111 ; b = 4'b0111 ; cin = 0;
        #100 a = 4'b1111 ; b = 4'b1111 ; cin = 0;
        #100 a = 4'b0000 ; b = 4'b0000 ; cin = 1;
        #100 a = 4'b0001 ; b = 4'b0001 ; cin = 1;
        #100 a = 4'b0011 ; b = 4'b0011 ; cin = 1;
        #100 a = 4'b0111 ; b = 4'b0111 ; cin = 1;
        #100 a = 4'b1111 ; b = 4'b1111 ; cin = 1;
        #100 $finish;
        
        end
    initial begin                                                                                            
        $dumpfile("dump.vcd");                                                                                 
        $dumpvars(0);                                                                                          
      end 
     
endmodule
