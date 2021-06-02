module ALU(
    A,
    B,
    Op,
    R,
    c_in   );
    
    input [7:0] A,B;
    input [2:0] Op;
    input c_in;
    output [7:0] R;
    wire [7:0] Reg1,Reg2;
    reg [7:0] Reg3;
    wire [7:0] out_add, out_rshift, out_lshift, out_sub, q ,r;
    fulladder8 fadd(out_add,c,A ,B,c_in);
    shift_right8 rshift(A, out_rshift);
    shift_left8 lshift(A, out_lshift);
    subtract8 fsub(A,B,out_sub);
    divider8 div8(A,B, q, r);
    assign R = Reg3;
    always @(Op)
    begin
        case (Op)
         0 : assign Reg3 = out_add;  //addition
         1 : assign Reg3 = out_sub; //subtraction
         2 : assign Reg3 = out_rshift;  //shift_left
         3 : assign Reg3 = out_lshift; //NAND gate 
         4 : assign Reg3 = q; //NOR gate               
         5 : assign Reg3 = r;  //AND gate  
        endcase 
    end
    
endmodule