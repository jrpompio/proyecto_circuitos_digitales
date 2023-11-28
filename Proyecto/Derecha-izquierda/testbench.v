`include "celda_inicial.v"
`include "tester.v"

module testbench;
wire A0, B0, N0;

initial begin
$dumpvars;
$monitor("A=%b B=%b N=Z=%b", A0, B0, N0);
end
for
tester instancia_datos(.A_valor(A0), .B_valor(B0));
always begin
Inicial_DI instancia_inicial(.A(A0), .B(B0), .N(N0)); 
end

endmodule
