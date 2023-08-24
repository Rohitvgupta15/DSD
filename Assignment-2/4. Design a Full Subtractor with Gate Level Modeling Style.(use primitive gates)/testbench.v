module full_subtractor_tb;

  reg x,y,z;
  wire difference,borrow;

  initial begin
   
     $monitor($time |"x = %b | y = %b | z = %b | diff = %b | borrow = %b ",x,y,z,difference,borrow);
   
  end
   
   full_subtractor_gate_level uut(x,y,z,difference,borrow);
   
   
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
