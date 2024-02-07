----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:03 11/17/2021 
-- Design Name: 
-- Module Name:    Decodificador - Behavioral 
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

entity Decodificador is

	Port(
		   habilita0 : out STD_LOGIC;
			habilita1 : out STD_LOGIC;
			habilita2 : out STD_LOGIC;
			habilita3 : out STD_LOGIC;
			
			Entrada : in STD_LOGIC_VECTOR(3 downto 0);
			Salida : out STD_LOGIC_VECTOR(7 downto 0)
			
			);
		
			
end Decodificador;

architecture Behavioral of Decodificador is


begin
								-- 1 apagado 0 encendido el display 3
	habilita0 <= '1';
	habilita1 <= '1';
	habilita2 <= '1';
	habilita3 <= '0';
	
	with Entrada select Salida <= "01000000" when "0000",
											"01110001" when "0001",	
											"01000100" when "0010",
											"00110000" when "0011",
											"00011001" when "0100",
											"00010010" when "0101",
											"00000010" when "0110",
											"01111000" when "0111",
											"00000000" when "1000",
											"00010000" when "1001",
											"11111110" when others;

end Behavioral;

