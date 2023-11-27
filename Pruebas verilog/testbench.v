`include "comparador1bit.v"
`include "tester.v"

module testbench;
wire x, y, eq;
initial begin
$dumpvars;
$monitor("x=%b y=%b eq=%b", x, y, eq);
end
comparador1bit culopanochoteta(.x(x), .y(y), .eq(eq));
tester    panochoculoteta(.x(x), .y(y), .eq(eq));
endmodule
