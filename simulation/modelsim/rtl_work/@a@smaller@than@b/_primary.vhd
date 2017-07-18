library verilog;
use verilog.vl_types.all;
entity ASmallerThanB is
    port(
        Z               : out    vl_logic;
        Y               : in     vl_logic;
        M               : in     vl_logic
    );
end ASmallerThanB;
