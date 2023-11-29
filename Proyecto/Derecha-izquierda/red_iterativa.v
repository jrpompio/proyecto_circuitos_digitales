`include "celda_inicial.v"
`include "celda_tipica.v"
`include "celda_final.v"

module red_iterativa #(parameter K = 5) (
  input [K-1:0] A, 
  input [K-1:0] B,
  output [K-1:0] N,
  output Z
);

  // Módulo inicial para comparar el bit menos significativo
  Inicial_DI inicial(
    .A(A[0]),
    .B(B[0]),
    .N(N[0])  // N de Inicial_DI conectado a Z en red_iterativa
  );


  // Módulo típico para comparar los bits intermedios
  genvar i;

  generate
    //if (K > 1) begin
    for (i = 1; i < K-1; i = i + 1) begin : serie_tipica
      Tipica_DI tipico(
        .n(N[i-1]),  // Conectar la salida de la instancia anterior a la entrada n en el tipico actual
        .A(A[i]),
        .B(B[i]),
        .N(N[i])
      );
    end
    //end
  endgenerate
  
  // Módulo final para comparar el bit más significativo
//  if (K > 1) begin
  Final_DI final(
    .n(N[K-2]),  // Conectar la salida del último Tipica_DI a la entrada n en el Final_DI
    .A(A[K-1]),
    .B(B[K-1]),
    .Z(N[K-1])
  );
  // end
  assign Z = N[K-1];

endmodule
