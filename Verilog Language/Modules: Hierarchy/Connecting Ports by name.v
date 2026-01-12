module top_module (
    input a, b, c, d,
    output out1, out2 );
    mod_a(.in2(b), .in1(a), .in3(c), .in4(d), .out1(out1), .out2(out2));
endmodule
