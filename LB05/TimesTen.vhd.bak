LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity TimesTen is

Port ( X : in std_logic_vector( 5 downto 0 );
 TenX : out std_logic_vector( 9 downto 0 ) );
END TimesTen ;

ARCHITECTURE LogicFunction OF TimesTen IS

	SIGNAL C : STD_LOGIC_VECTOR(4 downto 0);

	COMPONENT FullAdder
		Port ( 		
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Carry : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT HalfAdder
		Port ( 		
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Carry : OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN
	
	TenX(0) <= '0';
	TenX(1) <= X(0);
	TenX(2) <= X(1);
	stage0: HalfAdder PORT MAP (X(2), X(0), TenX(3), C(0));
	stage1: FullAdder PORT MAP (C(0), X(1), X(3), TenX(4), C(1));
	stage2: FullAdder PORT MAP (C(1), X(2), X(4), TenX(5), C(2));
	stage3: FullAdder PORT MAP (C(2), X(3), X(5), TenX(6), C(3));
	stage4: HalfAdder PORT MAP (C(3), X(4), TenX(7), C(4));
	stage5: HalfAdder PORT MAP (C(4), X(5), TenX(8), TenX(9));
	
	
	
END LogicFunction ;