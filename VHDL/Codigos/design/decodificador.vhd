library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port (opcode : in std_logic_vector (2 downto 0); s1,s2,s3: out std_logic);
end decoder;

architecture arch_decoder of decoder is
begin

s1 <= opcode(0);
s2 <= opcode(1);
s3 <= opcode(2);

end arch_decoder;
