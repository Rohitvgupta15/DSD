module tb(

    );
        reg a;
        reg b;
        wire  a_greater_b;
        wire  a_equal_b;
        wire  b_greater_a;
        
      _1_bit_comparator_using_4x1_mux uut(a,b,a_greater_b,a_equal_b,b_greater_a);
        
    initial begin
      $monitor(" a = %b | b = %b | a_greater_b = %b | a_equal_b = %b | b_greater_a = %b",a,b,a_greater_b,a_equal_b,b_greater_a);
      end
      
      initial begin
          a = 0; b = 0;
      #10 a = 0; b = 1;  
      #10 a = 1; b = 0; 
      #10 a = 1; b = 1; 
      end
endmodule
