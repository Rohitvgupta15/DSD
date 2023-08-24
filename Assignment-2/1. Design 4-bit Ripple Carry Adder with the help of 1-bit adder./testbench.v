module ripple_carry_tb;

    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] s;
    wire cout;

  initial begin

$monitor("a = %b | b = %b | cin = %b | s = %b | cout = %b",a,b,cin,s,cout);

  end  
    
    ripple_carry uut(a,b,cin,s,cout);
    
    initial begin
    
    #100 a = 4'b0000 ; b = 4'b0000 ; cin = 0;
    #100 a = 4'b0001 ; b = 4'b0001 ; cin = 0;
    #100 a = 4'b0011 ; b = 4'b0011 ; cin = 0;
    #100 a = 4'b0111 ; b = 4'b0111 ; cin = 0;
    #100 a = 4'b1111 ; b = 4'b1111 ; cin = 0;
    #100 a = 4'b0000 ; b = 4'b0000 ; cin = 1;
    #100 a = 4'b0001 ; b = 4'b0001 ; cin = 1;
    #100 a = 4'b0011 ; b = 4'b0011 ; cin = 1;
    #100 a = 4'b0111 ; b = 4'b0111 ; cin = 1;
    #100 a = 4'b1111 ; b = 4'b1111 ; cin = 1;
    #100 $finish;
    
    end
initial begin                                                                                            
    $dumpfile("dump.vcd");                                                                                 
    $dumpvars(0);                                                                                          
  end 
endmodule
