`include "red_iterativa.v"
`include "tester.v"

module testbench;
// Parametros del circuito
localparam K = 4; // definición de parametro
                  // Para el tamaño de la palabra
wire [K-1:0] A0, B0, N0; // Se define la cantidad de pines A, B y N
wire Z; // Se define el pin Z

// Parametros para gráficar
reg clk, A_t, B_t, Z_t;
integer i;
localparam P = 10; // Parametro para medio ciclo de reloj

// Uso del modulo y el tester
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

// Mensaje textual a pantalla


// bloque always para ciclar el reloj
always 
begin
  clk = 1'b1;
  #P;
  clk = 1'b0;
  #P;
end

initial begin 
  $dumpfile("resultado.vcd"); // nombre de archivo para gtk
  $dumpvars(1,testbench); // modulo
    $monitor("\n Derecha - Izquierda",
    "\n Los valores ingresados son:",
    "\n A=%b B=%b",
    A0,
    B0, "\n La salida es: Z=%b \n",
    Z);
  // ciclo for para obtener cada valor de bit
  // por cada medio ciclo de reloj
  for (i = 0; i < K; i = i + 1) 
  begin
      A_t = A0[i];
      B_t = B0[i];
      Z_t = N0[i];
      #P;
  end
  $finish;
  end

endmodule
