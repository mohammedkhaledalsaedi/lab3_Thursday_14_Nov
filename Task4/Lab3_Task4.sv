`timescale 1ns / 1ps


module Rotate(
input wire [3:0]a, output reg [15:0]b
    );
wire [3:0] SW;
//assign a[3:0]=SW[3:0];

//assign a[3:0] = SW[7:4];
    

 
    always @(*)
    begin
    
    case (a)
    2'b00: b = 16'hC0dE ; 
    2'b01: b = 16'hEC0d ; 
    2'b10: b = 16'hdEC0 ; 
    2'b11: b = 16'h0dEC ;   
    default: b = 4'bxxxx;
    
    
    endcase
    
    
    end
endmodule
