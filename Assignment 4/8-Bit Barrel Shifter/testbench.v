module tb(

    );
     reg   [7:0] data;
     reg   [2:0]amtofshift;
     wire  [7:0]out;
     
     _8_Bit_Barrel_Shifter uut(data,amtofshift,out);
     
     initial begin
     $monitor("data = %b |  amout of shift = %b |  out = %b",data,amtofshift,out);
     end
     
     initial begin
        
          data = 8'b10000000;  amtofshift=3'b000;
     #10  data = 8'b10000000;  amtofshift=3'b001;
     #10  data = 8'b10000000;  amtofshift=3'b010;
     #10  data = 8'b10000000;  amtofshift=3'b011;
     #10  data = 8'b10000000;  amtofshift=3'b100;
     #10  data = 8'b10000000;  amtofshift=3'b101;
     #10  data = 8'b10000000;  amtofshift=3'b110;
     #10  data = 8'b10000000;  amtofshift=3'b111;  
     end
     
endmodule
