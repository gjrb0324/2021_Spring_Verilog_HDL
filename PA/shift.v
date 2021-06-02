module shift_right8(A, q);
  input [7:0] A;
  output[7:0] q;
  assign q[7] = 1'b0;
  assign q[6] = A[7];
  assign q[5] = A[6];
  assign q[4] = A[5];
  assign q[3] = A[4];
  assign q[2] = A[3];
  assign q[1] = A[2];
  assign q[0] = A[1];
  endmodule

  module shift_left8(A, q);
  input [7:0] A;
  output[7:0] q;
  assign q[7] = A[6];
  assign q[6] = A[5];
  assign q[5] = A[4];
  assign q[4] = A[3];
  assign q[3] = A[2];
  assign q[2] = A[1];
  assign q[1] = A[0];
  assign q[0] = 1'b0;
  endmodule