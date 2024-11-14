`timescale 1ns / 1ps


module fourbitshift(
    input [3:0] a, [3:0] b,
    output [3:0] shift_out
    );
    
    assign shift_out = a<<b;
endmodule
