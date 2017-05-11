library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Camera Image Sensor Pipeline - top level
--Copyright (C) 2016-17 David Shah
--Licensed under the MIT License

--At the moment is a minimal pipeline performing only debayering and generating
--the x-coord for downstream processing. In the future other tasks need to be
--performed such as WB, denoise, AEC, AFC, etc. These will most likely be
--implemented in RapidHLS rather than VHDL

entity camera_isp_top is
  generic(
    line_width : natural := 1080;
    frame_height : natural := 1920
  );
  port(
    pixel_clock : in std_logic;

    input_hsync : in std_logic;
    input_vsync : in std_logic;
    input_den : in std_logic;
    input_line_start : in std_logic;
    input_odd_line : in std_logic;
    input_data : in std_logic_vector(19 downto 0);
    input_prev_line_data : in std_logic_vector(19 downto 0);

    output_hsync : out std_logic;
    output_vsync : out std_logic;
    output_den : out std_logic;
    output_line_start : out std_logic;
    output_pixel_x : out natural range 0 to line_width - 1;

    output_data_even : out std_logic_vector(23 downto 0); --8bit R:G:B
    output_data_odd : out std_logic_vector(23 downto 0) --8bit R:G:B
  );
end camera_isp_top;

architecture Behavioral of camera_isp_top is
  signal debayer_hsync, debayer_vsync, debayer_den, debayer_line_start : std_logic;
  signal debayer_even, debayer_odd : std_logic_vector(29 downto 0);

  signal x_ctr : natural range 0 to line_width - 1;
begin

  db : entity work.simple_debayer
    port map(
      clock => pixel_clock,
      input_hsync => input_hsync,
      input_vsync => input_vsync,
      input_den => input_den,
      input_line_start => input_line_start,
      input_odd_line => input_odd_line,
      input_data => input_data,
      input_prev_line_data => input_prev_line_data,
      output_hsync => debayer_hsync,
      output_vsync => debayer_vsync,
      output_den => debayer_den,
      output_line_start => debayer_line_start,
      output_data_even => debayer_even,
      output_data_odd => debayer_odd
    );

  process(pixel_clock)
  begin
    if rising_edge(pixel_clock) then
      if debayer_line_start = '1' then
        x_ctr <= 0;
      elsif debayer_den = '1' then
        x_ctr <= x_ctr + 2;
      end if;
    end if;
  end process;

  output_hsync <= debayer_hsync;
  output_vsync <= debayer_vsync;
  output_den <= debayer_den;
  output_line_start <= debayer_line_start;
  output_pixel_x <= x_ctr;
  output_data_even <= debayer_even(29 downto 22) & debayer_even(19 downto 12) & debayer_even(9 downto 2);
  output_data_odd <= debayer_odd(29 downto 22) & debayer_odd(19 downto 12) & debayer_odd(9 downto 2);

end Behavioral;
