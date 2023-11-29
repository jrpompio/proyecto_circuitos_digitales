module Inicial_ID(
    A, B, M, N
);
input wire A, B; // definición de entradas de la celda
output wire M, N; // definición de salidas de la celda 

assign M = A | ~B;
assign N = ~A | B;


endmodule 