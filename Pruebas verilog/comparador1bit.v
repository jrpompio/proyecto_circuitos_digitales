module comparador1bit(x, y, eq
);

input wire x,y;
output wire eq;

wire s0, s1;

assign s0 = ~x && ~y;
assign s1 = x && y;
assign eq = s0 || s1;

endmodule
