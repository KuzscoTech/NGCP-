`timescale 1ns / 1ps

module TB_FA();
reg [3:0]A,B;
reg cin;
wire [3:0] s;
wire cout;

FullAdderFull UUT_1(
.a(A),
.b(B),
.carryin(cin),
.carryout(cout),
.s(s));

initial begin
A = 10;
B = 3;
cin = 0;
#10
A = 4;
B = 2;
cin = 0;
#10
A = 1;
B = 1;
cin = 0;
#10
A = 14;
B = 3;
#10
$stop;
end

endmodule
