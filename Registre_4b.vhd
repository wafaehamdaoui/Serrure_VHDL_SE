library ieee;
use ieee.std_logic_1164.all;

entity register_4b is
port(
   Entre : in std_logic_vector(3 downto 0);
   W : in std_logic ;
   R : in std_logic;
   clock : in std_logic ;
   clear : in std_logic;
   Q : out std_logic_vector(3 downto 0)
); 
end register_4b;

architecture arc_register_4b of register_4b is

signal data_out : std_logic_vector(3 downto 0);

component basculeD 
port(
     D : in std_logic ;
     reset : in std_logic ;
     enable : in std_logic ;
     clock : in std_logic ;
     Q : out std_logic
);
end component;

begin 

inst1 : basculeD port map(Entre(3),clear,W,clock,data_out(3));
inst2 : basculeD port map(Entre(2),clear,W,clock,data_out(2));
inst3 : basculeD port map(Entre(1),clear,W,clock,data_out(1));
inst4 : basculeD port map(Entre(0),clear,W,clock,data_out(0));

Q(3) <= data_out(3) and R ;
Q(2) <= data_out(2) and R ;
Q(1) <= data_out(1) and R ;
Q(0) <= data_out(0) and R ;

end arc_register_4b;