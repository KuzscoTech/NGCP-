`timescale 1ns / 1ps

module decoders(sel, res);
    input [2:0] sel;
    output [7:0]res;
    reg [7:0]res;
    
    always@(sel) 
    begin
      case(sel)
        3'b000 : res = 8'b00000001;  
        3'b001 : res = 8'b00000010;  
        3'b010 : res = 8'b00000100;  
        3'b011 : res = 8'b00001000;  
        3'b100 : res = 8'b00010000;  
        3'b101 : res = 8'b00100000;  
        default : res = 8'bxxxxxxxx; 
      endcase  
    end  
endmodule

module encoders(sel, res);
    input [7:0] sel;
    output [2:0]res;
    reg [7:0]res;
    
    always@(sel) 
    begin
        case(sel)
        sel[0] : res = 3'b000; //00000001
        sel[1] : res = 3'b001; //00000010
        sel[2] : res = 3'b010;  
        sel[3] : res = 3'b011;  
        sel[4] : res = 3'b100;  
        sel[5] : res = 3'b101;  
        sel[6] : res = 3'b110;  
        sel[7] : res = 3'b111;  
        default : res = 3'bxxx;  
        endcase  
    end  
endmodule