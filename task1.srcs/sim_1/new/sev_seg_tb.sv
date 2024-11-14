`timescale 1ns / 1ps

module sev_seg_tb(
    input logic A,B,C,D,a0,
    output logic [6:0] seg,an0

    );
    
    seven_seg_decoder sev1(seg[0:6], A,B,C,D);
endmodule
