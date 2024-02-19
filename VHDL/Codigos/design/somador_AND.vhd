library ieee;
use ieee.std_logic_1164.all;

entity somadorAnd is
port(a, b, c, sub : in std_logic; s1, Cout, s2 : out std_logic);
end somadorAnd;

architecture somadorAnd_arch of somadorAnd is
component somador1b is
port(a, b, c, sub : in std_logic; soma, carry : out std_logic);
end component;

begin

somador1 : somador1b
port map(a => a, b => b, c => c,sub => sub, soma => s1, carry => Cout);

s2 <= a and b;

end somadorAnd_arch;
