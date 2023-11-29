module Tipica_DI(
    n, A, B, N
);

input wire n, A, B; // definición de entradas de la celda
output wire N; // definición de salidas de la celda

wire notA, s0, s1, s2; //equivalencias para la función

not not_gate(notA, // Salida del not
                A); // entrada del not
or or_gate(s1, // salida del or
        notA, B); // salidas del or 
and and_gate(s0, // Entrada del and
        notA, B); // salidas del and 
and and_gate2(s2, // salida del and 2
        n, s1); // salidas del and 2 
or or_gate2(N, // salidas del or 2
        s2, s0); // entradas del or 2

/* Se tiene que: 
N = s2 | s0 
N = n & s1 | ~A & B 
N = n & (~A | B) | ~A & B
Por lo que cumple con
la función lógica obtenida
*/
endmodule