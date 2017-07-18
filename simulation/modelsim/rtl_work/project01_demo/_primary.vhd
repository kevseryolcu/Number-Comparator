library verilog;
use verilog.vl_types.all;
entity project01_demo is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        b               : in     vl_logic_vector(4 downto 0);
        r               : out    vl_logic_vector(1 downto 0)
    );
end project01_demo;
