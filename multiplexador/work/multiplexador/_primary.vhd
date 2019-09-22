library verilog;
use verilog.vl_types.all;
entity multiplexador is
    port(
        entrada0        : in     vl_logic_vector(15 downto 0);
        entrada1        : in     vl_logic_vector(15 downto 0);
        entrada2        : in     vl_logic_vector(15 downto 0);
        entrada3        : in     vl_logic_vector(15 downto 0);
        entrada4        : in     vl_logic_vector(15 downto 0);
        entrada5        : in     vl_logic_vector(15 downto 0);
        entrada6        : in     vl_logic_vector(15 downto 0);
        entrada7        : in     vl_logic_vector(15 downto 0);
        controle        : in     vl_logic_vector(2 downto 0);
        saida           : out    vl_logic_vector(15 downto 0)
    );
end multiplexador;
