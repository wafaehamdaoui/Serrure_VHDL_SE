library ieee;
use ieee.std_logic_1164.all;

entity comparator_4b is
port(
    entree1,entree2 : in std_logic_vector(3 downto 0);
    resultat : out std_logic
);
end comparator_4b;

architecture compar_4b of comparator_4b is
begin

resultat <= '1' when entree1 = entree2 else '0' ;

end compar_4b;
