LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity TestBCDCount2 is

		Port ( SW : in unsigned(5 downto 0 );
				 KEY : in unsigned(3 downto 0);
				 LEDR : out unsigned(7 downto 0)
				 --HEX0, HEX1 : out unsigned(6 downto 0)
				);
			 
End TestBCDCount2;

ARCHITECTURE LogicFunction OF TestBCDCount2 IS
	COMPONENT BCDCount2
	Port (
			 clear, enab, clk : in std_logic;
			 BCD0, BCD1 : buffer unsigned (3 downto 0)
			);
	END COMPONENT;

BEGIN

	stage0: BCDCount2 PORT MAP (KEY(1), SW(0), KEY(0), LEDR(3 downto 0), LEDR(7 downto 4));

END LogicFunction;