module  tester #(parameter K = 1) (
    A_valor, B_valor // Se definen los valores de salida
);
    output reg [K-1:0] A_valor, B_valor; // Tamaño de los valores

  initial begin
    A_valor = 4'b1100 ; // Caso donde bit más significativo
    B_valor = 4'b0101 ; // de A es mayor
    /*#10;
    A_valor = 4'b1001 ; // Caso donde bit menos significativo
    B_valor = 4'b1010; // de A es mayor, donde B es mayor
    #10;
    A_valor = 4'b1011 ; // Caso donde bit menos significativo
    B_valor = 4'b1010; // de A es mayor, donde A es mayor
    #10;
    A_valor = 4'b0100 ; // Caso donde bit intermedio de A
    B_valor = 4'b1001;  // es mayor, Y B es mayor
    #10;
    A_valor = 4'b1100 ; // Caso donde bit intermedio de A
    B_valor = 4'b1001; // es mayor, Y A es mayor
    #10;*/
  end
endmodule

