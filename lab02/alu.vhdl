library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity alu is
  port(
  a : in STD_LOGIC_VECTOR(2 downto 0);
  b : in STD_LOGIC_VECTOR(2 downto 0);
  Result : out STD_LOGIC_VECTOR(2 downto 0);
  Carry : out STD_LOGIC
  );
end entity alu;

architecture Dataflow of alu is
  signal res_t: STD_LOGIC_VECTOR(3 downto 0);
begin
  res_t <= STD_LOGIC_VECTOR(UNSIGNED("0" & a) + UNSIGNED("0" & b));
  Result <= res_t(2 downto 0);
  Carry <= res_t(3);
end Dataflow;
