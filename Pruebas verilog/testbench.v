`include "comparador1bit.v"
`include "tester.v"

module testbench;
wire x0, y0, eq0;
initial begin
$dumpvars;
$monitor("x=%b y=%b eq=%b", x0, y0, eq0);
end
comparador1bit instancia_comparador(.x(x0), .y(y0), .eq(eq0));
tester    instancia_datos(.x(x0), .y(y0), .eq(eq0));
endmodule
