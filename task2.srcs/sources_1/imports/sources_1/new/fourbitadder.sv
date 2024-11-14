`timescale 1ns / 1ps

module fourbitadder(
    input logic [3:0]a, [3:0] b, cin,
    output logic [3:0]sum,cout

    );
    logic c0,c1,c2;
    logic w0,w1,w2,w3;
    xor(w0,b[0],cin);
    xor(w1,b[1],cin);
    xor(w2,b[2],cin);
    xor(w3,b[3],cin);
    full_adder f1(.s2(sum[0]),.cout(c0),.a(a[0]),.b(w0),.cin(cin));
    full_adder f2(.s2(sum[1]),.cout(c1),.a(a[1]),.b(w1),.cin(c0));
    full_adder f3(.s2(sum[2]),.cout(c2),.a(a[2]),.b(w2),.cin(c1));
    full_adder f4(.s2(sum[3]),.cout(cout),.a(a[3]),.b(w3),.cin(c2));
    
    
endmodule
