library IEEE ;
use IEEE . STD_LOGIC_1164 .ALL ;
entity bin_to_gray is
port (
B: in std_logic_vector (3 downto 0) ; -- 4 -bit binary input
G: out std_logic_vector (3 downto 0) -- 4 -bit Gray code output
) ;
end entity bin_to_gray ;
architecture Dataflow of bin_to_gray is
begin
G (3) <= B (3) ; -- MSB stays the same
G (2) <= B (3) xor B (2) ;
G (1) <= B (2) xor B (1) ;
G (0) <= B (1) xor B (0) ;
end architecture Dataflow ;