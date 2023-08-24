module mux_41__tb;

reg x1,x2,x3,x4,s0,s1;
  wire y;

  initial begin
   
     $monitor(" %t | s0 = %b | s1 = %b | y = %b ",$time,s0,s1,y);
   
  end
   mux_41__operator uut(x1,x2,x3,x4,s0,s1,y);
    initial begin
   x1=1;
   x2=1;
   x3=1;
   x4=1;
   
    #000 s0=0; s1=0; 
    #100 s0=0; s1=1; 
    #100 s0=1; s1=0; 
    #100 s0=1; s1=1; 
    #100 $finish;
    
 end  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    
  end

endmodule
