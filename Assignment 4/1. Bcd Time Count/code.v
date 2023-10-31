module bcd_timecount(
    input clk,rst,
    output [6:0] second_bcd,
    output [6:0] minute_bcd,
    output [6:0] hour_bcd
    );
    
    reg [6:0] second;
    reg [6:0] minute;
    reg [6:0] hour;
    
    always @ (posedge clk or posedge rst)
    begin
         if(rst)
            begin
                 second <= 7'd0;
                 minute <= 7'd0;
                 hour   <= 7'd0;
            end
         else 
           begin
             second = second + 1'd1;   
               if(second == 7'd59)
                  begin
                       minute = minute + 1'd1;
                       second = 7'd0;
                          if(minute == 7'd59)
                             begin
                                 hour = hour + 1'd1;
                                 minute = 7'd0;
                                    if(hour == 7'd11)
                                       begin
                                            hour = 7'd0;
                                       end
                             end
                  end                                          
            end
      end 
      
      assign  second_bcd =second;
      assign  minute_bcd = minute;
      assign  hour_bcd   = hour;
endmodule
