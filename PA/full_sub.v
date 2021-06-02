module fullsubtractor8(sum,cout,a,b,carryin);

    
    output [7:0]sum;
    output cout;
    input [7:0]a;
    input [7:0]b;
    input carryin;

    wire c1;

  
    fullsubtractor4 fs4(sum[3:0],c1,a[3:0],b[3:0],carryin);
    fullsubtractor4 fs5(sum[7:4],cout,a[7:4],b[7:4],c1);

  
 endmodule 

module fullsubtractor4(sum,cout,a,b,carryin);

  output [3:0]sum;
  output cout;
  input [3:0]a;
  input [3:0]b;
  input carryin;

  wire c1,c2,c3,b1,b2,b3;
  

  xor(b1, b[0],carryin);
  fullsubtractor fa0(sum[0],c1,a[0],b1,carryin);
  xor(b2, b[1],carryin);
  fullsubtractor fa1(sum[1],c2,a[1],b2,c1);
  xor(b3, b[2],carryin);
  fullsubtractor fa2(sum[2],c3,a[2],b3,c2);
  xor(b4, b[3],carryin);
  fullsubtractor fa3(sum[3],cout,a[3],b4,c3);

endmodule 

module fullsubtractor(sum,cout,a,b,carryin);

    output sum;
    output cout;
    input a, b;
    input carryin;

    wire a1, a2, a3, a4, c1;

    xor(a1, a, b);
    not(a2,a);
    and(c1, a2, b);
    xor(sum, a1,carryin);
    not(a3,a1);
    and(a4, a3,carryin);
    or(cout,a4,c1);

endmodule