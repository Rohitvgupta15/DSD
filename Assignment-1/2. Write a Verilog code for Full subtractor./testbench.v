module full_subractor_tb;

  reg x,y,z;
  wire diff,borrow;

  initial begin
   
     $monitor($time |"x = %b | y = %b | z = %b | diff = %b | borrow = %b ",x,y,z,diff,borrow);
   
  end
   
   full_subtractor uut(x,y,z,diff,borrow);
   
   
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
