module parity_genrator_tb(

    );
    reg x,y,z;
    wire result;
    
    parity_genrator uut(x,y,z,result);
    
    initial 
    begin
    
    #00  x=0 ; y=0 ; z=0;
    #100 x=0 ; y=0 ; z=1;
    #100 x=0 ; y=1 ; z=0;
    #100 x=0 ; y=1 ; z=1;
    #100 x=1 ; y=0 ; z=0;
    #100 x=1 ; y=0 ; z=1;
    #100 x=1 ; y=1 ; z=0;
    #100 x=1 ; y=1 ; z=1;
    #100 x=0 ; y=0 ; z=0;
    end 
    
    initial begin
       
       $dumpfile("dump.vcd");
       $dumpvars(0);
       
    end
endmodule
