`include "celda_inicial.v"
`include "celda_tipica.v"
`include "celda_final.v"

module red_iterativa #(parameter K = 1) (
  input [K-1:0] A, 
  input [K-1:0] B,
  output [K-1:0] Z
);

  // Módulo inicial para comparar el bit menos significativo
  Inicial_DI inicial(
    .A(A[0]),
    .B(B[0]),
    .N(Z[0])  // N de Inicial_DI conectado a Z en red_iterativa
  );


  // Módulo típico para comparar los bits intermedios
  genvar i;
  generate
    for (i = 1; i < K-1; i = i + 1) begin : serie_tipica
      Tipica_DI tipico(
        .n(Z[i-1]),  // Conectar la salida de la instancia anterior a la entrada n en el tipico actual
        .A(A[i]),
        .B(B[i]),
        .N(Z[i])
      );
    end
  endgenerate

  // Módulo final para comparar el bit más significativo
  Final_DI final(
    .n(Z[K-2]),  // Conectar la salida del último Tipica_DI a la entrada n en el Final_DI
    .A(A[K-1]),
    .B(B[K-1]),
    .Z(Z[K-1])
  );


endmodule
