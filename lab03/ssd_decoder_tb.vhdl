library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity ssd_decoder_tb is
  end entity ssd_decoder_tb;

architecture Structural of ssd_decoder_tb is
  component ssd_decoder is
    port(
          digit_selection_in    : in std_logic;
          bcd                   : in std_logic_vector(3 downto 0);
          seven_segment         : out std_logic_vector(6 downto 0);
          digit_selection_out   : out std_logic
        );
  end component ssd_decoder;

  signal num: std_logic_vector(3 downto 0);
  signal selection: std_logic;
  signal output: std_logic_vector(6 downto 0);
begin
  decoder_1: ssd_decoder port map(
    bcd => num, 
    digit_selection_in => selection, 
    seven_segment => output
  );

  process
    variable trans: unsigned(3 downto 0);
  begin
    selection <= '0';
    for i in 0 to 9 loop
      trans := to_unsigned(i, 4);
      num <= std_logic_vector(trans);
      wait for 20 ns;
    end loop;
    selection <= not selection;
    wait;
  end process;
end architecture Structural;
