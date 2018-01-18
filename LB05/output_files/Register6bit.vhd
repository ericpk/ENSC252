LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity Register6bit is

Port ( I : in unsigned( 5 downto 0 );
		 clk : in std_logic;
		 O : out unsigned( 5 downto 0 ) );
END Register6bit ;

architecture behavioural of Register6bit is 
begin 
process (clk) begin 
      if rising_edge(clk) then 
            O <= I; 
      end if; 
end process; 
end behavioural; 