`timescale 1ns / 1ps


module ALU(
    input [3:0] a, [3:0] b, s0,s1,
    output [3:0] result, 
    output cout
    );

wire [3:0] o1, o2;
wire [3:0] sum2, sum3;
fourbitadder fba(
    .a(a),
    .b(b),
    .cin(s0),
    .sum(o1),
    .cout(cout)
    );

fourbitand fband(
    .a(a),
    .b(b),
    .and_out(sum2)
);

fourbitshift fbshift(
    .a(a),
    .b(b),
    .shift_out(sum3)
);

mux1 m1(
    .w1(sum2),
    .w2(sum3),
    .s0(s0),
    .o(o2)
);

mux1 m2(
    .w1(o1),
    .w2(o2),
    .s0(s1),
    .o(result)
);
 
endmodule
