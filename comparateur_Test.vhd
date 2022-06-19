library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparateur_Test is

end comparateur_Test;

architecture arc_comp4 of comparateur_Test is

component comparator_4b 
port(
entree1 ,entree2 : in std_logic_vector (3 downto 0);
resultat : out std_logic 
);
end component ;

signal  a ,b :std_logic_vector (3 downto 0);
signal s :std_logic;

begin
Comp : comparator_4b  port map (entree1=>a, entree2=>b,resultat=>s);

process
begin

for i in 0 to 3 loop
a <= std_logic_vector(to_unsigned(i,4));
b <= std_logic_vector(to_unsigned(i,4));
wait for 20 ns;
end loop ;

for i in 0 to 3 loop
a <= std_logic_vector(to_unsigned(i,4));
b <= std_logic_vector(to_unsigned((i+2),4));
wait for 20 ns;
end loop ;

end process;

end arc_comp4;
