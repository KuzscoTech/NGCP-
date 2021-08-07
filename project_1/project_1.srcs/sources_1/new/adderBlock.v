`timescale 1ns / 1ps

module adderBlock(D0,D1,out,carry);
    input [3:0]D0,D1;
    output [3:0]out;
    output carry;
    assign {carry, out} = D0 + D1;
endmodule


module mux_41_struc(
    I3,I2,I1,I0,
    S,
    out
    );
    input wire I3,I2,I1,I0;
    input wire [1:0]S; //00
    output reg out;
    
    always@(I3 or I2 or I1 or I0 or S) 
    begin
    
    case(S)
    2'b00 : out = I3;
    2'b01 : out = I2;
    2'b10 : out = I1;
    2'b11 : out = I0;
    endcase
    end
endmodule