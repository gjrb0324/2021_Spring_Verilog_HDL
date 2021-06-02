module tb_fullsubtractor8();

    wire [7:0] SUM;
    wire C_OUT;
    reg [7:0] A;
    reg [7:0] B;
    reg C_IN;

    fullsubtractor8 m(.sum(SUM),

                 .cout(C_OUT),
                 .a(A),
                 .b(B),
                 .carryin(C_IN));

                 initial
                 begin
                 $dumpfile("test.vcd");
                 $dumpvars(0,tb_fullsubtractor8);

                     A=8'd0; B=8'd0; C_IN=1'b0;
                  #5 A=8'd3; B=8'd4;
                  #5 A=8'd2; B=8'd5;
                  #5 A=8'd9; B=8'd9;
                  #5 A=8'd10; B=8'd15;
                  #5 A=8'd10; B=8'd5; C_IN=1'b1;
              end                    
endmodule
