module N_1_multiplex_tb(

    );
    
      reg [15:0] in;
      reg [3:0] sel;
      wire out;
    
      N_1_Multiplexer uut (in,sel,out);
    
     
      reg clock = 0;
      always #5 clock = ~clock;
    
      
      initial begin
        $dumpfile("mux_16x1_waveform.vcd");
        $dumpvars(0, N_1_multiplex_tb);
    
       
        in = 16'b1010101010101010;
        sel = 4'b0000;
        
        #10;
         in = 16'b1100110011001100;
        sel = 4'b0111;
        
        #10;
        in = 16'b1111000011110000;
        sel = 4'b1111;
        #10;
    
        $finish;
      end
   
endmodule
