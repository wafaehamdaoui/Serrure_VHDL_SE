library ieee;
use ieee.std_logic_1164.all;

entity codeur_Test is

end codeur_Test ;


architecture arc_codeur_Test of codeur_Test is
 
COMPONENT codeur
port(
     data_in : in std_logic_vector(15 downto 0);
     data_out : out std_logic_vector(3 downto 0)
);
END COMPONENT;
 
--Inputs
signal a : std_logic_vector(15 downto 0) := (others => '0');
 
--Outputs
signal b : std_logic_vector(3 downto 0);
 
BEGIN
 
inst: codeur PORT MAP (data_in => a,data_out => b);
 

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
 
a <= "0000000000100000";

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
 
a <= "0000100000000000";
 
wait for 100 ns;
 
a <= "1000000000000000";
 
wait for 100 ns;
 
a <= "0100000000000000";
 
wait for 100 ns;
 
a <= "0001000000000000";


wait;
end process;
 
end arc_codeur_Test;
