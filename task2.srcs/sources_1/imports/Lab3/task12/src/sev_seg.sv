module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] t   
);


logic reset_n;
logic clk;

assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;


// Seven segments Controller
wire [6:0] Seg;
wire [3:0] digits[0:7];
//wire [3:0] a;
//wire [3:0] b;
//wire s0;
//wire s1;
//wire [3:0] result;
//wire cout;

//ALU alu(
//    .a(a),
//    .b(b),
//    .s0(s0),
//    .s1(s1),
//    .result(result),
//    .cout(cout)
//);
//assign t[3:0] = a[3:0];
//assign t[7:4] = b[3:0];
//assign t[11:8] = result[3:0];
//assign t[12] = s0;
//assign t[13] = s1;
//assign t[14] = 0;
//assign t[15] = 0;
 

assign digits[0] = t[3:0];
assign digits[1] = t[7:4];
assign digits[2] = t[11:8];
assign digits[3] = t[15:12];
assign digits[4] = 4'b1111;
assign digits[5] = 4'b1111;
assign digits[6] = 4'b1111;
assign digits[7] = 4'b1111;


sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign CA = Seg[0];
assign CB = Seg[1];
assign CC = Seg[2];
assign CD = Seg[3];
assign CE = Seg[4];
assign CF = Seg[5];
assign CG = Seg[6];
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule : sev_seg_top