library ieee;
use ieee.std_logic_1164.all;

entity register_4b_Tb is

end register_4b_Tb;

architecture arc_register_4b_Tb of register_4b_Tb is

signal data : std_logic_vector(3 downto 0);
signal w,r,clear,clock : std_logic;
signal s : std_logic_vector(3 downto 0);

component register_4b 
port(
   Entre : in std_logic_vector(3 downto 0);
   W : in std_logic ;
   R : in std_logic;
   clock : in std_logic ;
   clear : in std_logic;
   Q : out std_logic_vector(3 downto 0)
); 
end component;

begin 

inst : register_4b port map(data,w,r,clock,clear,s);

process

begin
data <= "1111";
wait for 5 ns;
data <= "0111";
wait for 30 ns;
data <= "1000";
wait for 20 ns;
data <= "1010";
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
w <= '0';
wait for 10 ns;
w <= '1';
wait for 20 ns;
w <= '0';
wait for 10 ns;
w <= '1';
wait for 10 ns;
w <= '0';
wait for 10 ns;
w <= '1';
wait;

end process;

process

begin
r <= '0';
wait for 20 ns;
r <= '1';
wait for 100 ns;
r <= '0';
wait;

end process;

process

begin
clear <= '0';
wait for 100 ns;
clear <= '1';
wait for 20 ns;
clear <= '0';
wait for 10 ns;
clear <= '1';
wait for 10 ns;
clear <= '0';
wait for 10 ns;
clear <= '1';
wait;

end process;

end arc_register_4b_Tb;
