----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 19:21:45
-- Design Name: 
-- Module Name: left_shift_operation - Behavioral
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

entity left_shift_operation is
port(a_i        : in std_logic_vector(3 downto 0);
     result     : out std_logic_vector(3 downto 0)
     );
end left_shift_operation;

architecture Behavioral of left_shift_operation is

begin
    result(3 downto 1) <= a_i(2 downto 0);
    result(0) <= '0';

end Behavioral;
