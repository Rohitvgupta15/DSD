module _4bit_multiplier_tb();

 reg [3:0]a;
 reg [3:0]b;
 wire [7:0]product;
 
 _4bit_multiplier uut(a,b,product);
 
  initial begin
        
        #000 a = 4'b1101 ; b = 4'b1010 ; 
        #100 a = 4'b0101 ; b = 4'b1001 ; 
        #100 a = 4'b0011 ; b = 4'b1011 ; 
        #100 a = 4'b0111 ; b = 4'b1111 ; 
        #100 a = 4'b1111 ; b = 4'b1111 ; 
        #100 a = 4'b0100 ; b = 4'b1000 ; 
        #100 a = 4'b0101 ; b = 4'b0001 ; 
        #100 a = 4'b1011 ; b = 4'b0011 ; 
        #100 a = 4'b0111 ; b = 4'b0101 ; 
        #100 a = 4'b1111 ; b = 4'b1101 ; 
        #100 $finish;
        
        end
    initial begin                                                                                            
        $dumpfile("dump.vcd");                                                                                 
        $dumpvars(0);                                                                                          
      end 
 
 
endmodule
