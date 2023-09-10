module _8bit_adder_sub(
    input [7:0] a,
    input [7:0] b,
    input mode,
    output reg [7:0] result,
    output reg v
    );
    
    reg [7:0]com;
    
    always @ (a,b,mode)
     begin
       if(mode == 1)
        begin
          com = ~b + 1'b1;
          result = a + com;
            v = (a[7]&com[7]&~result[7]) | (~a[7]&~com[7]&result[7]); 
        end
       else if(mode == 0)
        begin
           result = a + b;
            v = (a[7]&b[7]&~result[7]) | (~a[7]&~b[7]&result[7]); 
        end
      end   
       
           
endmodule
