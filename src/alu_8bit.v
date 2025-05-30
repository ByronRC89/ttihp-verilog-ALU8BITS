
module alu_8bit (
    input  [7:0] a,
    input  [7:0] b,
    input  [3:0] opcode,
    output [7:0] result
);
    wire [7:0] sum;
    wire [7:0] and_ab;
    wire [7:0] or_ab;
    wire [7:0] xor_ab;

    carry_lookahead_adder_8bit adder (
        .a(a),
        .b(b),
        .sum(sum)
    );

    assign and_ab = a & b;
    assign or_ab = a | b;
    assign xor_ab = a ^ b;

    assign result = (opcode == 4'b0000) ? sum :
                    (opcode == 4'b0001) ? and_ab :
                    (opcode == 4'b0010) ? or_ab :
                    (opcode == 4'b0011) ? xor_ab :
                    8'b00000000;
endmodule
