module decoder_24_tb;
  reg x1,x2;
  wire y1,y2,y3,y4;

  initial begin
   
     $monitor(" %t | x1 = %b | x2 = %b | y1 = %b | y2 = %b | y3 = %b | y4 = %b ",$time,x1,x2,y1,y2,y3,y4);
   
  end
   decoder_24_gate_level uut(x1,x2,y1,y2,y3,y4);
    initial begin
   
    #000 x1=0; x2=0; 
    #100 x1=0; x2=1; 
    #100 x1=1; x2=0; 
    #100 x1=1; x2=1; 
    #100 $finish;
    
 end 
    
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    
  end

endmodule
