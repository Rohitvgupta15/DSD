module master_slave_tb( );
        reg clk;
        reg s;
        reg r;
        wire Q;
        wire QBAR;
        
        master_slave uut(clk,s,r,Q,QBAR);
        
        initial begin
                $display("Time=%0t clk=%b s=%b r=%b Q=%b QBAR=%b", $time, clk, s, r, Q, QBAR);
         end
         
        initial begin
        clk=1'b0;
        forever #5 clk=~clk;
        end
        
        initial begin
        
            s=1'b0;  r=1'b0;
       #10  s=1'b0;  r=1'b1;
       #10  s=1'b1;  r=1'b0;
       #10  s=1'b1;  r=1'b1; 
       #10  s=1'b0;  r=1'b0;
       #10  s=1'b0;  r=1'b1;
       #10  s=1'b1;  r=1'b0;
       #10  s=1'b1;  r=1'b1; 
       #10 $finish;
       end
       
endmodule
