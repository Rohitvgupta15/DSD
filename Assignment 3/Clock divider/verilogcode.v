module clock_divider(
    input rst,
    input   clk,
    
    output reg d_by_2,
    output reg d_by_4,
    output reg d_by_8,
    output reg d_by_16
    );
     reg  [3:0]count;
    always @ (posedge clk)
    
    begin 
    if(rst==0)
    count=4'b0000;
    
    else
  
   // clk= ~clk;
    count = count + 1;
    
    d_by_2  = count[0];
    d_by_4  = count[1];
    d_by_8  = count[2];
    d_by_16 = count[3];
    
        
end
    
endmodule
