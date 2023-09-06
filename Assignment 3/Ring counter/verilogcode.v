module ring_counter(
    input clk,
    input rst,
    output reg [3:0] q
    ); 
   //reg [3:0]q;
     always @(posedge clk)
     begin
          if(rst==1)
             
              q <= 4'b0001;
             
           else
               begin
                   q[0]<=q[3];
                   q[1]<=q[0];
                   q[2]<=q[1];
                   q[3]<=q[2];
               end
    end
endmodule
