----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 21:31:33
-- Design Name: 
-- Module Name: subtracter_4bit - Behavioral
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

entity subtracter_4bit is
generic (n : integer := 4);

port (a_i           : in std_logic_vector(3 downto 0);
      b_i           : in std_logic_vector(3 downto 0);
      carry_in      : in std_logic;
      sub           : out std_logic_vector(3 downto 0);
      carry_out     : out std_logic
      );
end subtracter_4bit;

architecture Behavioral of subtracter_4bit is
    component full_subtracter is
    port (a_i           : in std_logic;
          b_i           : in std_logic;
          carry_in      : in std_logic;
          sub           : out std_logic;
          carry_out     : out std_logic
          );
    end component;
signal temp : std_logic_vector (4 downto 0) := (others => '0');
begin
temp(0)<= '1'; 
temp(0) <= carry_in;
carry_out <= temp(4);

full_subtracter_gen: for k in 0 to 3 generate
    full_subtracter_k : full_subtracter
    port map(a_i => a_i(k),
             b_i => b_i(k),             
             carry_in => temp(k),
             sub => sub(k),
             carry_out => temp(k+1)
             );
end generate;
end Behavioral;
