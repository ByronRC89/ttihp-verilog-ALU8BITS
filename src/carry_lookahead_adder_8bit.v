
module carry_lookahead_adder_8bit (
    input  [7:0] a,
    input  [7:0] b,
    output [7:0] sum
);
    assign sum = a + b;
endmodule
