module  tester #(parameter K = 1) (
    A_valor, B_valor
);
  // Input wire N;
    output reg [K-1:0] A_valor, B_valor; // Cambiado a 2 bits
  /*  A = 10
      B = 01
  */
  initial begin
    A_valor = 2'b11; // Representa el número binario 10 en 2 bits
    B_valor = 2'b00; // Representa el número binario 01 en 2 bits

    #10

    A_valor = 2'b11; // Representa el número binario 00 en 2 bits
    B_valor = 2'b01; // Representa el número binario 10 en 2 bits

    #10

    A_valor = 2'b11; // Representa el número binario 01 en 2 bits
    B_valor = 2'b10; // Representa el número binario 11 en 2 bits

    #10

    A_valor = 2'b11; // Representa el número binario 11 en 2 bits
    B_valor = 2'b11; // Representa el número binario 00 en 2 bits
  end
endmodule
