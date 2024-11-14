`timescale 1ns / 1ps


module fourbitand(
    input [3:0] a, [3:0] b,
    output [3:0] and_out
    );
    
    assign and_out[0] = a[0]&b[0];
    assign and_out[1] = a[1]&b[1];
    assign and_out[2] = a[2]&b[2];
    assign and_out[3] = a[3]&b[3];
endmodule
