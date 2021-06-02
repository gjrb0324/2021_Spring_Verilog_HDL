module divider8(A,B, Q_out, R);
    input [7:0] A,B;
    output [7:0] Q_out, R;
    reg[7:0] R1, R2, R3, Q;
    wire [7:0] sub_out,add_out, a0, a1, a2, a3, a4,a5,a6,a7;
    subtract8 sub(R2,B,sub_out);
    fulladder8 fa(add_out,cout,Q,8'b00000001,1'b0);
    shift_left8 sl(A, a0);
    shift_left8 sl2(a0, a1);
    shift_left8 sl3(a1, a2);
    shift_left8 sl4(a2, a3);
    shift_left8 sl5(a3, a4);
    shift_left8 sl6(a4, a5);
    shift_left8 sl7(a5, a6);
    shift_left8 sl8(a6, a7);
    assign R = R2;
    assign Q_out =Q;
    integer i;
    initial begin
      assign R2 = 8'b00000000;
      assign R3 = B;
      assign R1 = A;
      assign Q = 8'b00000000;
    end
    always@(R1 or R2 or Q or sub_out or add_out) begin
      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a0;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a1;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a2;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a3;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a4;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a5;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a6;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;
    
      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[6];
      assign R2[6] = R2[5];
      assign R2[5] = R2[4];
      assign R2[4] = R2[3];
      assign R2[3] = R2[2];
      assign R2[2] = R2[1];
      assign R2[1] = R2[0];
      assign R2[0] = R1[7];
      assign R1 = a7;
      assign Q[7] = Q[6];
      assign Q[6] = Q[5];
      assign Q[5] = Q[4];
      assign Q[4] = Q[3];
      assign Q[3] = Q[2];
      assign Q[2] = Q[1];
      assign Q[1] = Q[0];
      assign Q[0] = 8'b00000000;#1;

      if(R2>=R3)begin
        assign R2 = sub_out;
        assign Q = add_out;
      end
      assign R2[7] = R2[7];
      assign R2[6] = R2[6];
      assign R2[5] = R2[5];
      assign R2[4] = R2[4];
      assign R2[3] = R2[3];
      assign R2[2] = R2[2];
      assign R2[1] = R2[1];
      assign R2[0] = R2[0];
      assign Q[7] = Q[7];
      assign Q[6] = Q[6];
      assign Q[5] = Q[5];
      assign Q[4] = Q[4];
      assign Q[3] = Q[3];
      assign Q[2] = Q[2];
      assign Q[1] = Q[1];
      assign Q[0] = Q[0];#1;
      
      
    end
    
endmodule



