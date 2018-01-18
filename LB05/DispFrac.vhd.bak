LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

Entity TestTimesTen is

Port ( SW : in std_logic_vector(5 downto 0 );
		--LEDR : out std_logic_vector(9 downto 0));
      HEX0, HEX1, HEX2, HEX3 : out std_logic_vector( 6 downto 0 ) );
END TestTimesTen ;

ARCHITECTURE LogicFunction OF TestTimesTen IS
	SIGNAL output0 : std_logic_vector(9 downto 0);
	SIGNAL output1: std_logic_vector(9 downto 0);
	SIGNAL output2 : std_logic_vector(9 downto 0);
	SIGNAL output3: std_logic_vector(9 downto 0);

	COMPONENT TimesTen		
	Port ( X : in std_logic_vector( 5 downto 0 );
			 TenX : out std_logic_vector( 9 downto 0 ) );
	END COMPONENT;
	
	COMPONENT SegDecoder	
	Port ( D : in std_logic_vector( 3 downto 0 );
			 Y : out std_logic_vector( 6 downto 0 ) );
	END COMPONENT;
	
BEGIN
	
	stage0: TimesTen PORT MAP (SW, output0);
	stage1: segDecoder PORT MAP(output0(9 downto 6), HEX3);
	
	stage2: TimesTen PORT MAP (output0(5 downto 0), output1);
	stage3: segDecoder PORT MAP(output1(9 downto 6), HEX2);
	
	stage4: TimesTen PORT MAP (output1(5 downto 0), output2);
	stage5: segDecoder PORT MAP(output2(9 downto 6), HEX1);
	
	stage6: TimesTen PORT MAP (output2(5 downto 0), output3);
	stage7: segDecoder PORT MAP(output3(9 downto 6), HEX0);
	
END LogicFunction ;