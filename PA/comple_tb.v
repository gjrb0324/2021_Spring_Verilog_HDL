`include "fulladder8.v"
module two_comple_tb;
    reg[7:0] A;
    reg[7:0] B;
    wire[7:0] q;
    subtract8 sb(A,B,q);
    initial begin
    
        $dumpfile("test.vcd");
        $dumpvars(0,two_comple_tb);
        A= 8'b00000010;B=8'b00001010; #10;
        A = 8'b01010101;B= 8'b00000100; #10;
    end
endmodule