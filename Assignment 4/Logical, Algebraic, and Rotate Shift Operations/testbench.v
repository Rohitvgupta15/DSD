module TB(
);
    reg [7:0] data;
    reg [2:0] opcode;
    wire [7:0] out;
    
    shift_operator uut(data,opcode,out);
    
    initial begin
    $monitor(" data = %b | opcode = %b | out = %b " ,data,opcode,out);
    end
    
    initial begin
     data = 8'b10000000;
         opcode = 3'b000;
     #10 opcode = 3'b001;
     #10 opcode = 3'b010;
     #10 opcode = 3'b011;
     #10 opcode = 3'b100;
     #10 opcode = 3'b101;
     
     #10 data = 8'b10010001;
              opcode = 3'b000;
          #10 opcode = 3'b001;
          #10 opcode = 3'b010;
          #10 opcode = 3'b011;
          #10 opcode = 3'b100;
          #10 opcode = 3'b101;
     
   end

endmodule
