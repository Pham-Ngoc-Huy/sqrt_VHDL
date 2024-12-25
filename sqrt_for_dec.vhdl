library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity tb_sqrt_example is
end tb_sqrt_example;

architecture sim of tb_sqrt_example is
    signal input_value  : real := 0.0;
    signal output_value : real;
begin
    uut: entity work.sqrt_example
        port map (
            input_value  => input_value,
            output_value => output_value
        );

    process
    begin
        -- Test 1: Input = 1.0 (decimal) -- Đổi input để lấy giá trị sqrt
        input_value <= 1.0;
        wait for 10 ns;
        assert output_value = 1.0
        report "Test 1 failed: output_value /= 1.0 (sqrt of 1.0)" severity error;

        -- Stop simulation
        wait;
    end process;
end sim;
