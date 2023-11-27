module Inicial_DI(A, B, N
);

input wire A,B;
output wire N;

assign N = ~A | B;

endmodule
