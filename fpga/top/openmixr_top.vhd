library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

--openMixR top level design
--Copyright (C) 2017 David Shah
--Licensed under the MIT License

entity ov13850_demo is
  Port (
    --Core signals
    clock_p : in std_logic;
    clock_n : in std_logic;
    aux_clock_p : in std_logic;
    aux_clock_n : in std_logic;

    --User interface
    btn_miso : in std_logic;
    btn_clk : out std_logic;
    btn_ld_n : out std_logic;
    rgb_led : out std_logic_vector(2 downto 0);
    imu_mosi : out std_logic;
    imu_miso : in std_logic;
    imu_sclk : out std_logic;
    imu_cs_n : out std_logic;
    imu_fsync : out std_logic;

    --FTDI interface
    ftdi_data : inout std_logic_vector(7 downto 0);
    ftdi_rd_n : out std_logic;
    ftdi_wr_n : out std_logic;
    ftdi_siwu_n : out std_logic;
    ftdi_rxf_n : in std_logic;
    ftdi_txf_n : in std_logic;

    --USB-C and DP interface
    ccg_io0 : inout std_logic;
    ccg_io1 : inout std_logic;
    dp_aux_p : inout std_logic;
    dp_aux_n : inout std_logic;
    dp_hpd : inout std_logic;
    dprt_en : out std_logic;
    dprt_sda : inout std_logic;
    dprt_scl : inout std_logic;

    --Camera CSI port
    csi0_clk : in std_logic_vector(1 downto 0);
    csi0_d0 : in std_logic_vector(1 downto 0);
    csi0_d1 : in std_logic_vector(1 downto 0);
    csi0_d2 : in std_logic_vector(1 downto 0);
    csi0_d3 : in std_logic_vector(1 downto 0);
    csi1_clk : in std_logic_vector(1 downto 0);
    csi1_d0 : in std_logic_vector(1 downto 0);
    csi1_d1 : in std_logic_vector(1 downto 0);
    csi1_d2 : in std_logic_vector(1 downto 0);
    csi1_d3 : in std_logic_vector(1 downto 0);

    --Camera control port
    cam0_mclk : out std_logic;
    cam_rstn : out std_logic;
    cam0_i2c_sda : inout std_logic;
    cam0_i2c_sck : inout std_logic;
    cam0_led : out std_logic;
    cam0_gpio : inout std_logic;
    cam1_mclk : out std_logic;
    cam1_i2c_sda : inout std_logic;
    cam1_i2c_sck : inout std_logic;
    cam1_led : out std_logic;
    cam1_gpio : inout std_logic;

    --LCD control interface
    vddd_en : out std_logic;
    vdda_en : out std_logic;
    lcd_reset_b : out std_logic;
    bl_pwm_b : out std_logic;
    lcd_te : in std_logic;
    lcd_id : in std_logic_vector(3 downto 0);
    lcd_gpio : inout std_logic_vector(2 downto 0);
    lcd_psu_sda : inout std_logic_vector;
    lcd_psu_scl : inout std_logic_vector;

    --DSI port 0 (master, left)
    dphy0_hs_clk : inout STD_LOGIC_VECTOR (1 downto 0); --DSI lanes; hs is high speed and lp is low power for resistor network
    dphy0_lp_clk : inout STD_LOGIC_VECTOR (1 downto 0); -- In each case 1 is P and 0 is N
    dphy0_hs_d0 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_lp_d0 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_hs_d1 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_lp_d1 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_hs_d2 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_lp_d2 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_hs_d3 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy0_lp_d3 : inout STD_LOGIC_VECTOR (1 downto 0);

    --DSI port 1 (slave, right)
    dphy1_hs_clk : inout STD_LOGIC_VECTOR (1 downto 0); --DSI lanes; hs is high speed and lp is low power for resistor network
    dphy1_lp_clk : inout STD_LOGIC_VECTOR (1 downto 0); -- In each case 1 is P and 0 is N
    dphy1_hs_d0 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_lp_d0 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_hs_d1 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_lp_d1 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_hs_d2 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_lp_d2 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_hs_d3 : inout STD_LOGIC_VECTOR (1 downto 0);
    dphy1_lp_d3 : inout STD_LOGIC_VECTOR (1 downto 0);

    --A64 control interface
    a64_boot_ctl : out std_logic;
    a64_reset_ctl : out std_logic;
    a64_fpga_oe : in std_logic;
    a64_mosi : in std_logic;
    a64_miso : inout std_logic;
    a64_sck : in std_logic;
    a64_csn : in std_logic;
    a64_io0 : inout std_logic;

    --A64 vLCD interface
    a64_lcd_pixclk : in std_logic;
    a64_lcd_data : in std_logic_vector(17 downto 0);
    a64_lcd_hsync : in std_logic;
    a64_lcd_vsync : in std_logic;
    a64_lcd_den : in std_logic;

    --A64 vCamera interface
    a64_cam_pixclk : inout std_logic;
    a64_cam_mclk : in std_logic;
    a64_cam_data : inout std_logic_vector(7 downto 0);
    a64_cam_vsync : inout std_logic;
    a64_cam_hsync : inout std_logic;

   --DDR3 interface
    ddr3_addr : out std_logic_vector(14 downto 0);
    ddr3_ba : out std_logic_vector(2 downto 0);
    ddr3_cas_n : out std_logic;
    ddr3_ck_n : out std_logic_vector(0 downto 0);
    ddr3_ck_p : out std_logic_vector(0 downto 0);
    ddr3_cke : out std_logic_vector(0 downto 0);
    ddr3_ras_n : out std_logic;
    ddr3_reset_n : out std_logic;
    ddr3_we_n : out std_logic;
    ddr3_dq : inout std_logic_vector(31 downto 0);
    ddr3_dqs_n : inout std_logic_vector(3 downto 0);
    ddr3_dqs_p : inout std_logic_vector(3 downto 0);
    ddr3_cs_n : out std_logic_vector(0 downto 0);
    ddr3_dm : out std_logic_vector(3 downto 0);
    ddr3_odt : out std_logic_vector(0 downto 0)
  );
