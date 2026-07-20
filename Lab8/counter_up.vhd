library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity COUNTER_UP is
    Port (
        CLK   : in  STD_LOGIC;
        RST   : in  STD_LOGIC;  -- Active-high synchronous reset
        COUNT : out STD_LOGIC_VECTOR(3 downto 0)
    );
end entity COUNTER_UP;

architecture Behavioral of COUNTER_UP is
    signal count_int : UNSIGNED(3 downto 0) := (others => '0');
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                count_int <= (others => '0');
            else
                count_int <= count_int + 1;
            end if;
        end if;
    end process;

    COUNT <= STD_LOGIC_VECTOR(count_int);

end architecture Behavioral;