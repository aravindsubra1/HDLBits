module top_module (input [2:0] a, input [2:0]b, output [2:0] out_or_bitwise, output out_or_logical, output [5:0] out_not);
  assign out_or_bitwise = {b[2]|a[2], b[1]|a[1], b[0]|a[0]};
  assign out_or_logical = b[2]|a[2]|b[1]|a[1]|b[0]|a[0];
  assign {out_not[5:3], out_not[2:0]} = {~b,~a};
endmodule
