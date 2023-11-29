`include "celda_inicial.v"
`include "celda_tipica.v"
`include "celda_final.v"

module red_iterativa
#(parameter K = 5) // Se define un parametro inicial
// para así poder varial el mismo.
( 
  input [K-1:0] A, // Entradas en cantidad K
  input [K-1:0] B,
  output[K-1:0] M,
  output [K-1:0] N, // Salidas en cantidad K
  output Z // Salida final
);

  // Módulo inicial para comparar el bit menos significativo
  Inicial_ID inicial(
    .A(A[0]), // Entrada A de celda inicial
    .B(B[0]), // Entrada B de celda inicial
    .M(M[0]), // Salida M de celda inicial 
    .N(N[0])  // Salida N de celda inicial
  );


  // Módulo típico para comparar los bits intermedios
  genvar i; // Se declara una variable para el generate
  generate // inicio del bloque generate
    //if (K > 1) begin // if usado para probar K = 1

  for (i = 1; i < K-1; i = i + 1) // ciclo for para iterar
  // y así generar K-2 veces la celda tipica 
  begin:
    serie_tipica // Nombre de la serie generada
    Tipica_ID // Modulo usado
    tipico( // nombre de la instancia
        .m(M[i-1]), // entrada m celda tipica #i; salida M anterior
        .n(N[i-1]),  // entrada n celda tipica #i; Salida N anterior
        .A(A[i]), // Entrada A para celda tipica #i
        .B(B[i]), // Entrada B para celda tipica #i
        .M(M[i]), // Salida M de la celda típica #i
        .N(N[i]) // Salida N de la celda tipica #i
      );
    end
    //end
  endgenerate
  
  // Módulo final para comparar el bit más significativo
//  if (K > 1) begin
  Final_ID final(
    .m(M[K-2]), // entrada m celda final; salida ultima celda tipica
    .n(N[K-2]),  // entrada n celda final; Salida ultima celda tipica
    .A(A[K-1]), // Entrada A para celda final
    .B(B[K-1]), // Entrada B para celda final
    .Z(N[K-1]) // Salida N para Celda final
  );          // Que se usará para obtener el valor Z
  // end
  assign Z = N[K-1]; // Se asiga el ultimo valor de N a Z

endmodule
