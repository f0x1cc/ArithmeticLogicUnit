----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 19:13:42
-- Design Name: 
-- Module Name: or_operation - Behavioral
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

entity or_operation is
port( a_i       : in std_logic_vector(3 downto 0);
      b_i       : in std_logic_vector(3 downto 0);
      result    : out std_logic_vector(3 downto 0)
      );    

end or_operation;

architecture Behavioral of or_operation is

begin
    result <= a_i or b_i;
end Behavioral;
