module input_majority_tb;

    reg [4:0] a;    
    wire z;         

    // Instantiate the module under test
    input_majority uut (
        .a(a),
        .z(z)
    );

   
    initial begin
        
              a = 5'b00000;
        #10   a = 5'b00001;
        #10   a = 5'b00111;
        #10   a = 5'b01111;
        #10   a = 5'b11111;
        #10   a = 5'b00011;
        #10
               $finish; // Finish simulation
    end

endmodule
