LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity DispHex is

Port ( X : in unsigned( 5 downto 0 );
 TenX : out unsigned( 9 downto 0 ) );
END DispHex ;

ARCHITECTURE operator OF DispHex IS
		SIGNAL Sum : unsigned(9 downto 0);
Begin

	--Sum <= (X + (X & "00") & '0');
	--TenX(8 downto 0) <= Sum;
	--TenX(9) <= Sum(8) XOR X(5);
	Sum(5 downto 0) <= X;
	Sum(9 downto 6) <= "0000";
	TenX <= Sum + Sum + Sum + Sum + Sum + Sum + Sum + Sum + Sum + Sum;
	

END operator ;