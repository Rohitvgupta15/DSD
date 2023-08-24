module grey_3_tb;

  reg a,b,c;
  wire x,y,z;
  
  initial begin                                                                                            
                                                                                                             
       $monitor($time |"a = %b | b = %b | c = %b | x = %b | y = %b | z = %b ",a,b,c,x,y,z);
                                                                                                             
    end 
    
    grey_3 uut(a,b,c,x,y,z);
    
    initial begin
    
        #0   a=0; b=0; c=0;
        #100 a=0; b=0; c=1;
        #100 a=0; b=1; c=0;
        #100 a=0; b=1; c=1;
        #100 a=1; b=0; c=0;
        #100 a=1; b=0; c=1;
        #100 a=1; b=1; c=0;
        #100 a=1; b=1; c=1;
        
        #100 $finish;
    end
    
    initial begin                                                                                            
        $dumpfile("dump.vcd");                                                                                 
        $dumpvars(0);                                                                                          
      end  
endmodule
