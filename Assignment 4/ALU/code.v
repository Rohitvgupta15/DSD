module ALU(
    input [3:0] a,
    input [3:0] b,
    input [2:0] opcode,
    output reg [7:0] result
    );
    
  parameter add = 3'b000,
            sub = 3'b001,
            mul = 3'b010,
            And = 3'b011,
            Or  = 3'b100,
            Not = 3'b101,
            Xor = 3'b110,
            Xnor = 3'b110;
            
    always @ (*)
    begin
        case(opcode)
              add : result = a + b;
              sub : result = a - b;
              mul : result = a * b;
              And : result = a & b;
              Or  : result = a | b;
              Not : result = ~a;
              Xor : result = a ^ b;
             Xnor : result =~ (a ^ b);
          default :  result = 0;
        endcase
    end                     
    
endmodule
