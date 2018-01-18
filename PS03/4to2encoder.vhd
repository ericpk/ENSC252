LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity 4to2encoder is

	Port ( input : in std_logic_vector (3 downto 0); 
	output : out std_logic_vector(1 downto 0));

End Over60;

ARCHITECTURE logic OF 4to2encoder IS

BEGIN

	with input select
		output <= "00" when "0001",
				  "01" when "0010",
				  "10" when "0100",		
				  "11" when "1000";
END logic ;
