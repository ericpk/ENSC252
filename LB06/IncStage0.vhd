LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity IncStage0 is

	Port ( X : in std_logic;
	S, Cout : out std_logic);

End IncStage0;

ARCHITECTURE LogicFunction OF IncStage0 IS
BEGIN
	S <= NOT X after 1 ns;
	Cout <= X;

END LogicFunction ;
