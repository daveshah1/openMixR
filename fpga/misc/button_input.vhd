library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--openMixR button input driver
--Copyright (C) 2017 David Shah
--Licensed under the MIT License

entity button_input is
  port(
    clock_in : in std_logic;
    sck : out std_logic;
    le_n : out std_logic;
    miso : in std_logic;
    buttons : out std_logic_vector(7 downto 0)
  );
end button_input;

architecture Behavioral of button_input is

  type pinswap_arr_t is array(0 to 7) of natural;

  --Actual button connected to each HC165 pin
  constant pinswap : pinswap_arr_t := (3, 2, 1, 0, 7, 6, 5, 4);
  --Clock division factor
  constant div_factor : natural := 16;

  signal div_ctr : natural range 0 to div_factor := 0;
  signal ctr : natural range 0 to 7 := 0;
  signal shiftreg, shiftreg_prev, buttons_int : std_logic_vector(7 downto 0) := x"00";
begin
  --Clock divider
  process(clock_in)
  begin
    if rising_edge(clock_in) then
      if div_ctr = div_factor - 1 then
        div_ctr <= 0;
      else
        div_ctr <= div_ctr + 1;
      end if;
    end if;
  end process;
  --Shift register
  process(clock_in)
  begin
    if rising_edge(clock_in) then
      if div_ctr = div_factor - 1 then
        if ctr = 7 then
          ctr <= 0;
        else
          ctr <= ctr + 1;
        end if;
        shiftreg(7) <= miso;
        shiftreg(6 downto 0) <= shiftreg(7 downto 1);
        if ctr = 0 then
          shiftreg_prev <= shiftreg;
        end if;
      end if;
    end if;
  end process;
  --Pinswaps
  pinsw: for i in 0 to 7 generate
    --Note inversion as buttons are active low in HW
    buttons_int(pinswap(i)) <= not shiftreg_prev(i);
  end generate;

  buttons <= buttons_int;

  sck <='1' when div_ctr >= div_factor else '0';
  le_n <= '0' when ctr = 7 else '0';
end Behavioral;
