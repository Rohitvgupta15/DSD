module comparator_2bit_tb;                                                                                 
                                                                                                           
  reg x0,x1,y0,y1;                                                                                         
  wire x_greater_than_y, x_less_than_y,x_equal_to_y;                                                       
                                                                                                           
  initial begin                                                                                            
                                                                                                           
     $monitor($time |"x0 = %b | x1 = %b | y0 = %b | y1 = %b | x_greater_than_y = %b | x_equal_to_y = %b | x
                                                                                                           
  end                                                                                                      
                                                                                                           
   comparator_2bit uut(x0,x1,y0,y1,x_greater_than_y,x_less_than_y,x_equal_to_y);                           
                                                                                                           
                                                                                                           
  initial begin                                                                                            
                                                                                                           
    #000 x0=1'b0; x1=1'b0; y0=1'b0; y1=1'b0;                                                               
    #100 x0=1'b0; x1=1'b1; y0=1'b0; y1=1'b1;                                                               
    #100 x0=1'b1; x1=1'b0; y0=1'b1; y1=1'b0;                                                               
    #100 x0=1'b1; x1=1'b1; y0=1'b1; y1=1'b1;                                                               
                                                                                                           
    #100 $finish;                                                                                          
                                                                                                           
  end                                                                                                      
                                                                                                           
  initial begin                                                                                            
    $dumpfile("dump.vcd");                                                                                 
    $dumpvars(0);                                                                                          
  end                                                                                                      
                                                                                                           
endmodule                                                                                                  
                                                                                                           
