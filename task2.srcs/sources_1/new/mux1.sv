`timescale 1ns / 1ps

module mux1(
    input s0,
    input [3:0] w1,
    input [3:0] w2,
    output [3:0] o
    );
    

assign o = s0? w2:w1;

endmodule
