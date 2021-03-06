LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity Over60 is

	Port ( A : in unsigned (5 downto 0); 
	X : out std_logic);

End Over60;

ARCHITECTURE LogicFunction OF Over60 IS

	SIGNAL C : unsigned(3 downto 1);

BEGIN

	C(3) <= '1' AND A(5) after 1 ns;
	C(2) <= C(3) AND ('1' AND A(4)) after 4 ns;
	C(1) <= C(2) AND ('1' AND A(3)) after 4 ns;
	X <= C(1) AND ('1' AND A(2)) after 4 ns;
	
END LogicFunction ;
