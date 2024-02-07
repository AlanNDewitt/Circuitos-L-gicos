----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:40 11/16/2021 
-- Design Name: 
-- Module Name:    PRIMOS_PARES - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PRIMOS_PARES is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           B : in  STD_LOGIC;
           A : in  STD_LOGIC;
           PRIMOS : out  STD_LOGIC;
           PARES : out  STD_LOGIC);
end PRIMOS_PARES;

architecture Behavioral of PRIMOS_PARES is

begin
PRIMOS<=((NOT D) AND A)OR
((NOT D)AND(NOT C)AND B)OR
(C AND (NOT B)AND A)OR
((NOT C)AND B AND A);
PARES<=((NOT C)AND (NOT A))OR
((NOT D)AND (NOT A));

end Behavioral;

