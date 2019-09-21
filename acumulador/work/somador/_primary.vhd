library verilog;
use verilog.vl_types.all;
entity somador is
    port(
        E0              : in     vl_logic_vector(15 downto 0);
        E1              : in     vl_logic_vector(15 downto 0);
        S               : out    vl_logic_vector(15 downto 0)
    );
end somador;
