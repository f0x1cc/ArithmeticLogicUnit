----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 20:15:48
-- Design Name: 
-- Module Name: mux_2to1 - Behavioral
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

entity mux_2to1 is
    port( i0, i1  :in std_logic_vector(3 downto 0);
          selection : in std_logic;
        result      : out std_logic_vector(3 downto 0)
        );
end mux_2to1;

architecture Behavioral of mux_2to1 is

begin
    process(selection, i0, i1)
    begin
        case selection is
            when '0' => result <= i0; 
            when '1' => result <= i1;
            when others => result <= "ZZZZZZZZZZZZZZZZZZZZZZZ";
        end case;
    end process;
end Behavioral;
