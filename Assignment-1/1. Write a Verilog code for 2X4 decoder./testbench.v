module decoder_24_tb;

reg [1:0]x;
  wire [3:0]y;
  
  decoder_24 uut(x,y);
    
  initial begin
      
      $monitor($time |"x0= %b | x1= %b | y1= %b | y2= %b | y3= %b | y4= %b ",x[0],x[1],y[1],y[2],y[3],y[4]);
    
  end
    //y = 4'b0000;
   // decoder_24 uut(x,y);
    initial begin
     //  y =4'b0000;
    
    #10 x[0]=0  ;x[1]=0;
    #10 x[0]=0  ;x[1]=1;
    #10 x[0]=1  ;x[1]=0;
    #10 x[0]=1  ;x[1]=1;
    
    end 
    
    initial begin 
    
      $dumpfile("dump.vcd");
      $dumpvars(0);
    
    end

endmodule

