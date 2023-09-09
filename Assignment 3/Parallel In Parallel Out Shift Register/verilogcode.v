module pipo(
    input clk,
    input rst,
    input [3:0] d,
    output reg [3:0] q
    );
    always @ (posedge clk,d)
    begin 
    if(rst)
    q<=0000;
    else
    q<=d;
    
    end
endmodule
