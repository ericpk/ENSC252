LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity Top is

Port ( SW : in unsigned(5 downto 0 );
		KEY : in std_logic_vector(3 downto 0);
      HEX0, HEX1, HEX2, HEX3 : out unsigned( 6 downto 0 ) );
END Top ;


ARCHITECTURE LogicFunction OF Top IS

	SIGNAL Output : unsigned(5 downto 0);

	COMPONENT DispFrac		
	Port ( D : in unsigned(5 downto 0 );
			 Y0, Y1, Y2, Y3 : out unsigned( 6 downto 0 ) );
	END COMPONENT;
	
	Component Fcount
	Port ( D : in unsigned(3 downto 0 );
		    clock: in std_logic;
          Y : buffer unsigned( 5 downto 0 ) );
	END COMPONENT;
	
	Component SecCount
   Port( clock : in std_logic;
	 Y : buffer unsigned(5 downto 0) );
	 END COMPONENT;
	 
Component SegDecoder

Port ( D : in unsigned( 3 downto 0 );
Y : out unsigned( 6 downto 0 ) );

End Component;
	
	
BEGIN
	--stage0: Fcount PORT MAP (SW(3 downto 0), KEY(0), Output);
	stage0: SecCount PORT MAP (KEY(0), Output);
	stage1: SegDecoder PORT MAP ("00" & Output(5 downto 4), HEX1);
	stage2: SegDecoder PORT MAP (Output(3 downto 0), HEX0);
	
END LogicFunction;
