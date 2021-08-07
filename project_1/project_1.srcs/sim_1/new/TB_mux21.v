`timescale 1ns / 1ps


module TB_mux21();
reg D0,D1,S;
wire Y;

mux_21_struc UUT_1( 
.D0(D0),
.D1(D1), 
.S(S), 
.Y(Y));

//mux_21_behav UUT_1( 
//.D0(D0),
//.D1(D1), 
//.S(S), 
//.Y(Y));

initial begin
D0 = 1'b1;
D1 = 1'b0;
S = 0;
#60 //--> #60; in system verilog
S=1;
$stop;
end
endmodule

module TB_mux41();
reg I3,I2,I1,I0;
reg [1:0]S;
wire out;

mux_41_struc UUT_2(
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .S(S),
    .out(out));

initial begin
I3 = 1'b0; //0
I2 = 1'b1; //1
I1 = 1'b0; //2
I0 = 1'b1;// 3
S = 2'b01;
#60
S=2'b10;
$stop;
end
endmodule
