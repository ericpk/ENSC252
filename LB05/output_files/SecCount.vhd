Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity SecCount is
   Port( clock : in std_logic;
	 Y : buffer unsigned(5 downto 0) );
End Entity SecCount;

Architecture First of SecCount is
	Signal Q, D : unsigned(5 downto 0) := to_unsigned(58, 6);
	Signal MuxOut, Ch0, Ch1 : unsigned(5 downto 0);
	Signal ChanSel : std_logic;
Begin

StateRegister:	Q <= D when Rising_Edge( clock );
		Y <= Q;

MUX:		MuxOut <= Ch0 when ChanSel = '0' else Ch1;
		D <= MuxOut;
		Ch1 <= (others => '0');

Incrementer:	Entity work.Inc6 port map ( X => Q, Y => Ch0 );
LimitTest:	Entity work.Over59 port map ( A => Q, X => ChanSel );

End Architecture First;