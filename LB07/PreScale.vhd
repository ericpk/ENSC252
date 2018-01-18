LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity PreScale is

	Port (
			 clk : in std_logic;
			 clkO : out std_logic
			);
			 

End PreScale;

ARCHITECTURE LogicFunction OF PreScale IS
	signal Y : unsigned(18 downto 0);
BEGIN
	clkO <= Y(18);
	PROCESS (clk)
	BEGIN
		IF (clk'EVENT AND clk = '1') THEN
			Y <= Y + 1;
		END IF;
	END PROCESS;
END LogicFunction ;
