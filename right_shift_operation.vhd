----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 19:18:17
-- Design Name: 
-- Module Name: right_shift_operation - Behavioral
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

entity right_shift_operation is
port( a_i       : in std_logic_vector(3 downto 0);
      result    : out std_logic_vector(3 downto 0)
      );
end right_shift_operation;

architecture Behavioral of right_shift_operation is

begin
    result(2 downto 0) <= a_i(3 downto 1);
    result(3) <= '0'; 

end Behavioral;
