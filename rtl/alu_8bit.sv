`timescale 1ns/1ns

module alu_8bit(
    input [7:0] reg1,
    input [7:0] reg2,
    input cin,
    output [7:0] out,
    output cout
);

    wire c4;

    rca rca_lower (
        .a(reg1[3:0]),
        .b(reg2[3:0]),
        .cin(cin),
        .sum(out[3:0]),
        .c4(c4)
    );

    rca rca_upper (
        .a(reg1[7:4]),
        .b(reg2[7:4]),
        .cin(c4),
        .sum(out[7:4]),
        .c4(cout)
    );

endmodule
