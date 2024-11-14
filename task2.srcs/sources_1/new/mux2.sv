`timescale 1ns / 1ps

module mux2(
    input [3:0] a, [3:0] b, s0,
    output [3:0] alu_out
    );
    
wire w1;
wire w2;

fourbitand fband(
    .a(a),
    .b(b),
    .and_out(and_out)
);

fourbitshift fbshift(
    .a(a),
    .b(b),
    .shift_out(shift_out)
);

assign w1 = s0?and_out:shift_out;
endmodule
