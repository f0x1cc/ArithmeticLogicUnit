----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 19:28:25
-- Design Name: 
-- Module Name: xor_operation - Behavioral
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

entity xor_operation is
port( a_i       : in std_logic_vector(3 downto 0);
      b_i       : in std_logic_vector(3 downto 0);
      result    : out std_logic_vector(3 downto 0)
      );    
end xor_operation;

architecture Behavioral of xor_operation is

begin
    result <= a_i xor b_i;
end Behavioral;
