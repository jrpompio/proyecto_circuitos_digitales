module Tipica_ID(
    m, n, A, B, M, N 
);
input wire m, n, A, B; // definición  de entradas de la celda 
output wire M, N;  // definición de salidas de la celda 

wire s0, s1. s2, s4; // equivalencias para la función 

assign s0 = A | ~B 
assign s1 = m & s0 
assign s2 = ~A | B 
assign s3 = n & s2
assign M = ~n | s1
assign N = ~m | s3

/* Se tiene entonces que:
M = ~n | m & (A | ~B) y 
N = ~m | n & (~A | B)
*/
endmodule