library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_16b_Test is

end comparator_16b_Test;

architecture arc_comparator_16bT of comparator_16b_Test is

component comparator_16b 
port(
    entree1,entree2 : in std_logic_vector(15 downto 0);
    resultat : out std_logic
);
end component;

signal data1 ,data2 :std_logic_vector (15 downto 0);
signal S :std_logic;
begin
Comp :comparator_16b port map (data1 , data2 ,S);
process
 
begin

--for i in 0 to 15 loop
--data1 <= std_logic_vector(to_unsigned(i,16));
--data2 <= std_logic_vector(to_unsigned(i,16));
data1 <= "0001001000110100";
data2 <= "0001001000110100";
wait for 20 ns;
data1 <= "0001001000110100";
data2 <= "0001001000110101";
wait for 20 ns;
data1 <= "0001001000110100";
data2 <= "0001001000110111";
wait for 20 ns;
data1 <= "0001001000110111";
data2 <= "0001001000110111";
wait ;
--end loop ;

end process;
end arc_comparator_16bT;
