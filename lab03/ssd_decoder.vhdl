library ieee;
use ieee.std_logic_1164.all;

entity ssd_decoder is
  port(
        digit_selection_in    : in std_logic;
        bcd                   : in std_logic_vector(3 downto 0);
        seven_segment         : out std_logic_vector(6 downto 0);
        digit_selection_out   : out std_logic
      );
end entity ssd_decoder;

architecture Behavioral of ssd_decoder is
begin
  -- now one may say it's bad to do this but then again it's just a ROM
  with bcd select
    seven_segment <= "0111111" when x"0",
                     "0000110" when x"1",
                     "1011011" when x"2",
                     "1001111" when x"3",
                     "1100110" when x"4",
                     "1101101" when x"5",
                     "1111101" when x"6",
                     "0000111" when x"7",
                     "1111111" when x"8",
                     "1101111" when x"9",
                     "1000000" when others;

  digit_selection_out <= digit_selection_in;
end architecture Behavioral;
