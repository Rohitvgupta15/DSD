module _8bit_sub_add_tb(

    );
        reg [7:0] a;
        reg [7:0] b;
        reg mode;
        wire [7:0] result;
        wire v;
        
      
         initial begin
               
                $monitor($time |" $time |a = %b | b = %b | mode = %b | v = %b | result = %b ",a,b,mode,v,result);
               
         end
               
               _8bit_adder_sub uut(a,b,mode,result,v);
               
              initial begin
               
                #000 mode = 1'b1; a=8'b11000011; b=8'b10000001;
                #100 mode = 1'b1; a=8'b01000011; b=8'b11001001;
                #100 mode = 1'b1; a=8'b11011011; b=8'b10001111;
                #100 mode = 1'b1; a=8'b11110011; b=8'b10100101;
                #100 mode = 1'b0; a=8'b01000011; b=8'b11100001;
                #100 mode = 1'b0; a=8'b00000111; b=8'b10001001;
                #100 mode = 1'b0; a=8'b00100011; b=8'b11000001;
                #100 mode = 1'b0; a=8'b00000011; b=8'b00000001;
                 
                #100 $finish;
                
                end
               
                
              initial begin
                
                $dumpfile("dump.vcd");
                $dumpvars(0);
                
              end
 
endmodule
