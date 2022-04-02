----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 21:28:54
-- Design Name: 
-- Module Name: full_subtracter - Behavioral
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

entity full_subtracter is
    port (a_i           : in std_logic;
          b_i           : in std_logic;
          carry_in      : in std_logic;
          sub           : out std_logic;
          carry_out     : out std_logic
          );
end full_subtracter;

architecture Behavioral of full_subtracter is

begin
sub <=  a_i xor (not b_i) xor carry_in;
carry_out <= (a_i and b_i) or ((a_i xor b_i) and carry_in);


end Behavioral;
