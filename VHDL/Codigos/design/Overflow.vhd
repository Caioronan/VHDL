library ieee;
use ieee.std_logic_1164.all;

entity over is
  port (
    a, b, Saida, opcode : in std_logic;
    overflow : out std_logic
  );
end over;

architecture arch_over of over is
begin
  overflow <= '1' when
    (a = '1' and b = '1' and Saida = '1' and opcode = '0') or
    (a = '0' and b = '0' and Saida = '1' and opcode = '0') or
    (a = '1' and b = '0' and Saida = '1' and opcode = '0') or
    (a = '0' and b = '1' and Saida = '1' and opcode = '0') or
    
    (a = '0' and b = '0' and Saida = '1' and opcode = '1') or
    (a = '1' and b = '1' and Saida = '1' and opcode = '1') or
    (a = '1' and b = '0' and Saida = '1' and opcode = '1') or
    (a = '0' and b = '1' and Saida = '1' and opcode = '1') 
    else '0';

end arch_over;
