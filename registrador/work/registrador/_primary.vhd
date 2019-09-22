library verilog;
use verilog.vl_types.all;
entity registrador is
    port(
        dado            : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        habilita_escrita: in     vl_logic;
        saida           : out    vl_logic_vector(15 downto 0)
    );
end registrador;
