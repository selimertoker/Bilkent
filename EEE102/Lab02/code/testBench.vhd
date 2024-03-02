library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity testbench1 is
end testbench1;

architecture Behavioral of testbench1 is
component top_module is
        Port (
            i_sw : in std_logic_vector (7 downto 0);
            o_led : out std_logic_vector (7 downto 0)
            );
    end component;
    
    signal i_input_byte_tb : std_logic_vector (7 downto 0);
    signal o_output_byte_tb : std_logic_vector (7 downto 0);
    
begin

    DUT: top_module port map (
        i_sw => i_input_byte_tb,
        o_led => o_output_byte_tb
     );
     
     
process

    begin
        for i in 0 to 255 loop
        i_input_byte_tb  <=  std_logic_vector(to_unsigned(i, 8));
            wait for 10 ns;
        end loop;
        wait;
    end process;


end Behavioral;
