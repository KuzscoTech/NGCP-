`timescale 1ns / 1ps

module posCount(
    input CLK,
    output reg [7:0]count = 8'b00000000
    );
    
    always@(posedge CLK) begin
    count = count + 1;
    end
    
endmodule

module negCount(
    input CLK,
    output reg [7:0]count = 8'b00000000
    );
    
    always@(negedge CLK) begin
    count = count + 1;
    end
    
endmodule