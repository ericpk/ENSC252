LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity Alarm is

		Port (
				 Enable, clock : in std_logic;
				 Seg0, Seg1, Seg2 : out unsigned(6 downto 0)
			   );
			 
End Alarm;

ARCHITECTURE LogicFunction OF Alarm IS
	signal f0, f1 : unsigned(6 downto 0);
	signal scale : unsigned(5 downto 0);
	signal newclk : std_logic;
BEGIN
	newclk <= scale(5);
	PROCESS (clock)
	BEGIN
		IF (clock'EVENT AND clock = '1') THEN
			scale <= scale + 1;
		END IF;
	END PROCESS;
	f0 <= "1111001" when (newclk = '1') else "1111111";
	f1 <= "0011000" when (newclk = '1') else "1111111";
	
	Seg0 <= f0 when (Enable = '1') else "1111111";
	Seg1 <= f0 when (Enable = '1') else "1111111";
	Seg2 <= f1 when (Enable = '1') else "1111111";
END LogicFunction;