module Binary_to_One_Hot_Encoder_tb;
    reg [3:0] a;
    wire [15:0] b;
    
    Binary_too_One_Hot_encoder uut(a,b);
    
    
    initial begin
    
    #00 a=4'b0000;
    #50 a=4'b0001;
    #50 a=4'b0010;
    #50 a=4'b0011;
    #50 a=4'b0100;
    #50 a=4'b0101;
    #50 a=4'b0110;
    #50 a=4'b0111;
    #50 a=4'b1000;
    #50 a=4'b1001;
    #50 a=4'b1010;
    #50 a=4'b1011;
    #50 a=4'b1100;
    #50 a=4'b1101;
    #50 a=4'b1110;
    #50 a=4'b1111;    
    
    
    end
     initial begin
       
       $dumpfile("dump.vcd");
       $dumpvars(0);
       
     end
endmodule
