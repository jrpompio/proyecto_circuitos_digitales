module Final_DI(
    n, A, B, Z
);

input wire n, A, B; // definición de entradas de la celda
output wire Z; // definición de salidas de la celda

wire s0, s1, s2; //equivalencias para la función

assign s0 = ~A & B;
assign s1 = ~A | B;
assign s2 = n & s1;
assign Z = s2 | s0;

/* Se tiene que: 
Z = s2 | s0 
Z = n & s1 | ~A & B 
Z = n & (~A | B) | ~A & B
*/

endmodule