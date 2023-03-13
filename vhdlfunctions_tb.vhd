library ieee;
use ieee.std_logic_1164.all;

entity vhdlfunctions_tb is
end entity;

architecture behavior of vhdlfunctions_tb is
component vhdlfunctions is
port(
w1 : in std_logic;
w2 : in std_logic;
w3 : in std_logic;
f : out std_logic
);
end component;

signal w1, w2, w3, f : std_logic;

begin
uut: vhdlfunctions port map (
w1 => w1,
w2 => w2,
w3 => w3,
f => f
);

stim_proc: process
begin
w1 <= '0'; w2 <= '0'; w3 <= '0'; wait for 10 ns;
w1 <= '0'; w2 <= '0'; w3 <= '1'; wait for 10 ns;
w1 <= '0'; w2 <= '1'; w3 <= '0'; wait for 10 ns;
w1 <= '0'; w2 <= '1'; w3 <= '1'; wait for 10 ns;
w1 <= '1'; w2 <= '0'; w3 <= '0'; wait for 10 ns;
w1 <= '1'; w2 <= '0'; w3 <= '1'; wait for 10 ns;
w1 <= '1'; w2 <= '1'; w3 <= '0'; wait for 10 ns;
w1 <= '1'; w2 <= '1'; w3 <= '1'; wait for 10 ns;
wait;
end process;

end behavior;