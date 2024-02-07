--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:37:16 12/16/2021
-- Design Name:   
-- Module Name:   C:/Users/Edgar Alan/Documents/Circuitos Logicos II/Parcial 3/Suarez Vega Examen/3 parc/pregunta1_Suarez Vega/Preg1_Suarez_Vega/TEST.vhd
-- Project Name:  Preg1_Suarez_Vega
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: preg1_suarez_vega
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
 
ENTITY TEST IS
END TEST;
 
ARCHITECTURE behavior OF TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT preg1_suarez_vega
    PORT(
         V : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal V : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: preg1_suarez_vega PORT MAP (
          V => V,
          Z => Z
        );

   -- Clock process definitions
   
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		V <= "0000";
		wait for 50 ns;
		V <= "0001";
		wait for 50 ns;
		V <= "0010";
		wait for 50 ns;
		V <= "0011";
		wait for 50 ns;
		V <= "0100";
		wait for 50 ns;
		V <= "0101";
		wait for 50 ns;
		V <= "0110";
		wait for 50 ns;
		V <= "0111";
		wait for 50 ns;
		V <= "1000";
		wait for 50 ns;
		V <= "1001";
		wait for 50 ns;
		V <= "1010";
		wait for 50 ns;
		V <= "1011";
		wait for 50 ns;
		V <= "1100";
		wait for 50 ns;
		V <= "1101";
		wait for 50 ns;
		V <= "1110";
		wait for 50 ns;
		V <= "1111";
		wait for 50 ns;
		
		
   end process;

END;
