module _8bit_subractor_tb(

    );
    reg[7:0]a;
    reg[7:0]b;
    wire [7:0] D;
    wire Borrow;
    
    initial begin
       
         $monitor($time |" $time |a = %b | b = %b | borrow = %b | D = %b | borrow = %b ",a,b,Borrow,D);
       
      end
       
       _8bit_subractor uut(a,b,D,Borrow);
       
      initial begin
       
        #000 a=8'b11000011; b=8'b10000001;
        #100 a=8'b01000011; b=8'b11001001;
        #100 a=8'b11011011; b=8'b10001111;
        #100 a=8'b11110011; b=8'b10100101;
        #100 a=8'b01000011; b=8'b11100001;
        #100 a=8'b00000111; b=8'b10001001;
        #100 a=8'b00100011; b=8'b11000001;
        #100 a=8'b00000011; b=8'b00000001;
         
        #100 $finish;
        
        end
       
        
      initial begin
        
        $dumpfile("dump.vcd");
        $dumpvars(0);
        
      end
    
endmodule
