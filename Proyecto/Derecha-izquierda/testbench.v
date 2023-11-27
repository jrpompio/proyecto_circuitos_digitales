`include "celda_noinicial.v"
`include "tester.v"

module testbench;
wire A0, B0, n0, N0;

initial begin
$dumpvars;
$monitor("A=%b B=%b n=%b N=Z=%b", A0, B0, n0, N0);
end
tester instancia_datos(.A_valor(A0), .B_valor(B0), .N(N0), .n_valor(n0));
noInicial_DI instancia_noinicial(.n(n0), .A(A0), .B(B0), .N(N0));
noInicial_DI instancia_noinicial2(.n(N0), .A(A0), .B(B0), .N(N0));
endmodule
