module fulladder8(sum,cout,a,b,carryin);

    
    output [7:0]sum;
    output cout;
    input [7:0]a;
    input [7:0]b;
    input carryin;

    
    wire c1;

  

    fulladder4 fa4(sum[3:0],c1,a[3:0],b[3:0],carryin);
    fulladder4 fa5(sum[7:4],cout,a[7:4],b[7:4],c1);

  
 endmodule 

module fulladder4(sum,cout,a,b,carryin);

    output [3:0]sum;
    output cout;
    input [3:0]a;
    input [3:0]b;
    input carryin;

    wire c1,c2,c3;

    fulladder fa0(sum[0],c1,a[0],b[0],carryin);
    fulladder fa1(sum[1],c2,a[1],b[1],c1);
    fulladder fa2(sum[2],c3,a[2],b[2],c2);
    fulladder fa3(sum[3],cout,a[3],b[3],c3);

 endmodule    

module fulladder(sum, cout,a,b,carryin);

    output sum;
    output cout;
    input a, b;
    input carryin;

 
    wire a1, a2, c1;

    
    xor(a1, a, b);
    and(c1, a, b);
    xor(sum, a1, carryin);
    and(a2, a1, carryin);
    xor(cout, a2, c1);   

 endmodule