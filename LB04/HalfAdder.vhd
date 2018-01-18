LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity HalfAdder is

Port ( 		
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Carry : OUT STD_LOGIC);

END HalfAdder ;

ARCHITECTURE LogicFunction OF HalfAdder IS
	
BEGIN
	
	Sum <= A XOR B;
	Carry <= A AND B;
	
	
END LogicFunction ;