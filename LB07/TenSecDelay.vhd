LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
Use ieee.numeric_std.all;

Entity TenSecDelay is

Port ( load, clock : in std_logic;
		 TC : out std_logic);

End TenSecDelay;

ARCHITECTURE LogicFunction OF TenSecDelay IS
	type State_Type is (A,B);
	signal state : State_Type;
	signal Counter : unsigned(9 downto 0);
BEGIN
	
	process(clock, Counter)
	begin
		if rising_edge(clock) then
			case state is
				when A =>
					TC <= '0';
					Counter <= "1111101000";
					if (load = '1') then state <= B;
					else state <= A;
					end if;
				when B =>
					TC <= '1';
					if  (Counter = "0000000000") then state <= A;
					else 
						state <= B;
						Counter <= Counter - 1;
					end if;
			end case;
		end if;
	end process;

END LogicFunction ;