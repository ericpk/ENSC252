LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity Part2 is


	Port ( SW : in std_logic_vector( 17 downto 0 );
	LEDR : out std_logic_vector( 17 downto 0 ) );

END Part2 ;

ARCHITECTURE LogicFunction OF Part2 IS
BEGIN
	LEDR <= SW;
END LogicFunction ;