library verilog;
use verilog.vl_types.all;
entity fixed_adder is
    port(
        num1            : in     vl_logic_vector(15 downto 0);
        num2            : in     vl_logic_vector(15 downto 0);
        result          : out    vl_logic_vector(15 downto 0);
        overflow        : out    vl_logic
    );
end fixed_adder;
