library ieee;
use ieee.std_logic_1164.all;

entity basculeD is 
port(
     D : in std_logic ;
     reset : in std_logic ;
     enable : in std_logic ;
     clock : in std_logic ;
     Q : out std_logic 
);
end basculeD;

architecture arc_basculeD of basculeD is

begin

process(enable, reset)

begin
if  reset = '1' then Q <= '0';
else
  if (enable = '1' and clock'event )then Q <= D;
  end if ;
end if ;

end process;

end arc_basculeD;
