module Binary_too_One_Hot_encoder(
    input [3:0] a,
    output [15:0] b
    );
//          wire [19:0]c;
//          assign c = 1<<a;
//          assign b=c;
      assign b = 1'b1 <<a;
    

endmodule
