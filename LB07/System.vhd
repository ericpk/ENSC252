LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all ;

Entity System is

		Port ( Doors : in unsigned(3 downto 0 );
				 ARM, clock : in std_logic;
				 Ready : buffer std_logic;
				 SysArmed, AlarmOn, Delay: out std_logic
				);
			 
End System;

ARCHITECTURE Basic OF System IS
	type State_Type is (A,B,C);
	signal alarm : State_Type;
	signal ARMtest, pulse : std_logic;
BEGIN
	-- detect rising edge of arm
	process(clock)
	begin
		if rising_edge(clock) then
			ARMtest <= ARM;
		end if;
	end process;
	pulse <= (NOT ARM) AND ARMtest;





	Ready <= NOT (Doors(0) OR Doors(1) OR Doors(2) OR Doors(3));
	
	process(ARM, clock, Ready)
	begin
		if rising_edge(clock) then
			case alarm is
				when A =>
					if (Ready = '1' AND pulse = '1') then alarm <= B;
					else alarm <= A;
					end if;
				when B =>
					if  (pulse = '1') then alarm <= A;
					elsif (Ready = '0') then alarm <= C;
					else alarm <= B;
					end if;
				when C =>
					if  (pulse = '1') then alarm <= A;
					else alarm <= C;
					end if;
			end case;
		end if;
	end process;
	
	process(alarm)
	begin
		case alarm is
			when A =>
				SysArmed <= '0';
				AlarmOn <= '0';
			when B =>
				SysArmed <= '1';
				AlarmOn <= '0';
			when C =>
				SysArmed <= '1';
				AlarmOn <= '1';
		end case;
	end process;

END Basic;

ARCHITECTURE Better OF System IS
	type State_Type is (A,B,C,D,E);
	signal alarm : State_Type;
	signal preArm, ARMtest, pulse, delayon, deactivate, dactual : std_logic;
	signal clkDelay : unsigned(1 downto 0);
	
	COMPONENT TenSecDelay

	Port ( load, clock : in std_logic;
			 TC : out std_logic);
		 
	END COMPONENT;
	
BEGIN
	Ready <= NOT (Doors(0) OR Doors(1) OR Doors(2) OR Doors(3));
	Delay <= dactual;
	dactual <= delayon AND NOT(deactivate);
	delay0 : TenSecDelay PORT MAP (preArm, clock, delayon);
	process(clock)
	begin
		if rising_edge(clock) then
			ARMtest <= ARM;
		end if;
	end process;
	pulse <= (NOT ARM) AND ARMtest;
	
	process(ARM, clock, Ready)
	begin
		if rising_edge(clock) then
			case alarm is
				when A =>
					clkDelay <= "00";
					if (pulse = '1') then 
						preArm <= '1';
						alarm <= D;
					else alarm <= A;
					end if;
				when B =>
					clkDelay <= "00";
					if  (Ready = '0') then 
						preArm <= '1';
						alarm <= E;
					else alarm <= B;
					end if;
					
					if (pulse = '1') then alarm <= A;
					else alarm <= B;
					end if;
				when C =>
					clkDelay <= "00";
					if  (pulse = '1') then alarm <= A;
					else alarm <= C;
					end if;
				when D =>
					deactivate <= '0';
					if (preArm = '1' OR NOT(clkDelay = "00")) then
						preArm <= '0';
						clkDelay <= clkDelay + 1;
					end if;
					
					if (clkDelay(1) = '1' AND delayon = '0') then alarm <= B;
					else alarm <= D;
					end if;
				when E =>
					deactivate <= '0';
					if (preArm = '1' OR NOT(clkDelay = "00")) then
						preArm <= '0';
						clkDelay <= clkDelay + 1;
					end if;
					
					if (delayon = '1' AND pulse = '1') then 
						deactivate <= '1';
						alarm <= A;
					elsif (clkDelay(1) = '1' AND delayon = '0') then alarm <= C;
					else alarm <= E;
					end if;
			end case;
		end if;
	end process;
	
	process(alarm)
	begin
		case alarm is
			when A =>
				SysArmed <= '0';
				AlarmOn <= '0';
			when B =>
				SysArmed <= '1';
				AlarmOn <= '0';
			when C =>
				SysArmed <= '1';
				AlarmOn <= '1';
			when D =>
				SysArmed <= '0';
				AlarmOn <= '0';
			when E =>
				SysArmed <= '1';
				AlarmOn <= '0';
		end case;
	end process;

END Better;