end ov13850_demo;

architecture Behavioral of openmixr_top is

  component sys_pll is
    port(
      clkin : in std_logic;
      clock_50 : out std_logic
    );
  end component;

  component video_pll is
    port(
      clkin : in std_logic;
      pixel_clock : out std_logic
    );
  end component;

  component dsi_pll is
    port(
      clkin : in std_logic;
      hs_word_clock : out std_logic;
      hs_bit_clock : out std_logic;
      hs_out_clock : out std_logic;
      ls_2xbit_clock : out std_logic
    );
  end component;

  signal global_reset : std_logic;
  signal sys_clock : std_logic;
  signal clock_50 : std_logic;

  signal dsi_pixel_clock : std_logic;
  signal dsi_hs_word_clock, dsi_hs_bit_clock, dsi_hs_out_clock, dsi_ls_2xbit_clock : std_logic;

  signal pattern_vsync, pattern_hsync, pattern_den, pattern_line_start : std_logic;
  signal pattern_rgb : std_logic_vector(23 downto 0);
  signal pattern_sel : std_logic_vector(1 downto 0);
  signal pattern_x : natural range 0 to 1079;
  signal pattern_y : natural range 0 to 1919;

  signal buttons : std_logic_vector(7 downto 0) := (others => '0');

  signal init_done : std_logic;

