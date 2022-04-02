----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 18:55:24
-- Design Name: 
-- Module Name: adder_4bit - Behavioral
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

entity adder_4bit is
generic (n : integer := 4);

port (a_i           : in std_logic_vector(3 downto 0);
      b_i           : in std_logic_vector(3 downto 0);
      carry_in      : in std_logic;
      sum           : out std_logic_vector(3 downto 0);
      carry_out     : out std_logic
      );
end adder_4bit;

architecture Behavioral of adder_4bit is
    component full_adder is
    port (a_i           : in std_logic;
          b_i           : in std_logic;
          carry_in      : in std_logic;
          sum           : out std_logic;
          carry_out     : out std_logic
          );
    end component;
signal temp : std_logic_vector (4 downto 0) := (others => '0');
begin
temp(0) <= carry_in;
carry_out <= temp(4);

full_adder_gen: for k in 0 to 3 generate
    full_adder_k : full_adder
    port map(a_i => a_i(k),
             b_i => b_i(k),
             carry_in => temp(k),
             sum => sum(k),
             carry_out => temp(k+1)
             );
end generate;
end Behavioral;
