LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity TimesTen is

Port ( X : in unsigned( 5 downto 0 );
 TenX : out unsigned( 9 downto 0 ) );
END TimesTen ;

ARCHITECTURE LogicFunction OF TimesTen IS

	SIGNAL C : unsigned(4 downto 0);

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

ARCHITECTURE operator OF TimesTen IS
		SIGNAL Sum : unsigned(9 downto 0);
Begin

	--Sum <= (X + (X & "00") & '0');
	--TenX(8 downto 0) <= Sum;
	--TenX(9) <= Sum(8) XOR X(5);
	Sum(5 downto 0) <= X;
	Sum(9 downto 6) <= "0000";
	TenX <= Sum + Sum + Sum + Sum + Sum + Sum + Sum + Sum + Sum + Sum;
	

END operator ;