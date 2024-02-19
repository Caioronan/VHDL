library IEEE;
use IEEE.std_logic_1164.all;

entity ula1b_tb is
end ula1b_tb;

architecture testula1b of ula1b_tb is

component ula32
port(
A, B, C : in std_logic_vector (31 downto 0);
sel : in std_logic;
code : in std_logic_vector (2 downto 0);
Saida, CarryOut, estouro : out std_logic_vector (31 downto 0);
overflow : out std_logic;
zero : out std_logic);

end component;

signal A : std_logic_vector (31 downto 0);
signal B : std_logic_vector (31 downto 0);
signal C : std_logic_vector (31 downto 0);
signal sel : std_logic;
signal code :  std_logic_vector (2 downto 0);
signal Saida : std_logic_vector (31 downto 0);
signal CarryOut : std_logic_vector (31 downto 0);
signal estouro : std_logic_vector (31 downto 0);
signal overflow : std_logic;
signal zero : std_logic;


begin

uut : ula32 port map(
A => A,
B => B,
C => C,
sel => sel,
code => code,
Saida => Saida,
CarryOut => CarryOut,
overflow => overflow,
estouro => estouro,
zero => zero);

tb : process

begin

A <= "00000000000000000000000000000011";
B <= "00000000000000000000000000000001";
C <= "00000000000000000000000000000000";
code <= "010";
sel <= '0';
wait for 20 ns;

wait;

end process;

end testula1b;
