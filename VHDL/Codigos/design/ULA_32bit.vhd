library ieee;
use ieee.std_logic_1164.all;

entity ula32 is
port(
A, B, C : in std_logic_vector (31 downto 0);
sel : in std_logic;
code : in std_logic_vector (2 downto 0);
Saida, CarryOut, estouro : out std_logic_vector (31 downto 0);
overflow : out std_logic;
zero : out std_logic);


end ula32;

architecture ula32_arch of ula32 is 
component ula1b is
port(A, B, C, sel : in std_logic;
code : in std_logic_vector (2 downto 0);
Saida, CarryOut, overflow : out std_logic);
end component;



begin

as1 : ula1b
port map(A => A(0), B => B(0), C => C(0),sel => sel,code => code, Saida => Saida(0), CarryOut => CarryOut(0), overflow => estouro(0));

test: for i in 1 to 31 generate
as2 : ula1b
port map(A => A(i), B => B(i), C => CarryOut(i-1),code => code, sel => sel, Saida => Saida(i), CarryOut => CarryOut(i), overflow => estouro(i));
end generate;

zero  <= 
Saida(0) or Saida(6) or Saida(12) or Saida(17) or Saida(22) or Saida(27) or Saida(1) or Saida(7) or Saida(13) or Saida(18) or Saida(23) or Saida(28) or Saida(2) or Saida(8) or Saida(14) or Saida(19) or Saida(24) or Saida(29) or Saida(3) or Saida(9) or Saida(15) or Saida(20) or Saida(25) or Saida(30) or Saida(4) or Saida(10) or Saida(16) or Saida(21) or Saida(26) or Saida(31) or Saida(5) or Saida(11) ;



overflow <= estouro(31);

end ula32_arch;
