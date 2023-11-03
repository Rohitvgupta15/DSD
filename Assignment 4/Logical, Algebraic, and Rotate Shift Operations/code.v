module shift_operator(
    input [7:0] data,
    input [2:0]opcode,
    output reg [7:0] out
    );
    
    parameter SRA = 3'b000,  // shift right arthmetic
              SLA = 3'b001,  // shift left arthmetic
              SRL = 3'b010,  // shift right logical
              SLL = 3'b011,  // shift left logical
              RL = 3'b100,  // rotate left 
              RR = 3'b101;  // rotate right
       always @ (*)
       begin
           case(opcode)
                 SRA    : out = {data[7],data[7:1]};
                 SLA    : out = {data[6:1],1'b0};
                 SRL    : out = data >> 1;
                 SLL    : out = data << 1;      
                 RL     : out = {data[6:0],data[7]};
                 RR     : out = {data[0],data[7:1]};
                default : out = data;
            endcase
        end         
endmodule
