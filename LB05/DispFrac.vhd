LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity DispFrac is

Port ( D : in unsigned(5 downto 0 );
      Y0, Y1, Y2, Y3 : out unsigned( 6 downto 0 ) );
END DispFrac ;

ARCHITECTURE LogicFunction OF DispFrac IS
	SIGNAL output0 : unsigned(9 downto 0);
	SIGNAL output1: unsigned(9 downto 0);
	SIGNAL output2 : unsigned(9 downto 0);
	SIGNAL output3: unsigned(9 downto 0);

	COMPONENT TimesTen		
	Port ( X : in unsigned( 5 downto 0 );
			 TenX : out unsigned( 9 downto 0 ) );
	END COMPONENT;
	
	COMPONENT SegDecoder	
	Port ( D : in unsigned( 3 downto 0 );
			 Y : out unsigned( 6 downto 0 ) );
	END COMPONENT;
	
BEGIN
	
	stage0: TimesTen PORT MAP (D, output0);
	stage1: segDecoder PORT MAP(output0(9 downto 6), Y3);
	
	stage2: TimesTen PORT MAP (output0(5 downto 0), output1);
	stage3: segDecoder PORT MAP(output1(9 downto 6), Y2);
	
	stage4: TimesTen PORT MAP (output1(5 downto 0), output2);
	stage5: segDecoder PORT MAP(output2(9 downto 6), Y1);
	
	stage6: TimesTen PORT MAP (output2(5 downto 0), output3);
	stage7: segDecoder PORT MAP(output3(9 downto 6), Y0);
	
END LogicFunction ;