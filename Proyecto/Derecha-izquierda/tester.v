module  tester #(parameter K = 1) (
    A_valor, B_valor
);
  // Input wire N;
    output reg [K-1:0] A_valor, B_valor; // Cambiado a 2 bits
  /*  A = 10
      B = 01
  */
  initial begin
    A_valor = 4'b1111; // Representa el número binario 10 en 2 bits
    B_valor = 4'b1111; // Representa el número binario 01 en 2 bits
  end
endmodule