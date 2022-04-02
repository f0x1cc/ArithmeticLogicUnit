----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 23:27:35
-- Design Name: 
-- Module Name: full_subtractor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_subtractor is
    port( a_i : in std_logic;
          b_i : in std_logic;
          br_in : in std_logic;
          dif : out std_logic;
          br_out: out std_logic
          );
          
end full_subtractor;

architecture Behavioral of full_subtractor is

begin

dif <= ((not a_i) and (not b_i) and br_in) or ((not a_i) and b_i and (not br_in)) or (a_i and (not b_i) and (not br_in)) or (a_i and b_i and br_in);
br_out <= ((not a_i) and b_i) or ((not a_i) and br_in) or (b_i and br_in);

end Behavioral;
