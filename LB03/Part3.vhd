LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity Part3 is

Port ( SW : in std_logic_vector( 17 downto 0 );
		KEY : in std_logic_vector(3 downto 0);
HEX0, HEX1 : out std_logic_vector( 6 downto 0 ) );

END Part3 ;

ARCHITECTURE LogicFunction OF Part3 IS
	SIGNAL SW1 : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL SW2 : STD_LOGIC_VECTOR(3 downto 0);
	
	
	COMPONENT SegDecoder
		Port ( D : in std_logic_vector( 3 downto 0 );
		Y : out std_logic_vector( 6 downto 0 ) );
	END COMPONENT;
	
BEGIN
	
	SW1 <= SW(3 downto 0)when KEY(0) = '0' else SW(13 downto 10);
	SW2 <= SW(7 downto 4)when KEY(0) = '0' else SW(17 downto 14);
	
	stage0: SegDecoder PORT MAP (SW1, HEX0);
	stage1: SegDecoder PORT MAP (SW2, HEX1);
	
	
END LogicFunction ;