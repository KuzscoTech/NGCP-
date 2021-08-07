`timescale 1ns / 1ps

module TB_adderblock();
    reg [3:0]D0,D1; //0000
    wire [3:0]out;
    wire carry;

    adderBlock UUT_1(
    .D0(D0),
    .D1(D1),
    .out(out),
    .carry(carry));
    
    initial begin
    D0 = 4'b0100; //
    D1 = 4'b1001;
    #60
    D0 = 4'b0101;
    D1 = 4'b1011;
    #40
    $stop;
    end
endmodule
