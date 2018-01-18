Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity TBInc6 is
End Entity TBInc6;

Architecture rtl of TBInc6 is

	Signal tbX, tbY : unsigned(5 downto 0);
Begin

DUT: Entity work.Inc6 port map ( X => tbX, Y => tbY );

Main: Process
	Begin
		for i in 0 to 63 loop
			tbX <= to_unsigned(i, 6);
			wait for 30 ns;
		end loop;
		Wait;
	End Process Main;
End Architecture rtl;
