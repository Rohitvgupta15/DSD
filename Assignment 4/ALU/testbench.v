module tb( );
        reg [3:0] a;
        reg [3:0] b;
        reg [2:0] opcode;
        wire [7:0] result;
        
        ALU uut(a,b,opcode,result);
        
        initial begin
        $monitor(" a = %b | b = %b | opcode = %b | result = %b " ,a,b,opcode,result);
        end
        
        initial begin
         a= 4'b0001; b= 4'b0011;
             opcode = 3'b000;
         #10 opcode = 3'b001;
         #10 opcode = 3'b010;
         #10 opcode = 3'b011;
         #10 opcode = 3'b100;
         #10 opcode = 3'b101;
         #10 opcode = 3'b110;
         #10 opcode = 3'b111;         
         #10  a= 4'b1001; b= 4'b0101;
                  opcode = 3'b000;
              #10 opcode = 3'b001;
              #10 opcode = 3'b010;
              #10 opcode = 3'b011;
              #10 opcode = 3'b100;
              #10 opcode = 3'b101;
              #10 opcode = 3'b110;
              #10 opcode = 3'b111; 
       end
    
    endmodule
