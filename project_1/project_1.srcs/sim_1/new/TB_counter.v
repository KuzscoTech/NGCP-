`timescale 1ns / 1ps
module TB_counter();
    reg CLK;
    wire [7:0]count;
    
    posCount UUT_1(
    .CLK(CLK),
    .count(count));
    
    initial begin
    CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
     CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
    $stop;
    end
endmodule

module TB_counterNegative();
    reg CLK;
    wire [7:0]count;
    
    negCount UUT_1(
    .CLK(CLK),
    .count(count));
    
    initial begin
    CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
     CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
    CLK = 1'b1;
    #20
    CLK = 1'b0;
    #10
    $stop;
    end
endmodule