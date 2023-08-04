module seg7(V_SW,HEX0);
input [0:2] V_SW;
output reg [0:6] HEX0;
reg  [0:7] tem = 8'D0;
always @ (posedge V_SW[0])
begin
if(tem!=8'D15)
tem=tem+1;
else
tem=8'D0;
case( tem)
        8'D0:  HEX0 = 7'B0000001;
        8'D1:  HEX0 = 7'B1001111;
        8'D2:  HEX0 = 7'B0010010;
        8'D3:  HEX0 = 7'B0000110;
        8'D4:  HEX0 = 7'B1001100;
        8'D5:  HEX0 = 7'B0100100;
        8'D6:  HEX0 = 7'B0100000;
        8'D7:  HEX0 = 7'B0001111;
        8'D8:  HEX0 = 7'B0000000;
        8'D9:  HEX0 = 7'B0000100;
        8'D10: HEX0 = 7'B0001000;
        8'D11: HEX0 = 7'B1100000;
        8'D12: HEX0 = 7'B0110001;
        8'D13: HEX0 = 7'B1000010;
        8'D14: HEX0 = 7'B0110000;
        8'D15: HEX0 = 7'B0111000;
        default: HEX0 = 7'B1111111;
    endcase
end
endmodule
