module top_module (
    input [31:0] a, b,
    input sub,
    output [31:0] sum );
    wire w, w1;
    add16 u1(a[15:0], (b[15:0]^{16{sub}}), sub, sum[15:0], w);
    add16 u2(a[31:16], (b[31:16]^{16{sub}}), w, sum[31:16], w1);
endmodule
