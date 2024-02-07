---------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:09:25 11/25/2021
-- Design Name:   
-- Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 3/Clase 41/Contador_Binario/contador_binario_simula_bench.vhd
-- Project Name:  Contador_Binario
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador_binario
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY contador_binario_simula_bench IS
END contador_binario_simula_bench;
 
ARCHITECTURE behavior OF contador_binario_simula_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador_binario
    PORT(
         reloj : IN  std_logic;
         limite : INOUT  std_logic_vector(3 downto 0);
         Salida : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reloj : std_logic := '0';

	--BiDirs
   signal limite : std_logic_vector(3 downto 0);
   signal Salida : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador_binario PORT MAP (
          reloj => reloj,
          limite => limite,
          Salida => Salida
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   
	 stim_procR:process
	 begin
	 wait for 10ms;
	 reloj<=not reloj;
	 end process;

END;
