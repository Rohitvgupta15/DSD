module mux_32_tb();
    
     reg a,b,c;
     reg[1:0]s;
     wire out;
    mux_31 uut(a,b,c,s,out);
    
       initial begin
          $monitor(" a = %b | b = %b | c = %b |  out = %b ",a,b,c,out);
       end
       
       initial begin
          a = 1;  b = 1;  c = 1;
         #10 s = 2'b00;
         #10 s = 2'b01;
         #10 s = 2'b10;
         #10 s = 2'b11; 
         
         #10 a = 0;  b = 1;  c = 0;
         #0  s = 2'b00;
         #10 s = 2'b01;
         #10 s = 2'b10;
         #10 s = 2'b11; 
         
         
         #10 a = 1;  b = 0;  c = 0;
         #0  s = 2'b00;
         #10 s = 2'b01;
         #10 s = 2'b10;
         #10 s = 2'b11; 
    
    end
endmodule
