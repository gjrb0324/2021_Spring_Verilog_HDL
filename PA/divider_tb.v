`include "fulladder8.v"
`include "comple.v"
`include "shift.v"
module divide_tb;
    reg[7:0] A;
    reg[7:0] B;
    wire[7:0] q;
    divider8 div8(A,B,q,r);
    initial begin
    
        $dumpfile("test.vcd");
        $dumpvars(0,divide_tb);
        A= 8'b00001010;B=8'b00000010; #10;
    end
endmodule