`timescale 1ns / 1ps

module FullAdderHalf(a,b,cin,cout,s);
    input a,b,cin;
    output s, cout;
    
    assign s = a^b^cin;
    assign cout = (a&b) | (a&cin) | (b&cin);

endmodule

module FullAdderFull(a,b,carryin,carryout,s);
    input [3:0] a,b;
    input carryin;
    output [3:0] s;
    output carryout;
    
    wire [3:1] c;
    
    FullAdderHalf S0 (a[0],b[0], carryin, c[1],s[0]);
    FullAdderHalf S1 (a[1],b[1], c[1], c[2],s[1]);
    FullAdderHalf S2 (a[2],b[2], c[2], c[3],s[2]);
    FullAdderHalf S3 (a[3],b[3], c[3], carryout,s[3]);
    
    
endmodule
