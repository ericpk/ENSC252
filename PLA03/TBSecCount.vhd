Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity TBSecCount is
End Entity TBSecCount;

Architecture rtl of TBSecCount is
	Constant PERIOD : time := 50 ns;
	Signal tbClock : std_logic := '1';
	Signal tbY1, tbY2 : unsigned(5 downto 0);
Begin

	tbClock <= not tbClock after PERIOD;

DUT1:	Entity work.SecCount(First) port map ( clock => tbClock, Y => tbY1 );
DUT2:	Entity work.SecCount(Second) port map ( clock => tbClock, Y => tbY2 );

End Architecture rtl;