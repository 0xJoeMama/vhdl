library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity alu_tb is
end alu_tb;

architecture Dataflow_tb of alu_tb is
    component alu is
        port(
        a: in std_logic_vector(2 downto 0);
        b: in std_logic_vector(2 downto 0);
        Carry: out std_logic;
        Result: out std_logic_vector(2 downto 0)
        );
    end component;

    signal a_in, b_in, res : std_logic_vector(2 downto 0);
    signal cout: std_logic;
begin
    uut: alu port map (
        a => a_in,
        b => b_in,
        Result => res,
        Carry => cout
    );

    process
        variable s: std_logic_vector(3 downto 0);
        variable il: unsigned(3 downto 0);
        variable jl: unsigned(3 downto 0);
    begin
        for i in 0 to 7 loop
            il := TO_UNSIGNED(i, 4);
            a_in <= std_logic_vector(resize(il, a_in'length)); -- removes the first bit btw
            for j in 0 to 7 loop
                jl := to_unsigned(j, 4);
                b_in <= std_logic_vector(resize(jl, b_in'length));
                wait for 20 ns;

                s := std_logic_vector(il + jl);

                assert res = s(2 downto 0) report "Bad Result" severity error;
                assert cout = s(3) report "Bad Carry" severity error;
            end loop;
        end loop;
        report "Tests passed" severity note;
        wait;
    end process;
end Dataflow_tb;
