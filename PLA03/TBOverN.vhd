Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity TBOverN is
End Entity TBOverN;

Architecture rtl of TBOverN is

	Signal tbX : unsigned(5 downto 0);
	Signal tbO59 : std_logic;
	Signal tbO60 : std_logic;

Begin

DUT: Entity work.Over59 port map (tbX, tbO59);
DUT2: Entity work.Over60 port map (tbX, tbO60);

Main: Process
	Begin
		for i in 0 to 63 loop
			tbX <= to_unsigned(i, 6);
			wait for 30 ns;
		end loop;
		Wait;
	End Process Main;
End Architecture rtl;
