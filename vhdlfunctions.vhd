library ieee;
use ieee.std_logic_1164.all;

entity vhdlfunctions is
port (
    w1, w2, w3 : in std_logic;
    f : out std_logic
);
end vhdlfunctions;

architecture behavior of vhdlfunctions is
begin f <= not (w1 and w2 and w3);
end behavior;