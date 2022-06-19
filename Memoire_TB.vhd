Library ieee;
use ieee.std_logic_1164.all;

entity memoire_Tb is

end memoire_Tb ;

architecture arc_memoire_tb of memoire_tb is 

signal da0,da1,da2,da3 : std_logic_vector(3 downto 0);
signal w,de0,de1,de2,de3 : std_logic;
signal clock,clear : std_logic;
signal s : std_logic_vector( 15 downto 0);

component memoire 
port(
    Data_s0 : in std_logic_vector(3 downto 0) ;
    Detect0 : in std_logic ;
    Data_s1 : in std_logic_vector(3 downto 0) ;
    Detect1 : in std_logic ;
    Data_s2 : in std_logic_vector(3 downto 0) ;
    Detect2 : in std_logic ;
    Data_s3 : in std_logic_vector(3 downto 0) ;
    Detect3 : in std_logic ;
    w : in std_logic ;
    clock : in std_logic ;
    clear : in std_logic ;
    Code_sig : out std_logic_vector( 15 downto 0)
);
end component ;
begin 

inst0 : memoire port map (da0,de0,da1,de1,da2,de2,da3,de3,w,clock,clear,s);

process 
begin
da0 <= "0001" ;
da1 <= "0010" ;
da2 <= "0011" ;
da3 <= "0100" ;
wait for 20 ns ;
da0 <= "0101" ;
da1 <= "0110" ;
da2 <= "0111" ;
da3 <= "1000" ;
wait for 20 ns ;
da0 <= "1001" ;
da1 <= "1010" ;
da2 <= "1011" ;
da3 <= "1100" ;
wait for 20 ns ;
da0 <= "1101" ;
da1 <= "1110" ;
da2 <= "1111" ;
da3 <= "0000" ;
wait ;
end process;

process 
begin
de0 <= '0' ;
de1 <= '0' ;
de2 <= '0' ;
de3 <= '0' ;
wait for 15 ns ;
de0 <= '1' ;
de1 <= '1' ;
de2 <= '1' ;
de3 <= '1' ;
wait for 10 ns ;
de0 <= '0' ;
de1 <= '0' ;
de2 <= '0' ;
de3 <= '0' ;
wait for 20 ns ;
de0 <= '1' ;
de1 <= '1' ;
de2 <= '1' ;
de3 <= '1' ;
wait for 10 ns ;
de0 <= '0' ;
de1 <= '0' ;
de2 <= '0' ;
de3 <= '0' ;
wait ;
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

process 
begin
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait for 10 ns ;
w <= '1' ;
wait for 10 ns ;
w <= '0' ;
wait ;
end process;

end arc_memoire_tb ;