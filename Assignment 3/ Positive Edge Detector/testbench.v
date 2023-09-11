module pos_edge_det_tb;
	reg sig;                                 
	reg clk;    
	wire pe;             
	pos_edge_det uut (sig,clk, pe);

	always #5 clk = ~clk;           
	initial begin
		clk <= 0;
		sig <= 0;
		#15 sig <= 1;
		#20 sig <= 0;
		#15 sig <= 1;
		#10 sig <= 0;
		#20 $finish;
	end	
  
  	initial begin
      	$dumpvars;
      $dumpfile("dump.vcd");
    end
endmodule
