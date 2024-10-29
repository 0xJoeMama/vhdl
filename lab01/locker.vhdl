library IEEE;
use IEEE.std_logic_1164.ALL;

entity locker is
  port(
    digit0, digit1, digit2, digit3: in STD_LOGIC; -- 0 = LSB
    lock_out: out STD_LOGIC
  );
end entity;

-- we need 8 which in binary is 1000
-- to match 1000 with the 4 signals we must do the following:
-- - digit3 * !digit2 * !digit1 * !digit0
architecture Dataflow of locker is
begin
  lock_out <= digit3 and (not digit2) and (not digit1) and (not digit0);
end architecture;
