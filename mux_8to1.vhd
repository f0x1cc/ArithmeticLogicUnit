----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 18:40:51
-- Design Name: 
-- Module Name: mux_8to1 - Behavioral
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

entity mux_8to1 is
port( i0, i1, i2, i3, i4, i5, i6, i7 : in std_logic_vector(3 downto 0);
     selection                      : in std_logic_vector(7 downto 0);
     result                         : out std_logic_vector(3 downto 0)
     );
end mux_8to1;

architecture Behavioral of mux_8to1 is

begin
    process(selection, i0, i1, i2, i3, i4, i5, i6, i7)
    begin
        case selection is
            when "000" => result <= i0;
            when "001" => result <= i1;
            when "010" => result <= i2;
            when "011" => result <= i3;
            when "100" => result <= i4;
            when "101" => result <= i5;
            when "110" => result <= i6;
            when "111" => result <= i7;
            when others => NULL;
        end case;
    end process;
end Behavioral;
