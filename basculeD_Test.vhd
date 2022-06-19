library ieee;
use ieee.std_logic_1164.all;

entity basculeD_Tb is

end basculeD_Tb;

architecture arc_basculeD_Tb of basculeD_Tb is
signal entree : std_logic;
signal reset : std_logic;
signal enable : std_logic;
signal clock : std_logic;
signal sortie : std_logic ;

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

inst : basculeD port map(entree,reset,enable,clock,sortie);

process
begin
enable <= '0';
wait for 20 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait for 10 ns;
enable <= '1';
wait for 10 ns;
enable <= '0';
wait;
end process;

process
begin

clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait;
end process;


process
begin
reset <= '1';
wait for 50 ns;
reset <= '0';
wait for 50 ns;
reset <= '0';
wait;
end process;

process 
begin
entree <= '0';
wait for 50 ns;
entree <= '1';
wait for 100 ns;
entree <= '0';
wait;
end process;

end arc_basculeD_Tb;
