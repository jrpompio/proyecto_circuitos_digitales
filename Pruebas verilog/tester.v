module tester (
    input wire eq,
    output reg x, y
);

  integer contador;

  initial begin
    contador = 0;
    
    for (contador = 0; contador < 1; contador = contador + 1)
    begin
      x = contador;
      y = 1;
    end
  end

endmodule
