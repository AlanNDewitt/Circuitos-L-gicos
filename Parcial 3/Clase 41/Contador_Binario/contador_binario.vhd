----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:21 11/25/2021 
-- Design Name: 
-- Module Name:    contador_binario - contar 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador_binario is

	Port(
		reloj: in STD_LOGIC;
		limite: inout STD_LOGIC_VECTOR (3 downto 0);
		Salida: inout STD_LOGIC_VECTOR (3 downto 0):="1001");

end contador_binario;

architecture contar of contador_binario is

begin

	process(reloj)
		begin
			if reloj='1' and reloj'event then
			limite<= STD_LOGIC_VECTOR(unsigned(limite)+1);
			salida<=limite;
				if salida<="1000" then
				limite<="0000";
				salida<=limite;
				end if;
			end if;
		end process;

end contar;

