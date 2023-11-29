module Inicial_DI (
  input wire A, B,
  output wire N
);

  wire Z; // Cable para conectar la salida de not con la entrada de or

  // Instanciación de la compuerta NOT
  not notgate(Z,   // Salida del not
              A);  // Entrada del not
  or orgate(N,     // Salida del or
            Z,B);  // Entrada del or
endmodule
