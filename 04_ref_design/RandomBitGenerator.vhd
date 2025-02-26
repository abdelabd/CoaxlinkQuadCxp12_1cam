library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RandomBitGenerator is
    port ( clk : in std_logic;
           random_bit : out std_logic);
end RandomBitGenerator;

architecture Behavioral of RandomBitGenerator is
    -- Function to compute next LFSR state (16-bit example)
    function lfsr_next(current_state : std_logic_vector(15 downto 0)) 
        return std_logic_vector is
        variable feedback : std_logic;
    begin
        -- Taps for maximal-length LFSR (16 bits: 16, 14, 13, 11)
        feedback := current_state(15) xor current_state(14) xor 
                   current_state(13) xor current_state(11);
        return current_state(14 downto 0) & feedback;
    end function;

    signal lfsr_state : std_logic_vector(15 downto 0) := x"ACE1"; -- Seed value
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Output the LSB of current state as random bit
            random_bit <= lfsr_state(0);
            -- Update LFSR state
            lfsr_state <= lfsr_next(lfsr_state);
        end if;
    end process;
end Behavioral;
