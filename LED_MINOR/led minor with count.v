module leds_mirror(V_SW, V_BT, G_LED, G_HEX0);
input [0:9] V_SW;
input [3:0] V_BT;
output [0:9] G_LED;
output [0:6] G_HEX0;
reg  [0:9] G_LED;
reg  [0:6] G_HEX0;
always @ (*)
begin
    G_LED <= V_SW;
    case( V_BT )
        4'B1110: G_HEX0 = 7'B0000001;
        4'B1101: G_HEX0 = 7'B1001111;
        4'B1011: G_HEX0 = 7'B0010010;
        4'B0111: G_HEX0 = 7'B0000110;
        default: G_HEX0 = 7'B1111111;
    endcase
end
endmodule
