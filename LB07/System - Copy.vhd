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
BEGIN
	Ready <= NOT (Doors(0) OR Doors(1) OR Doors(2) OR Doors(3));
	
	process(ARM, clock, Ready)
	begin
		if rising_edge(clock) then
			case alarm is
				when A =>
					if (Ready = '1' AND ARM = '0') then alarm <= B;
					else alarm <= A;
					end if;
				when B =>
					if  (ARM = '0') then alarm <= A;
					elsif (Ready = '0') then alarm <= C;
					else alarm <= B;
					end if;
				when C =>
					if  (ARM = '0') then alarm <= A;
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
	signal preArm, preReady, delayon : std_logic;
	
	COMPONENT TenSecDelay

	Port ( load, clock : in std_logic;
			 TC : out std_logic);
		 
	END COMPONENT;
	
BEGIN
	Ready <= NOT (Doors(0) OR Doors(1) OR Doors(2) OR Doors(3));
	Delay <= delayon;
	delay0 : TenSecDelay PORT MAP (preArm, clock, delayon);
	
	process(ARM, clock, Ready)
	begin
		if rising_edge(clock) then
			case alarm is
				when A =>
					preArm <= '0';
					SysArmed <= '0';
					AlarmOn <= '0';
					if (ARM = '0') then 
						alarm <= D;
						preArm <= '1';
					else alarm <= A;
					end if;
				when B =>
					preArm <= '0';
					SysArmed <= '1';
					AlarmOn <= '0';
					if  (Ready = '0') then 
						preArm <= '1';
						alarm <= E;
					else alarm <= B;
					end if;
				when C =>
					preArm <= '0';
					SysArmed <= '1';
					AlarmOn <= '1';
					if  (ARM = '0') then alarm <= A;
					else alarm <= C;
					end if;
				when D =>
					SysArmed <= '0';
					AlarmOn <= '0';
					if (preArm = '1') then
						preArm <= '0';
						preReady <= '1';
					elsif (preReady = '1' AND delayon = '0') then 
						alarm <= B;
						preReady <= '0';
					else alarm <= D;
					end if;
				when E =>
					SysArmed <= '1';
					AlarmOn <= '0';
					if (preArm = '1') then
						preArm <= '0';
						preReady <= '1';
					elsif (delayon = '1' AND ARM = '0') then 
						preReady <= '0';
						alarm <= A;
					elsif (preReady = '1' AND delayon = '0') then
						preReady <= '0';
						alarm <= C;
					else alarm <= E;
					end if;
			end case;
		end if;
	end process;

END Better;