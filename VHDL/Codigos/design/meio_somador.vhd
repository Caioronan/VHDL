library ieee;
use ieee.std_logic_1164.all;

entity meio_somador is
port( a, b, sub : in std_logic; soma, carry : out std_logic );
end meio_somador;

architecture meio_somador_arch of meio_somador is
begin

soma <= (a and not b) or (not a and b);
carry <= a and b when sub = '0' else not a and b;

end meio_somador_arch;
