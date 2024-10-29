LIBRARY ieee; USE ieee.std_logic_1164.ALL;
use std.textio.all;
 
entity locker_tb IS
end locker_tb;
 
architecture behavior OF locker_tb IS 
    -- Component Declaration for the Unit Under Test (UUT)
  component locker
    port(
      digit3, digit2, digit1, digit0   : in std_logic;
      lock_out : out std_logic
    );
  end component;

  --Inputs
  signal sw3, sw2, sw1, sw0 : std_logic;
  --Outputs
  signal led0 : std_logic;
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
  begin		
    sw3<='0';sw2<='0';sw1<='0';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='0';sw1<='0';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='0';sw1<='1';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='0';sw1<='1';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='1';sw1<='0';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='1';sw1<='0';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='1';sw1<='1';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='0';sw2<='1';sw1<='1';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='0';sw1<='0';sw0<='0';wait for 20 ns;
    assert led0 = '1'
    report "bad result" severity error;
    sw3<='1';sw2<='0';sw1<='0';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='0';sw1<='1';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='0';sw1<='1';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='1';sw1<='0';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='1';sw1<='0';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='1';sw1<='1';sw0<='0';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;
    sw3<='1';sw2<='1';sw1<='1';sw0<='1';wait for 20 ns;
    assert led0 = '0'
    report "bad result" severity error;

    report "Tests passed!" severity note;
    wait;
  end process;
end behavior;
