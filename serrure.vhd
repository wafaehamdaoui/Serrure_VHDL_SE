Library ieee;
use ieee.std_logic_1164.all;

entity serrure is
port(
    chiffre1 : in std_logic_vector(15 downto 0);
    chiffre2 : in std_logic_vector(15 downto 0);
    chiffre3 : in std_logic_vector(15 downto 0);
    chiffre4 : in std_logic_vector(15 downto 0);
    w : in std_logic ;
    clock : in std_logic ;
    clear : in std_logic ;
    sortie : out std_logic_vector(15 downto 0);
    Sb1,Sb2,Sb3,Sb4 : out std_logic_vector(3 downto 0);
    Sb5,Sb6,Sb7,Sb8 : out std_logic;
    S : out std_logic 
);
end serrure ;

architecture arc_serrure of serrure is

signal ch1,ch2,ch3,ch4 : std_logic_vector(15 downto 0);
signal s1,s2,s3,s4 : std_logic;
signal s10,s20,s30,s40 : std_logic_vector(3 downto 0);
signal s100 : std_logic_vector(15 downto 0);
signal s1000 : std_logic ;

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

COMPONENT codeur
port(
     data_in : in std_logic_vector(15 downto 0);
     data_out : out std_logic_vector(3 downto 0)
);
END COMPONENT;

component comparator_4b 
port(
entree1 ,entree2 : in std_logic_vector (3 downto 0);
resultat : out std_logic 
);
end component ;

COMPONENT detecteur
port(
     data_in : in std_logic_vector(15 downto 0);
     data_out : out std_logic
);
END COMPONENT;
component comparator_16b 
port(
    entree1,entree2 : in std_logic_vector(15 downto 0);
    resultat : out std_logic
);
end component;
begin

ch1 <= chiffre1;
ch2 <= chiffre2;
ch3 <= chiffre3;
ch4 <= chiffre4;

detect1 : detecteur port map(chiffre1,s1);
detect2 : detecteur port map(chiffre2,s2);
detect3 : detecteur port map(chiffre3,s3);
detect4 : detecteur port map(chiffre4,s4);

cod1 : codeur port map(ch1,s10);
cod2 : codeur port map(ch2,s20);
cod3 : codeur port map(ch3,s30);
cod4 : codeur port map(ch4,s40);
Sb1 <= s10; 
Sb2 <= s20;
Sb3 <= s30;
Sb4 <= s40;
Sb5 <= s1;
Sb6 <= s2;
Sb7 <= s3;
Sb8 <= s4;
memo : memoire port map(s10,s1,s20,s2,s30,s3,s40,s4,w,clock,clear,s100);
sortie <= s100;
comp : comparator_16b port map(s100,"0001001000110100",S);


end arc_serrure ;