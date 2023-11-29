module Tipica_DI(
    n, A, B, N
);

input wire n, A, B; // definición de entradas de la celda
output wire N; // definición de salidas de la celda

wire notA, s0, s1, s2; //equivalencias para la función

not not_gate(notA, A);
or or_gate(s1, notA, B);
and and_gate(s0, notA, B);
and and_gate2(s2, n, s1);
or or_gate2(N, s2, s0);

/* Se tiene que: 
N = s2 | s0 
N = n & s1 | ~A & B 
N = n & (~A | B) | ~A & B
*/
endmodule