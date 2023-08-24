module mux_81_tb;

reg [7:0]x;
reg[2:0]s;
wire out;

  initial begin 
  
  $monitor( " %t | x = %b | s2 = %b | s1 = %b | s0 = %b | out = %b " ,$time,x,s[2],s[1],s[0],out);
  
  end 
  
  mux_81 uut(x,s,out);
  
  initial begin
  x = 8'b10101010;
  
  #100  x=8'b10101010; s[2]= 0 ; s[1]= 0 ; s[0]= 0;
  #100  x=8'b10101010; s[2]= 0 ; s[1]= 0 ; s[0]= 1;
  #100  x=8'b10101010; s[2]= 0 ; s[1]= 1 ; s[0]= 0;
  #100  x=8'b10101010; s[2]= 0 ; s[1]= 1 ; s[0]= 1;
  #100  x=8'b10101010; s[2]= 1 ; s[1]= 0 ; s[0]= 0;
  #100  x=8'b10101010; s[2]= 1 ; s[1]= 0 ; s[0]= 1;
  #100  x=8'b10101010; s[2]= 1 ; s[1]= 1 ; s[0]= 0;
  #100  x=8'b10101010; s[2]= 1 ; s[1]= 1 ; s[0]= 1;
  #100 $finish;
  
  end 
  initial begin 
  
  $dumpfile("dump.vcd");
  $dumpvars(0);
  
  end
endmodule
