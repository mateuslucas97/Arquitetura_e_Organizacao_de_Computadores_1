library verilog;
use verilog.vl_types.all;
entity data_path2 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        reg_dst         : in     vl_logic;
        mem_to_reg      : in     vl_logic;
        alu_op          : in     vl_logic;
        reg_write_data  : in     vl_logic;
        jump            : in     vl_logic;
        branch          : in     vl_logic;
        mem_read        : in     vl_logic;
        mem_write       : in     vl_logic;
        alu_src         : in     vl_logic;
        reg_write       : in     vl_logic
    );
end data_path2;
