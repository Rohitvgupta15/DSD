
module bcd_excess3_tb;

    reg w,x,y,z;
    wire a,b,c,d;
    
    initial begin                                                                                            
                                                                                                               
         $monitor($time |"w = %b | x = %b | y = %b | z = %b | a = %b | b = %b | c = %b | d = %b",w,x,y,z,a,b,c,d);
                                                                                                               
      end  
    
    
    bcd_excess3 uut(w,x,y,z,a,b,c,d);
    
    initial begin 
    
        #000 w=0; x=0; y=0; z=0;
        #100 w=0; x=0; y=0; z=1;
        #100 w=0; x=0; y=1; z=0;
        #100 w=0; x=0; y=1; z=1;
        #100 w=0; x=1; y=0; z=0;
        #100 w=0; x=1; y=0; z=1;
        #100 w=0; x=1; y=1; z=0;
        #100 w=0; x=1; y=1; z=1;
        #100 w=1; x=0; y=0; z=0;
        #100 w=1; x=0; y=0; z=1;
        #100 $finish;
    
    end
    
    initial begin                                                                                            
        $dumpfile("dump.vcd");                                                                                 
        $dumpvars(0);                                                                                          
      end 

endmodule
