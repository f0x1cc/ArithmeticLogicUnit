----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2022 19:46:48
-- Design Name: 
-- Module Name: compound_alu - Behavioral
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

entity compound_alu is
    port( a_i       : in std_logic_vector(3 downto 0);
          b_i       : in std_logic_vector(3 downto 0);
          operation : in std_logic_vector(2 downto 0);
          result    : out std_logic_vector(3 downto 0);
          carry_out : out std_logic
          );
end compound_alu;

architecture Behavioral of compound_alu is
    component adder_4bit is
    generic (n : integer := 4);
    
    port (a_i           : in std_logic_vector(3 downto 0);
          b_i           : in std_logic_vector(3 downto 0);
          carry_in      : in std_logic;
          sum           : out std_logic_vector(3 downto 0);
          carry_out     : out std_logic
          );
    end component;
    
    component and_operation is
    port( a_i       : in std_logic_vector(3 downto 0);
          b_i       : in std_logic_vector(3 downto 0);
          result    : out std_logic_vector(3 downto 0)
          );    
    end component;
    
    component left_shift_operation is
    port(a_i        : in std_logic_vector(3 downto 0);
         result     : out std_logic_vector(3 downto 0)
         );
    end component;

    component right_shift_operation is
    port( a_i       : in std_logic_vector(3 downto 0);
          result    : out std_logic_vector(3 downto 0)
          );
    end component;

    
    component or_operation is
    port( a_i       : in std_logic_vector(3 downto 0);
          b_i       : in std_logic_vector(3 downto 0);
          result    : out std_logic_vector(3 downto 0)
          );    

    end component;
    
    component fourbit_sub is
    generic (n : integer := 4);
    
    port (a_i           : in std_logic_vector(3 downto 0);
          b_i         : in std_logic_vector(3 downto 0);
          br_in      : in std_logic;
          dif           : out std_logic_vector(3 downto 0);
          br_out     : out std_logic
          );
    end component;

    component xor_operation is
    port( a_i       : in std_logic_vector(3 downto 0);
          b_i       : in std_logic_vector(3 downto 0);
          result    : out std_logic_vector(3 downto 0)
          );    
    end component;

    component not_a_operation is
    port(a_i : in std_logic_vector(3 downto 0);
         res : out std_logic_vector(3 downto 0)
         );
    end component;


        
    signal result1, result2, result3, result4, result5, result6, result7, result8 : std_logic_vector(3 downto 0);
    signal c1, c2, c3 : std_logic;
    begin
                       
    adder1: adder_4bit  port map(a_i => a_i,
                                 b_i => b_i,
                                 carry_in => '0',
                                 sum => result1,
                                 carry_out => carry_out
                                 );
    sub1 : fourbit_sub port map(a_i => a_i,
                                b_i => b_i,
                                br_in => '0',
                                dif => result2
                                );
                                 

    and1: and_operation port map (a_i, b_i, result3);
    or1 : or_operation port map (a_i, b_i, result4);
    lsr1: right_shift_operation port map(a_i, result5);
    lsl1: left_shift_operation port map(a_i, result6);
    xor1 : xor_operation port map (a_i,b_i,result7);
    not1 : not_a_operation port map(a_i, result8);
my_case: process(a_i,b_i,operation)
begin
 case operation is  -- decode the opcode and perform the operation:
 when "000" =>  result <= result1; 
 when "001" =>  result <= result2;   
 when "010" =>  result <= result3;   
 when "011" =>  result <= result4;   
 when "100" =>  result <= result5;   
 when "101" =>  result <= result6; 
 when "110" =>  result <= result7;  
 when "111" =>  result  <= result8; 
 when others => NULL;
end case; 
case operation is 
    when "000" =>  carry_out<= c1;   
    when "001" =>  carry_out <=c2;   
    when others => carry_out<='0';
    
end case;
end process;

end Behavioral;
