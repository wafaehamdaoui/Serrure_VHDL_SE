library ieee ;
use ieee.std_logic_1164.all ;

entity comparator_16b is
port(
    entree1,entree2 : in std_logic_vector(15 downto 0);
    resultat : out std_logic
);
end comparator_16b;

architecture compar_16b of comparator_16b is

signal  a ,b ,c ,d ,e ,f ,g ,h : std_logic_vector (3 downto 0);
signal s1 ,s2 ,s3 ,s4 : std_logic;

component comparator_4b 
port(
entree1 ,entree2 : in std_logic_vector (3 downto 0);
resultat : out std_logic
);
end component ;

begin

a <= entree1(3) & entree1(2) & entree1(1) & entree1(0);
b <= entree2(3) & entree2(2) & entree2(1) & entree2(0);
c <= entree1(7) & entree1(6) & entree1(5) & entree1(4);
d <= entree2(7) & entree2(6) & entree2(5) & entree2(4);
e <= entree1(11) & entree1(10) & entree1(9) & entree1(8);
f <= entree2(11) & entree2(10) & entree2(9) & entree2(8);
g <= entree1(15) & entree1(14) & entree1(13) & entree1(12);
h <= entree2(15) & entree2(14) & entree2(13) & entree2(12);

inst1 : comparator_4b port map(a,b,s1);
inst2 : comparator_4b port map(c,d,s2);
inst3 : comparator_4b port map(e,f,s3);
inst4 : comparator_4b port map(g,h,s4);

resultat <= s1 and s2 and s3 and s4 ;

end compar_16b;
