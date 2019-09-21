library verilog;
use verilog.vl_types.all;
entity registrador is
    port(
        data            : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        saida           : out    vl_logic_vector(15 downto 0)
    );
end registrador;
