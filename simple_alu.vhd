----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 19:36:17
-- Design Name: 
-- Module Name: simple_alu - Behavioral
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

entity simple_alu is
    port( a_i : in std_logic_vector(3 downto 0);
          b_i : in std_logic_vector(3 downto 0);
          operation : in std_logic_vector(7 downto 0);
          result : out std_logic_vector(3 downto 0);
          carry_out : out std_logic;
          zero : out std_logic
          );
          
end simple_alu;

architecture Behavioral of simple_alu is

begin
    process(a_i, b_i, operation)
    begin
        case operation is
            when "000" => result <= a_i and b_i;
            when "001" => result <= a_i or b_i;
            when "010" => result <= a_i xor b_i;
            when "011" => result <= a_i + b_i;
            when "100" => result <= a_i - b_i;
            when "101" =>
                result(3 downto 1) <= a_i(2 downto 0);
                result(0) <= '0';
            when "110" => 
                result (2 downto 0) <= a_i(3 downto 1);
                result(0) <= '0';
            when others => NULL;
        end case;
    end process;
    
end Behavioral;
