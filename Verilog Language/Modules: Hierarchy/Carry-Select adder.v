module top_module (
    input [31:0] a, b,
    output [31:0] sum );
    wire w,w1,w2;
    wire [15:0]y,y1;
    add16 u1(a[15:0], b[15:0], 0, sum[15:0], w);
    add16 u2(a[31:16], b[31:16], 0, y, w1);
    add16 u3(a[31:16], b[31:16], 1, y1, w2);
    always@(*)begin
        case(w)
            1'b0 : sum[31:16]=y;
            1'b1 : sum[31:16]=y1;
        endcase
    end
endmodule
