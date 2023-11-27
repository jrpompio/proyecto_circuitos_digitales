`include "comparador1bit.v"
`include "tester.v"

module testbench;
reg x0, y0, eq0;
initial begin
$dumpvars;
$monitor("x=%b y=%b eq=%b", x0, y0, eq0);
end
comparador1bit culopanochoteta(.x(x0), .y(y0), .eq(eq0));
tester    panochoculoteta(.x(x0), .y(y0), .eq(eq0));
endmodule
