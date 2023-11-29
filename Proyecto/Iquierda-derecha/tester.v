module  tester #(parameter K = 1) (
    A_valor, B_valor // Se definen los valores de salida
);
    output reg [K-1:0] A_valor, B_valor; // Tamaño de los valores

  initial begin
    A_valor = 5'b11100 ;  // Caso donde bit más significativo
    B_valor = 5'b01101 ; // de A es mayor
    /*#10;
    A_valor = 5'b10001 ; // Caso donde bit menos significativo
    B_valor = 5'b10110;  // de A es mayor, donde B es mayor
    #10;
    A_valor = 5'b10101 ; // Caso donde bit menos significativo
    B_valor = 5'b10100;  // de A es mayor, donde A es mayor
    #10;
    A_valor = 5'b01100 ; // Caso donde bit intermedio de A
    B_valor = 5'b10001; // es mayor, Y B es mayor
    #10;
    A_valor = 5'b11100 ; // Caso donde bit intermedio de A
    B_valor = 5'b10001; // // es mayor, Y A es mayor
    #10;*/
  end
endmodule

