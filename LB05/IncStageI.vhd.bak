LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity IncStageI is

	Port ( X, Cin : in std_logic;
	S, Cout : out std_logic);

End IncStageI;

ARCHITECTURE LogicFunction OF IncStageI IS
BEGIN
	S <= X XOR Cin after 4 ns;
	Cout <= Cin AND X after 4 ns;

END LogicFunction ;
