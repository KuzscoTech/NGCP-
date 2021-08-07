`timescale 1ns / 1ps

module mux_21_behav(
    input D0,D1,S,
    output Y
    );
    
    reg out;
    always@(S or D0 or D1) begin 
    if(S) //means if S is a 1
        out=D1;
    else 
        out=D0;   
    end
    assign Y = out;
endmodule
