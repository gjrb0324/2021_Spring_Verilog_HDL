module subtract8(A,B,result);
    input[7:0] A, B;
    output wire[7:0]result;
    wire[7:0] q,comp;
    two_comple tc(B, comp);
    fulladder8 fa8(result,cout,A,comp,1'b0);
endmodule

module two_comple(A,comp);
    input[7:0] A;
    wire [7:0] q;
    output wire[7:0] comp;
    assign q= ~A;
    fulladder8 fa8(comp,cout,q,8'b00000001,1'b0);
endmodule

