library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Dual Camera Startup Sequencing Controller
--Copyright (C) 2017 David Shah
--Licensed under the MIT License

--Because of the portrait nature of the display and thus rotated nature of 
--the cameras (to avoid an expensive and high latency rotate transform within
--the FPGA), the two stereo cameras are effectively stacked vertically

--In order to stack the cameras vertically, camera 2 must start outputting its first
--visible line approximately h/2 lines after camera 1. This is implemented by delaying
--the startup of the second camera

entity dual_cam_seq is
	generic(
		delay : natural := 416667 --half a 60fps frame at 50MHz
	);
	port(
		clock : in std_logic;
		reset_in : in std_logic;
		reset_out_1 : out std_logic;
		reset_out_2 : out std_logic
	);
end dual_cam_seq;

architecture Behavioral of dual_cam_seq is
	signal state : natural range 0 to 2 := 0;
	signal ctr : natural range 0 to delay - 1 := 0;
	
	signal rst1_d, rst2_d, rst1_q, rst2_q : std_logic := '0';
begin
	
	process(clock)
	begin
		if rising_edge(clock) then
			case state is
				when 0 =>
					if reset_in = '1' then
						state <= 1;
					end if;
				when 1 =>
					if reset_in = '0' then
						ctr <= 0;
						state <= 2;
					end if;
				when 2 =>
					if ctr = delay - 1 then
						ctr <= 0;
						state <= 0;
					else
						ctr <= ctr + 1;
					end if;
				when others =>
					state <= 0;
			end case;
			--Register outputs
			rst1_q <= rst1_d;
			rst2_q <= rst2_d;
		end if;
	end process;
	
	rst1_d <= '1' when state = 1 else '0';
	rst2_d <= '1' when state = 1 or state = 2 else '0';
	
	reset_out_1 <= rst1_q;
	reset_out_2 <= rst2_q;
end Behavioral;