begin
  --System core
  global_reset <= buttons(0) and buttons(3);

  rgb_led(2) <= not init_done;
  rgb_led(1) <= init_done;
  rgb_led(0) <= lcd_te;

  clkbuf : IBUFGDS
    generic map(
        DIFF_TERM => TRUE,
        IBUF_LOW_PWR => FALSE,
        IOSTANDARD => "DEFAULT")
    port map(
        O => sys_clock,
        I => clock_p,
        IB => clock_n);

  --Test pattern generator
  pattern_sel <= buttons(5 downto 4);

  vpll : video_pll
    port map(
      clkin => sys_clock,
      pixel_clock => dsi_pixel_clock
    );

  patgen : entity work.test_pattern_enhanced
    generic map(
      video_hlength => 1152,
      video_vlength => 4326,
      video_hsync_pol => false,
      video_hsync_len => 16,
      video_hbp_len => 16,
      video_h_visible => 1080,
      video_vsync_pol => false,
      video_vsync_len => 8,
      video_vbp_len => 8,
      video_v_visible => 1920)
    port map(
      pixel_clock => dsi_pixel_clock,
      reset => global_reset,
      pattern_sel => pattern_sel,
      video_vsync => pattern_vsync,
      video_hsync => pattern_hsync,
      video_den => pattern_den,
      video_line_start => pattern_line_start,
      pixel_x => pattern_x,
      pixel_y => pattern_y,
      video_pixel => pattern_rgb);

  --DSI driver
  dsipll : dsi_pll
    port map(
      clkin => sys_clock,
      hs_word_clock => hs_word_clock,
      hs_bit_clock => hs_bit_clock,
      hs_out_clock => hs_out_clock,
      ls_2xbit_clock => ls_2xbit_clock);

  dsidrv : entity work.dsi_tx_dual_dsi_top
    generic map(
      command_mode => true,
      vsync_to_first_cmd => 8160,
      hsync_to_cmd => 1,
      line_width => 1080,
      frame_height => 1920)
    port map(
      pixel_clock => dsi_pixel_clock,
      hs_word_clock => dsi_hs_word_clock,
      hs_bit_clock => dsi_hs_bit_clock,
      hs_out_clock => dsi_hs_out_clock,
      ls_2xbit_clock => dsi_ls_2xbit_clock,
      reset => global_reset,
      video_hsync => pattern_hsync,
      video_vsync => pattern_vsync,
      video_den => pattern_den,
      video_rgb => pattern_rgb,
      video_pixel_x => pattern_x,
      vddd_en => vddd_en,
      vdda_en => vdda_en,
      lcd_reset_b => lcd_reset_b,
      pwm_en => pwm_en,

      panel_init_done => init_done,

      dphy0_hs_clk => dphy0_hs_clk,
      dphy0_lp_clk => dphy0_lp_clk,
      dphy0_hs_d0 => dphy0_hs_d0,
      dphy0_lp_d0 => dphy0_lp_d0,
      dphy0_hs_d1 => dphy0_hs_d1,
      dphy0_lp_d1 => dphy0_lp_d1,
      dphy0_hs_d2 => dphy0_hs_d2,
      dphy0_lp_d2 => dphy0_lp_d2,
      dphy0_hs_d3 => dphy0_hs_d3,
      dphy0_lp_d3 => dphy0_lp_d3,

      dphy1_hs_clk => dphy1_hs_clk,
      dphy1_lp_clk => dphy1_lp_clk,
      dphy1_hs_d0 => dphy1_hs_d0,
      dphy1_lp_d0 => dphy1_lp_d0,
      dphy1_hs_d1 => dphy1_hs_d1,
      dphy1_lp_d1 => dphy1_lp_d1,
      dphy1_hs_d2 => dphy1_hs_d2,
      dphy1_lp_d2 => dphy1_lp_d2,
      dphy1_hs_d3 => dphy1_hs_d3,
      dphy1_lp_d3 => dphy1_lp_d3
    );


  --Assign default values to some unused IO ports

  imu_cs_n <= '1';

  ftdi_data <= (others => 'Z');
  ftdi_siwu_n <= '1';
  ftdi_rd_n <= '1';
  ftdi_wr_n <= '1';

  ccg_io0 <= 'Z';
  ccg_io1 <= 'Z';
  dp_aux_p <= 'Z';
  dp_aux_n <= 'Z';
  dp_hpd <= 'Z';
  dprt_en <= '1';
  dprt_sda <= 'Z';
  dprt_scl <= 'Z';

  cam0_gpio <= 'Z';
  cam1_gpio <= 'Z';
  cam0_led <= '0';
  cam1_led <= '0';

  lcd_gpio <= "ZZZ";
  lcd_psu_scl <= 'Z';
  lcd_psu_sda <= 'Z';

  a64_miso <= 'Z';
  a64_io0 <= 'Z';

  a64_cam_pixclk <= 'Z';
  a64_cam_data <= (others => 'Z');
  a64_cam_vsync <= 'Z';
  a64_cam_hsync <= 'Z';
  a64_boot_ctl <= '0';
  a64_reset_ctl <= '0';

  ddr_dq <= (others => 'Z');
  ddr_dqs_n <= (others => 'Z');
  ddr_dqs_p <= (others => 'Z');

  ddr_reset_n <= '0';
  ddr_ck_n <= '0';
  ddr_ck_p <= '1';
end Behavioral;
