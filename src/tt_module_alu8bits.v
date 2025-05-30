
module tt_module_alu8bits (
    input  [7:0] io_in,   // [7:4] = opcode, [3:0] = operand control
    output [7:0] io_out,  // result
    input        clk,
    input        rst_n
);

    wire [3:0] a = io_in[3:0];
    wire [3:0] b = io_in[7:4];
    wire [3:0] opcode = io_in[7:4];

    wire [7:0] result;

    alu_8bit alu_inst (
        .a({4'b0000, a}),
        .b({4'b0000, b}),
        .opcode(opcode),
        .result(result)
    );

    assign io_out = result;

endmodule
