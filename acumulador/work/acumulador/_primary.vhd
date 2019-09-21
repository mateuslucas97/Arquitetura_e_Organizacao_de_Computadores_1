library verilog;
use verilog.vl_types.all;
entity acumulador is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        resultadoS      : out    vl_logic_vector(15 downto 0)
    );
end acumulador;
