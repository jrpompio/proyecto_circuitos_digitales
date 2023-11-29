module Final_ID(
    m, n, A, B, Z
);
input wire m, n, A, B; // definición de entradas de la celda
output wire Z; // definición de salidas de la celda 


wire s0, s1;

assign s0 = ~A | B; 
assign s1 = n & s0;
assign Z = ~m | s1;

endmodule