library verilog;
use verilog.vl_types.all;
entity mux_4x1 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        Control         : in     vl_logic_vector(1 downto 0);
        S               : out    vl_logic
    );
end mux_4x1;
