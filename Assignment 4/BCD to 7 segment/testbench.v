module tb;
reg rst;
reg [3:0] x;
wire [6:0] out;

bcd_to_7segment uut ( .rst(rst),.x(x), .out(out)  );

reg clk = 0;
always #5 clk = ~clk;
initial begin
    rst = 0;
    x = 4'b0000;
    #10 rst = 1;     
    #10 x = 4'b0000; // Test case 1: BCD input '0'
    #10 x = 4'b0101; // Test case 2: BCD input '5'
    #10 x = 4'b0010; // Test case 3: BCD input '2'
    #10 x = 4'b1000; // Test case 4: BCD input '8'
    #10 x = 4'b0011; // Test case 5: BCD input '3'
    #10 x = 4'b1001; // Test case 6: BCD input '9'
    #10 x = 4'b0110;// Test case 7: BCD input '6'
    #10 x = 4'b0111;// Test case 8: BCD input '7'
    #10 x = 4'b0100;// Test case 9: BCD input '4'
    #10 $finish;
end
always @(posedge clk) begin
    $display("rst=%b, x=%b, out=%b", rst, x, out);
end
endmodule
