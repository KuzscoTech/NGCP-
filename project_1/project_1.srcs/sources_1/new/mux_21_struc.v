`timescale 1ns / 1ps

module mux_21_struc(
    input D0,D1,S,
    output Y
    );
    
    wire T1,T2, SBar;
    
    and(T1,D1,S),(T2, D0, SBar);
    not(SBar, S);
    or(Y,T1,T2);
    
    
endmodule
