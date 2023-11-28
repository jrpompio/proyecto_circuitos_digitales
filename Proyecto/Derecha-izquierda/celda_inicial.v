module Inicial_DI (
  input wire A, B,
  output wire N
);

  wire Z; // Cable para conectar la salida de not con la entrada de or

  // Instanciación de la compuerta NOT
  not notgate(Z,A);
  or orgate(N,Z,B);
endmodule
