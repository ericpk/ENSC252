LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity TestReaction is

		Port ( SW : in unsigned(5 downto 0 );
				 --KEY : in unsigned(3 downto 0);
				 --LEDR : out std_logic_vector(7 downto 0)
				 CLOCK_50 : in std_logic;
				 HEX0, HEX1 : out unsigned(6 downto 0)
				);
			 
End TestReaction;

ARCHITECTURE LogicFunction OF TestReaction IS
	signal clkOut : std_logic;
	signal d0, d1 : unsigned(3 downto 0);

	COMPONENT BCDCount2
	Port (
			 clear, enab, clk : in std_logic;
			 BCD0, BCD1 : buffer unsigned (3 downto 0)
			);
	END COMPONENT;
	
	COMPONENT PreScale
	Port (
			 clk : in std_logic;
			 clkO : out std_logic
			);
	END COMPONENT;
	
	COMPONENT SegDecoder
	Port ( D : in unsigned( 3 downto 0 );
	Y : out unsigned( 6 downto 0 ) );
	END COMPONENT;

BEGIN
	stage0: PreScale PORT MAP(CLOCK_50, clkOut);
	stage1: BCDCount2 PORT MAP (SW(1), SW(0), clkOut, d0, d1);
	stage2: SegDecoder PORT MAP (d0, HEX0);
	stage3: SegDecoder PORT MAP (d1, HEX1);

END LogicFunction;