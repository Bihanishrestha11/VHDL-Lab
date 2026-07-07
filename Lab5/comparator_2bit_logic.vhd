library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR_2BIT_LOGIC is
    port (
        A  : in  std_logic_vector(1 downto 0);
        B  : in  std_logic_vector(1 downto 0);
        EQ : out std_logic; -- A = B
        GT : out std_logic; -- A > B
        LT : out std_logic  -- A < B
    );
end entity COMPARATOR_2BIT_LOGIC;

architecture Behavioral of COMPARATOR_2BIT_LOGIC is
begin
    -- Equality: both bits must match
    EQ <= (not (A(1) xor B(1))) and (not (A(0) xor B(0)));

    -- Greater than: check MSB first, then LSB
    GT <= (A(1) and (not B(1))) or
          ((not (A(1) xor B(1))) and A(0) and (not B(0)));

    -- Less than: check MSB first, then LSB
    LT <= ((not A(1)) and B(1)) or
          ((not (A(1) xor B(1))) and (not A(0)) and B(0));
end architecture Behavioral;
