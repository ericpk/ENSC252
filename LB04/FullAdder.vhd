LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity FullAdder is

Port ( 		
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Carry : OUT STD_LOGIC);

END FullAdder ;

ARCHITECTURE LogicFunction OF FullAdder IS
	
BEGIN
	
	Sum <= A XOR B XOR C;
	Carry <= (A AND B) OR (C AND (A XOR B));
	
	
END LogicFunction ;