library ieee;
use ieee.std_logic_1164.all;

entity mux5x1 is
port (and0, or1, soma2, slt4, sel: in std_logic; 
code : in std_logic_vector (2 downto 0);
result: out std_logic);
end mux5x1;

architecture arch_mux5x1 of mux5x1 is

component decoder is
port (opcode : in std_logic_vector (2 downto 0); s1,s2,s3: out std_logic);
end component;

Signal s1 : std_logic;
Signal s2 : std_logic;
Signal s3 : std_logic;

begin
decodifica : decoder
port map(opcode => code, s1 => s1,s2 => s2,s3 => s3);


result <= 
and0 when s1 = '0' and s2 = '0' and s3 = '0' else
or1 when s1 = '0' and s2 = '0' and s3 = '1' else
slt4 when s1 = '1' and s2 = '1' and s3 = '1' else soma2;


end arch_mux5x1;
