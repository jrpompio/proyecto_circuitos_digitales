`include "celda_inicial.v"
`include "celda_tipica.v"
`include "celda_final.v"

module red (
  input [K-1:0] A, 
  input [K-1:0] B,
  input K,
  output salida
);

  // Módulo inicial para comparar el bit menos significativo
  Inicial_DI inicial(
    .A(A[0]),
    .B(B[0]),
    .N(salida[0])
  );

  // Módulo típico para comparar los bits intermedios
  genvar i;
  generate
    for (i = 1; i < K-1; i = i + 1) begin : serie_tipica
      Tipica_DI tipico(
        .A(A[i]),
        .B(B[i]),
        .N(salida[i])
      );
    end
  endgenerate

  // Módulo final para comparar el bit más significativo
  Final_DI final(
    .A(A[K-1]),
    .B(B[K-1]),
    .N(salida[K-1])
  );

endmodule
