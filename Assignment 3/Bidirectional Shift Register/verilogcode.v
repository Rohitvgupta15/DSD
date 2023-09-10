module bi_shift_reg(clk,rst,en,dir,d,q,out );
  parameter n = 4;
      input clk;
      input rst;
      input en;
      input dir;
      input d;
      output reg [n-1:0]q;
      output reg out;    
    
    always @ (posedge clk,en)
    begin
     
         if(rst)
            q = 4'b0000;
          else if (clk)
             begin
                if(en)
                begin
                  case(dir)
                    0  : begin  q = {q[n-2:0],d}; out <= q[0]; end
                    1  : begin  q = {d,q[n-1:1]}; out <= q[0]; end
                  endcase
                end
                else
                q <= q;
             end
             
     end              
endmodule
