----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 23:30:33
-- Design Name: 
-- Module Name: fourbit_sub - Behavioral
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

entity fourbit_sub is
generic (n : integer := 4);

port (a_i           : in std_logic_vector(3 downto 0);
      b_i         : in std_logic_vector(3 downto 0);
      br_in      : in std_logic;
      dif           : out std_logic_vector(3 downto 0);
      br_out     : out std_logic
      );
end fourbit_sub;

architecture Behavioral of fourbit_sub is
    component full_subtractor is
    port (a_i           : in std_logic;
          b_i           : in std_logic;
          br_in      : in std_logic;
          dif           : out std_logic;
          br_out     : out std_logic
          );
    end component;
signal temp : std_logic_vector (4 downto 0) := (others => '0');
begin
temp(0) <= br_in;
br_out <= temp(4);

full_sub_gen: for k in 0 to 3 generate
    full_sub_k : full_subtractor
    port map(a_i => a_i(k),
             b_i => b_i(k),
             br_in => temp(k),
             dif => dif(k),
             br_out => temp(k+1)
             );
end generate;
end Behavioral;
