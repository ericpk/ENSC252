LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity TestSystem is

		Port ( SW : in unsigned(3 downto 0 );
				 KEY : in unsigned(3 downto 0);
				 LEDR : out unsigned(3 downto 0);
				 LEDG : out unsigned(3 downto 0);
				 CLOCK_50 : in std_logic;
				 HEX0, HEX1, HEX2 : out unsigned(6 downto 0)
				);
			 
End TestSystem;

ARCHITECTURE LogicFunction OF TestSystem IS

	signal s0, s1, s2, s3, s4, k2, clkOut : std_logic;

	COMPONENT System
		Port ( Doors : in unsigned(3 downto 0 );
				 ARM, clock : in std_logic;
				 Ready : buffer std_logic;
				 SysArmed, AlarmOn, Delay: out std_logic
				);
	END COMPONENT;
	
	COMPONENT PreScale
	Port (
			 clk : in std_logic;
			 clkO : out std_logic
			);
	END COMPONENT;
	
	COMPONENT Alarm
		Port (
				 Enable, clock : in std_logic;
				 Seg0, Seg1, Seg2 : out unsigned(6 downto 0)
			   );
	END COMPONENT;

	COMPONENT TenSecDelay

	Port ( load, clock : in std_logic;
			 TC : out std_logic);
		 
	END COMPONENT;

BEGIN
	k2 <= NOT KEY(2);
	LEDR(3 downto 0) <= SW(3 downto 0);
	LEDG(0) <= s0;
	LEDG(1) <= s1;
	LEDG(2) <= s2;
	LEDG(3) <= s3;
	stage0: PreScale PORT MAP(CLOCK_50, clkOut);
	stage1: work.System(Better) PORT MAP (SW(3 downto 0), KEY(3), clkOut, s0, s1, s2, s3);
	stage2: Alarm PORT MAP (s2, clkOut, HEX0, HEX1, HEX2);

END LogicFunction;