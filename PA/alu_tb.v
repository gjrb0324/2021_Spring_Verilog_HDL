`timescale 1s/1s
`include "fulladder8.v"
`include "shift.v"
`include "comple.v"
`include "divider.v"
module tb_alu;

    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] Op;
    reg c_in;
    wire [7:0] R;

    ALU alu ( 
        A,B,Op,R,c_in);
    initial begin
    
        $dumpfile("test.vcd");
        $dumpvars(0,tb_alu);

        A = 8'b00010100;
        B = 8'b00000110;
        c_in = 1'b0;
        Op = 0; #10;
        c_in = 1'b1;
        Op = 1; #10;
        Op = 2; #10;
        Op = 3; #10;
        Op = 4; #10;
        Op = 5; #10;
        Op = 6; #10;
    end
      
endmodule

