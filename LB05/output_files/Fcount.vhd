LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity Fcount is

Port ( D : in unsigned(3 downto 0 );
		 clock: in std_logic;
       Y : buffer unsigned( 5 downto 0 ) );
END Fcount ;

ARCHITECTURE behavioural OF Fcount IS

	Signal T : unsigned(5 downto 0);
	Signal Add : unsigned(5 downto 0);

	COMPONENT Register6bit		
	Port ( I : in unsigned( 5 downto 0 );
			 clk : in std_logic;
			 O : out unsigned( 5 downto 0 ) );
END COMPONENT;

begin 

	stage0: Register6bit PORT MAP (Add, clock, Y);
	T <= D & "00";
	Add <= T + Y;

end behavioural; 