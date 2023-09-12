module prbs(
    input clk,
    input rst,
    output out
    );
    reg [3:0] temp;
    
    always @ (posedge clk or posedge rst)
    begin
     if(rst)
       temp =4'b1000;
      else if(clk)
      
      temp <={temp[1] ^ temp[0],temp[3],temp[2],temp[1]}; 
     end
  assign out = temp[0];  
endmodule
