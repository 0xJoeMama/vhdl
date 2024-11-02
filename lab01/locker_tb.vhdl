LIBRARY ieee; USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
 
entity locker_tb IS
end locker_tb;
 
architecture behavior OF locker_tb IS 
    -- Component Declaration for the Unit Under Test (UUT)
  component locker
    port(
      digit3, digit2, digit1, digit0   : in STD_LOGIC;
      lock_out : out STD_LOGIC
    );
  end component;

  --Inputs
  signal sw3, sw2, sw1, sw0 : STD_LOGIC;
  --Outputs
  signal led0 : STD_LOGIC;
begin
  uut: locker port map (
    digit0 => sw0,
    digit1 => sw1,
    digit2 => sw2,
    digit3 => sw3,
    lock_out => led0
  );

  -- Test process
  test_proc: process
    variable bits: STD_LOGIC_VECTOR(3 downto 0);
  begin		

    for i in 0 to 9 loop
        bits := STD_LOGIC_VECTOR(to_unsigned(i, 4));
        sw3 <= bits(3);
        sw2 <= bits(2);
        sw1 <= bits(1); 
        sw0 <= bits(0);

        wait for 20 ns;

      if i /= 8 then 
        assert led0 = '0' report "bad result" severity error;
      else
        assert led0 = '1' report "bad result" severity error;
      end if;
    end loop;

    report "Tests passed!" severity note;
    wait;
  end process;
end behavior;
