----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 06:48:16 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
--    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
--           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    component sevenseg_decoder is
        Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
               o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
              
  end component;
  
  signal i_Hex : STD_LOGIC_VECTOR (3 downto 0);
  signal o_seg_n : STD_LOGIC_VECTOR (6 downto 0);
  
  
begin

    sevenseg_decoder_inst : sevenseg_decoder port map (
			i_Hex => i_Hex,
            o_seg_n => o_seg_n
        );
    
    test_process : process
    begin
    i_Hex <= x"0"; wait for 10 ns;
        assert o_seg_n = "1000000" report "error on x0" severity failure;
    i_Hex <= x"F"; wait for 10 ns;
        assert o_seg_n = "0001110" report "error on x0" severity failure;
    i_Hex <= x"8"; wait for 10 ns;
        assert o_seg_n = "0000000" report "error on x0" severity failure;
    i_Hex <= x"A"; wait for 10 ns;
        assert o_seg_n = "0001000" report "error on x0" severity failure;

    wait;
    end process test_process;
end Behavioral;
