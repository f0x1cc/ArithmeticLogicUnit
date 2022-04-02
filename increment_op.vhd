----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2022 00:54:23
-- Design Name: 
-- Module Name: increment_op - Behavioral
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

entity increment_op is
    port(a_i : in std_logic_vector(3 downto 0);
         b_i : in std_logic_vector(3 downto 0);
         carry_in : in std_logic;
         sum : out std_logic_vector(3 downto 0);
         carry_out : out std_logic
         );
end increment_op;

architecture Behavioral of increment_op is

component full_adder
port (a_i           : in std_logic;
      b_i           : in std_logic;
      carry_in      : in std_logic;
      sum           : out std_logic;
      carry_out     : out std_logic
      );
end component;

signal first, second, third :  std_logic;

begin

first_adder : full_adder
    port map(a_i => a_i(0), b_i => '1', carry_in => '0', sum => sum(0), carry_out => first);
second_adder : full_adder
    port map(a_i => a_i(1), b_i => '0', carry_in => first, sum => sum(1),carry_out => second );
third_adder : full_adder
    port map(a_i => a_i(2), b_i => '0', carry_in => second, sum => sum(2), carry_out => third);
forth_adder : full_adder
    port map(a_i => a_i(3), b_i => '0', carry_in => third, sum => sum(3),carry_out => carry_out );


end Behavioral;
