module _4bit_multiplier( a,b,product);

  input [3:0]a;
  input [3:0]b;
  output [7:0] product;
  
  wire [3:0]m0;
  wire [4:0]m1;
  wire [5:0]m2;
  wire [6:0]m3;

  wire [7:0]s0,s1,s2,s3;
  
  assign m0 = a[3:0] & { 4{b[0] } };
  assign m1 = a[3:0] & { 4{b[1] } };
  assign m2 = a[3:0] & { 4{b[2] } };
  assign m3 = a[3:0] & { 4{b[3] } };
  
  assign s0 = m0;
  assign s1 = m1<<1;
  assign s2 = m2<<2;
  assign s3 = m3<<3;
  
  assign product = s0 + s1 + s2 + s3;

endmodule
