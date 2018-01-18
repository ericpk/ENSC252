LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity BCDCount2 is

	Port (
			 clear, enab, clk : in std_logic;
			 BCD0, BCD1 : buffer unsigned (3 downto 0)
			);
			 
End BCDCount2;

ARCHITECTURE LogicFunction OF BCDCount2 IS
	SIGNAL S1,S2,S3,S4 : std_logic;

	COMPONENT Count4
	Port (
			 load, enable, clock : in std_logic;
			 D : in unsigned (3 downto 0);
			 Q : buffer unsigned (3 downto 0)
			);
	END COMPONENT;

BEGIN
	S1 <= clear OR S3;
	S2 <= clear OR S4;
	S3 <= BCD0(0) and BCD0(3);
	S4 <= BCD1(0) and BCD1(3) and S3;
	STAGE0: Count4 PORT MAP (S1, enab, clk, "0000", BCD0);
	STAGE1: Count4 PORT MAP (S2, S3, clk, "0000", BCD1);
	
END LogicFunction;