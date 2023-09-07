module _4Bit_Synchronous_BCD_Counter(
    input clk,
    input rst,
    output reg [3:0] count
    );
    reg [3:0]t;
    always @ (posedge clk)
    begin
      if (rst) 
      begin
        t <= 4'b0000;
        count <= 4'b0000;
      end
      else 
      begin
        t <= t + 1;
        if (t == 4'b1001) 
        begin
          t <= 4'b0000;
        end
        count <= t;
      end
    end
        
endmodule
