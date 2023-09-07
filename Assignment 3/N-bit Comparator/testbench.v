module n_bit_comparator__tb(

    );
   parameter n=3;
    reg [(n-1):0]a; 
    reg[(n-1):0]b;
    wire greater,equal,lesser;
    
    n_bit_comparator uut(a,b,greater,equal,lesser);
    
    initial begin
    
    #00 a=3'b000; b=3'b111;
    #50 a=3'b001; b=3'b000;
    #50 a=3'b101; b=3'b101;
    #50 a=3'b011; b=3'b100;
    #50 a=3'b010; b=3'b010;
    #50 a=3'b111; b=3'b111;
    #50 $finish;
    end
    
     initial begin                                                                                            
       $dumpfile("dump.vcd");                                                                                 
       $dumpvars(0);                                                                                          
     end       
endmodule
