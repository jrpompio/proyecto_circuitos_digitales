module  tester #(parameter K = 1) (
    A_valor, B_valor // Se definen los valores de salida
);
    output reg [K-1:0] A_valor, B_valor; // Tamaño de los valores

  initial begin
    A_valor = 4'b1111; // se definen los valores a usar
    B_valor = 4'b1111; 
    #10;
    A_valor = 4'b1101 ; // se definen los valores a usar
    B_valor = 4'b1011;
  end
endmodule