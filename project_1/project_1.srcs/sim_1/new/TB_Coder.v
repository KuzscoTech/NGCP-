`timescale 1ns / 1ps
module TB_Coder();
    reg [2:0] sel;
    wire [7:0] res;
    
    decoders UUT_1(
    .sel(sel),
    .res(res));
    
    initial begin 
    sel = 3'b000;
    #20
    sel = 3'b010;
    #10
    sel = 3'b100;
    #20
    $stop;
    end
endmodule

module TB_CoderEn();
    wire [2:0] sel;
    reg [7:0] res;
    
    encoders UUT_1(
    .sel(sel),
    .res(res));
    
    initial begin 
    res = 8'b00000001;
    #20
    res = 8'b00000010;
    #10
    res = 8'b00000100;
    #20
    $stop;
    end
endmodule