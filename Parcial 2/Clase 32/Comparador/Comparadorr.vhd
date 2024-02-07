----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:07:20 11/11/2021 
-- Design Name: 
-- Module Name:    Comparadorr - Behavioral 
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

entity Comparadorr is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           B : in  STD_LOGIC;
           A : in  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Comparadorr;

architecture Behavioral of Comparadorr is

begin

Y <= (D AND (NOT B)) OR (D AND C AND (NOT A)) --se puede escribir de corrido pero dimos salto para mejor vista
		OR (C AND (NOT B) AND (NOT A));
		
Z <= (D XNOR B) AND (C XNOR A);		

end Behavioral;

