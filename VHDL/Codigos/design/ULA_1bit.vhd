library ieee;
use ieee.std_logic_1164.all;

entity ula1b is
port(A, B, C, sel : in std_logic;
code : in std_logic_vector (2 downto 0);
Saida, CarryOut, overflow : out std_logic);
end ula1b;

architecture ula1b_arch of ula1b is

component somadorAnd is
port(a, b, c, sub : in std_logic; s1, Cout, s2 : out std_logic);
end component;

component mux2x1 is
port (e1, e2, sel : in std_logic; s: out std_logic);
end component;

component  over is
port (a , b, Saida, opcode : in std_logic; overflow: out std_logic);
end component;


component mux5x1 is
port (and0, or1, soma2, slt4, sel: in std_logic; 
code : in std_logic_vector (2 downto 0);
result: out std_logic);
end component;


signal S_soma : std_logic;
signal S_and : std_logic;
signal and0 : std_logic;
signal or1 : std_logic;
signal soma2 : std_logic;
signal slt4 : std_logic;
signal sub : std_logic;


begin
sub <= code(2);

teste : over
port map(a => a, b => b, Saida => Saida, opcode => sub, overflow => overflow);

saand : somadorAnd
port map(a => A, b => B, c => C,sub => sub, s1 => S_soma, Cout => CarryOut, s2 => S_and);

mux1 : mux2x1
port map(e1 => S_soma, e2 => S_and, sel => sel, s => soma2);

and0 <= a and b;
or1 <= a or b;
slt4 <= '1' when a = '1' and b = '0' else '0';

mux5 : mux5x1
port map(and0 => and0, or1 => or1, soma2 => soma2, slt4 => slt4, sel => sel, code => code, result => Saida);



end ula1b_arch;
