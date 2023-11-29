`include "red_iterativa.v"
`include "tester.v"

module testbench;

localparam K = 2;

wire [K-1:0] A0, B0, N0;
wire Z;

  initial begin
    $dumpvars;
    $monitor("A=%b B=%b Z=%b", A0, B0, Z);
  end 

  tester #(K) instancia_datos(
    .A_valor(A0),
    .B_valor(B0)
  );

  red_iterativa #(K) red(
    .A(A0),
    .B(B0),
    .N(N0),
    .Z(Z)
  );

endmodule
