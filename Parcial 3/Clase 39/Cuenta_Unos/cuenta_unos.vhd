----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:10:45 11/18/2021 
-- Design Name: 
-- Module Name:    cuenta_unos - Behavioral 
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

entity cuenta_unos is

	Port(
	habilita0 : out bit;
	habilita1 : out bit;
	habilita2 : out bit;
	habilita3 : out bit;
	z : out STD_LOGIC;
	Entrada: in STD_LOGIC_VECTOR (3 downto 0);
	Salida: out STD_LOGIC_VECTOR (7 downto 0));

end cuenta_unos;

architecture Behavioral of cuenta_unos is

begin

z <= ( (NOT Entrada(3) ) AND (NOT Entrada (1) ) )
OR
( (NOT Entrada(3) ) AND (NOT Entrada(2) ) ) ;

WITH Entrada SELECT Salida <= "01000000" WHEN "0000",
										"01111001" WHEN "0001",
										"01111001" WHEN "0010", --2
										"01000100" WHEN "0011", --3
										"01111001" WHEN "0100", --4
										"01000100" WHEN "0101", --5
										"01000100" WHEN "0110", --6
										"00110000" WHEN "0111", --7
										"01111001" WHEN "1000", --8
										"01000100" WHEN "1001", --9
										"01000100" WHEN "1010", --10
										"00110000" WHEN "1011", --11
										"01000100" WHEN "1100", --12
										"00110000" WHEN "1101", --13
										"00110000" WHEN "1110", --14
										"00011001" WHEN "1111", --15
										"00000000" WHEN OTHERS ; --15

end Behavioral;

