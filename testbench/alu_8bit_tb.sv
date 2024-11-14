`timescale 1ns/1ns

module alu_8bit_tb;

    reg [7:0] reg1, reg2;
    reg cin;
    wire [7:0] out;
    wire cout;

    alu_8bit uut(
        .reg1(reg1),
        .reg2(reg2),
        .cin(cin),
        .out(out),
        .cout(cout)
    );

    initial begin
        // Test case 1: Simple addition without carry
        reg1 = 8'b00000001;
        reg2 = 8'b00000001;
        cin = 1'b0;
        $display("TC1: reg1=%b, reg2=%b, cin=%b => out=%b, cout=%b", reg1, reg2, cin, out, cout);

        // Test case 2: Simple addition with carry
        reg1 = 8'b00001111;
        reg2 = 8'b00001111;
        cin = 1'b1;
        $display("TC2: reg1=%b, reg2=%b, cin=%b => out=%b, cout=%b", reg1, reg2, cin, out, cout);

        // Test case 3: Overflow
        reg1 = 8'b11111111;
        reg2 = 8'b00000001;
        cin = 1'b0;
        $display("TC3: reg1=%b, reg2=%b, cin=%b => out=%b, cout=%b", reg1, reg2, cin, out, cout);

        $finish;
    end;


endmodule