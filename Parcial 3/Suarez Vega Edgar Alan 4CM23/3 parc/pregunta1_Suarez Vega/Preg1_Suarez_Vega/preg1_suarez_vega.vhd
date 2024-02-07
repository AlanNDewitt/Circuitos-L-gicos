----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:46 12/16/2021 
-- Design Name: 
-- Module Name:    preg1_suarez_vega - Behavioral 
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

entity preg1_suarez_vega is

	Port(
	
		V : in STD_LOGIC_VECTOR (3 downto 0);
		Z : out STD_LOGIC_VECTOR (2 downto 0));


end preg1_suarez_vega;

architecture Behavioral of preg1_suarez_vega is

begin

	Z (0) <= ( (NOT V(3)) AND (NOT V(2)) AND (NOT V(1)) AND (V(0)) )
				OR (  (NOT V(3)) AND (NOT V(2)) AND (V(1)) AND (V(0)) );
				
	Z(1) <= '0';
	Z(2) <= '0';
	
end Behavioral;

