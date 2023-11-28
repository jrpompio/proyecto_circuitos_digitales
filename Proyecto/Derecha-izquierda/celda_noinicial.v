module noInicial_DI(
    n, A, B, N
);

input wire n, A, B; // definición de entradas de la celda
output wire N; // definición de salidas de la celda

wire s0, s1, s2; //equivalencias para la función

assign s0 = ~A & B;
assign s1 = ~A | B;
assign s2 = n & s1;
assign N = s2 | s0;

/* Se tiene que: 
 N = s2 | s0 
= n & s1 | ~A & B 
= n & (~A | B) | ~A & B
*/

endmodule