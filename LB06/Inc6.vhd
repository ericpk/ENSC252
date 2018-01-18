LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity Inc6 is

	Port ( X : in unsigned (5 downto 0);
	Y : out unsigned (5 downto 0));

End Inc6;

ARCHITECTURE LogicFunction OF Inc6 IS

	SIGNAL C : unsigned(6 downto 1);

	COMPONENT IncStage0		
		Port ( X : in std_logic;
		S, Cout : out std_logic);
	END COMPONENT;

	COMPONENT IncStageI		
		Port ( X, Cin : in std_logic;
		S, Cout : out std_logic);
	END COMPONENT;

BEGIN
	Stage0: IncStage0 PORT MAP (X(0), Y(0), C(1));
	Stage1: IncStageI PORT MAP (X(1), C(1), Y(1), C(2));
	Stage2: IncStageI PORT MAP (X(2), C(2), Y(2), C(3));
	Stage3: IncStageI PORT MAP (X(3), C(3), Y(3), C(4));
	Stage4: IncStageI PORT MAP (X(4), C(4), Y(4), C(5));
	Stage5: IncStageI PORT MAP (X(5), C(5), Y(5), C(6)); -- C(6) unused

END LogicFunction ;
