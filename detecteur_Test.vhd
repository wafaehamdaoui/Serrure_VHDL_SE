library ieee;
use ieee.std_logic_1164.all;

entity detecteur_Test is

end detecteur_Test ;


architecture arc_detecteur_Test of detecteur_Test is
 
COMPONENT detecteur
port(
     data_in : in std_logic_vector(15 downto 0);
     data_out : out std_logic
);
END COMPONENT;
 
--Inputs
signal a : std_logic_vector(15 downto 0) := (others => '0');
 
--Outputs
signal b : std_logic;
 
BEGIN
 
inst: detecteur PORT MAP (data_in => a,data_out => b);
 

proc: process
begin

wait for 100 ns;
 
a <= "0010000000000000";
 
wait for 100 ns;
 
a <= "0000000000000001";
 
wait for 100 ns;
 
a <= "0000000000000010";
 
wait for 100 ns;
 
a <= "0000000000000100";
 
wait for 100 ns;
 
a <= "0000000000010000";

wait for 100 ns;
 
a <= "0000000000100000";
 
wait for 100 ns;
 
a <= "0000000001000000";
 
wait for 100 ns;
 
a <= "0000000100000000";
 
wait for 100 ns;
 
a <= "0000001000000000";
 
wait for 100 ns;
 
a <= "0000010000000000";
 
wait for 100 ns;
 
a <= "0000000010000000";
 
wait for 100 ns;
 
a <= "0000100000000100";
 
wait for 100 ns;
 
a <= "1000000000000100";
 
wait for 100 ns;
 
a <= "0100000000000100";
 
wait for 100 ns;
 
a <= "0010000000000100";


wait;
end process;
 
end arc_detecteur_Test;