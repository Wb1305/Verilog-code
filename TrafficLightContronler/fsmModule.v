`timescale 1ns / 1ps

module fsm(
    output MR,
    output MY,
    output MG,
    output SR,
    output SY,
    output SG,
    output reg ST,
    input TS,
    input TL,
    input C,
    input reset,
    input CLK
);
reg[6:1] state;
parameter mainRoadGreen = 6'b001100;
parameter mainRoadYellow = 6'b010100;
parameter sideRoadGreen = 6'b100001;
parameter sideRoadYellow = 6'b100010;

assign MR = state[6];
assign MY = state[5];
assign MG = state[4];
assign SR = state[3];
assign SY = state[2];
assign SG = state[1];

initial
begin
    state = mainRoadGreen;
    ST = 0;
end

always @(posedge CLK)
begin
    if (reset)
    begin
        state = mainRoadGreen;
        ST = 1;
    end
    else
    begin
        ST = 0;  
        case (state)
            mainRoadGreen:
                if (TL & C)
                begin 
                    state = mainRoadYellow; 
                    ST = 1; 
                end
            mainRoadYellow:
                if (TS) 
                begin 
                    state = sideRoadGreen; 
                    ST = 1; 
                end
            sideRoadGreen:
                if (TL | !C)
                begin 
                    state = sideRoadYellow; 
                    ST = 1; 
                end
            sideRoadYellow:
                if (TS) 
                begin 
                    state = mainRoadGreen; 
                    ST = 1; 
                end
        endcase
    end
end
endmodule
