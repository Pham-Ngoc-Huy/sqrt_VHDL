module tb_sqrt_example;
    reg [31:0] input_value;  // Input test value
    wire [15:0] output_value; // Output of square root

    // Instantiate the module
    sqrt_example uut (
        .input_value(input_value),
        .output_value(output_value)
    );

    initial begin
        // Monitor output
        $monitor("Time: %0t | Input: %d | Output (sqrt): %d", $time, input_value, output_value);

        // Test Case 1: Square root of 1
        input_value = 1;
        #10;
        if (output_value != 1)
            $display("Test Case 1 failed!");

        // Test Case 2: Square root of 4
        input_value = 4;
        #10;
        if (output_value != 2)
            $display("Test Case 2 failed!");

        // Test Case 3: Square root of 10
        input_value = 10;
        #10;
        if (output_value != 3) // Closest integer square root of 10
            $display("Test Case 3 failed!");

        // Test Case 4: Square root of 256
        input_value = 256;
        #10;
        if (output_value != 16)
            $display("Test Case 4 failed!");

        // End simulation
        $finish;
    end
endmodule
