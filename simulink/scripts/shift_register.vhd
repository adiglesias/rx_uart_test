----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2024 15:46:51
-- Design Name: 
-- Module Name: shift_register - Behavioral
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

entity shift_register is
    Port ( rst : in STD_LOGIC;
           d : in STD_LOGIC;
           en : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end shift_register;

architecture Behavioral of shift_register is

    signal q_aux:std_logic_vector(7 downto 0);

begin

    process(en, rst)
        begin
            if rst = '1' then
                q_aux <= (others => '0');
            else
                if en = '1' then
                    q_aux <= d & q_aux(7 downto 1);			
                end if;
            end if;
    end process;
    
	q <= q_aux;
	
end Behavioral;