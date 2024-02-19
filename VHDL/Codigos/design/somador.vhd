library ieee;
use ieee.std_logic_1164.all;

entity somador1b is
port(a, b, c, sub : in std_logic; soma, carry : out std_logic);
end somador1b;

architecture somador1b_arch of somador1b is
component meio_somador is
port(a, b, sub : in std_logic; soma, carry : out std_logic);
end component;

signal S_primeira_soma : std_logic;
signal S_primeiro_carry : std_logic;
signal S_segundo_carry : std_logic;

begin

somador1 : meio_somador
port map(a => a,
b => b,
sub => sub,
soma => S_primeira_soma,
carry => S_primeiro_carry);

somador2 : meio_somador
port map(a => S_primeira_soma,
b => c,
sub => sub,
soma => soma,
carry => S_segundo_carry);

carry <= S_primeiro_carry or S_segundo_carry;

end somador1b_arch;
