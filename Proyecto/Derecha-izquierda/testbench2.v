`include "red_iterativa.v"
`include "tester.v"
//`timescale  1 ns/10 ps

module testbench;
localparam K = 4; // definición de parametro
                  // Para el tamaño de la palabra
wire [K-1:0] A0, B0, N0; // Se define la cantidad de pines A, B y N
reg clk; // Se define reg para declarar el reloj
wire Z; // Se define el pin Z

always // bloque always para ciclar el reloj
begin
  clk = 1'b1;
  #10;
  clk = 1'b0;
  #10;
end


initial begin // Initial para mostrar datos en pantalla
    $dumpvars;
    $monitor(
    "\n Los valores ingresados son:",
    "\n A=%b B=%b Z=%b \n",
    A0,
    B0,
    Z);
    #40;
    $stop;
  end

  tester #(K) instancia_datos( // Uso del tester
    .A_valor(A0),
    .B_valor(B0)
  );

  red_iterativa #(K) red( // Uso de la red iterativa
    .A(A0),
    .B(B0),
    .N(N0),
    .Z(Z)
  );

endmodule
