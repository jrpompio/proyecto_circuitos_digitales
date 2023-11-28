module tester(
    A_valor, B_valor
);

//input wire N;
output reg A_valor, B_valor;

/*  A = 1001
    B = 0101

    hola
*/
initial begin
    A_valor=1;
    B_valor=1;
    #10
    A_valor=0;
    B_valor=0;
    #10
    A_valor=0;
    B_valor=1;
    #10
    A_valor=1;
    B_valor=0;
    end
endmodule
