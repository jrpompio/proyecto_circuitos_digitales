`include "red_iterativa.v"
/*`include "celda_inicial.v"
`include "celda_tipica.v"
`include "celda_final.v"*/
`include "tester.v"

module testbench;
wire A0, B0, N0;

initial begin
$dumpvars;
$monitor("A=%b B=%b Z=%b", A0, B0, N0);
end 

tester instancia_datos(
    .A_valor(A0),
    .B_valor(B0)    
    );

red_iterativa #(1) red(
    .A(A0),
    .B(B0),
    .Z(N0)
    );

/*Inicial_DI instancia_tipica(
    .A(A0),
    .B(B0),
    .N(N0)
);*/

endmodule
