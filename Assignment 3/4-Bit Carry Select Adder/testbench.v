module _4bit_carry_select_adder_tb(

    );
    reg [3:0]a;
        reg [3:0]b;
        reg c_in;
        wire [3:0]sum;
        wire c_out;
       
        
        _4bit_carry_select_adder uut(a,b,c_in,sum,c_out);
    
            initial begin
            
            #000 a = 4'b1000 ; b = 4'b0000 ; c_in = 0;
            #100 a = 4'b1001 ; b = 4'b0001 ; c_in = 0;
            #100 a = 4'b0011 ; b = 4'b1011 ; c_in = 0;
            #100 a = 4'b0111 ; b = 4'b0111 ; c_in = 0;
            #100 a = 4'b1011 ; b = 4'b1111 ; c_in = 0;
            #100 a = 4'b1100 ; b = 4'b0000 ; c_in = 1;
            #100 a = 4'b1001 ; b = 4'b0001 ; c_in = 1;
            #100 a = 4'b0011 ; b = 4'b0011 ; c_in = 1;
            #100 a = 4'b0111 ; b = 4'b0111 ; c_in = 1;
            #100 a = 4'b1110 ; b = 4'b1111 ; c_in = 1;
            #100 $finish;
            
            end
        initial begin                                                                                            
            $dumpfile("dump.vcd");                                                                                 
            $dumpvars(0);                                                                                          
          end
endmodule
