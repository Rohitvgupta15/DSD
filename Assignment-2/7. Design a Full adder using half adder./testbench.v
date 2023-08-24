module fulladder_using_half_tb;

  reg x,y,z;
  wire carry,sum;

  initial begin
   
     $monitor($time |"x = %b | y = %b | z = %b | sum = %b | carry = %b ",x,y,z,carry,sum);
   
  end
   
   fulladder_using_halfadder uut(x,y,z,carry,sum);
   
   
  initial begin
   
    #000 x=0; y=0; z=0;
    #100 x=0; y=0; z=1;
    #100 x=0; y=1; z=0;
    #100 x=0; y=1; z=1;
    #100 x=1; y=0; z=0;
    #100 x=1; y=0; z=1;
    #100 x=1; y=1; z=0;
    #100 x=1; y=1; z=1;
    
    #100 $finish;
    
  end 
    
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    
  end

endmodule
