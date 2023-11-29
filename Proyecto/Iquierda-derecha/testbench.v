`include "red_iterativa.v"
`include "tester.v"

module testbench;

localparam K = 4; // definición de parametro
                  // Para el tamaño de la palabra
wire [K-1:0] A0, B0, M0, N0; // Se define la cantidad de pines A, B M y N
wire Z; // Se define el pin Z

  initial begin // Initial para mostrar datos en pantalla
    $dumpvars;
    $monitor(
    "\n Los valores ingresados son:",
    "\n A=%b B=%b Z=%b \n",
    A0,
    B0,
    Z);
  end 

  tester #(K) instancia_datos( // Uso del tester
    .A_valor(A0),
    .B_valor(B0)
  );

  red_iterativa #(K) red( // Uso de la red iterativa
    .A(A0),
    .B(B0),
    .M(M0),
    .N(N0),
    .Z(Z)
  );

endmodule
