module Inicial_ID(
    A, B, M, N
);
input M, A; // definición de entradas de la celda
output M, N; // definición de salidas de la celda 

assign M = A | ~B;
assign N = ~A | B;


endmodule 