module input_majority(
    input [4:0] a,
    output reg z
);

    reg [3:0]count; 

    always @(a) begin
        count = 3'b000;
        for (integer i = 0; i < 5; i = i + 1) begin
            if (a[i] == 1'b1)
                count = count + 1;
        end
        $display("%b",count);
        if (count >= 3'b011) 
            z = 1;
        else
            z = 0;
    end
endmodule
