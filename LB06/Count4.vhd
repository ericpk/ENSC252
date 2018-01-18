LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity Count4 is

	Port (
			 load, enable, clock : in std_logic;
			 D : in unsigned (3 downto 0);
			 Q : buffer unsigned (3 downto 0)
			);
			 

End Count4;

ARCHITECTURE LogicFunction OF Count4 IS

BEGIN
	PROCESS (clock)
	BEGIN
		IF (clock'EVENT AND clock = '1') THEN
			IF load = '1' THEN
				Q <= D;
			ELSIF enable = '1' THEN
				Q <= Q + 1 ;
			END IF;
		END IF;
	END PROCESS;
END LogicFunction ;
