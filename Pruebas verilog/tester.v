module tester (
    input wire eq,
    output reg x, y
);

  initial begin
    begin
      x = 1;
      y = 1;
      #10
      x=1;
      y=0;
    end
  end

endmodule
