module SISO(V_SW, G_LED);
input [0:2] V_SW;
output reg [0:2] G_LED;
reg  [0:2] tem;

always @ (posedge V_SW[1])
begin
    tem[0] <= V_SW[0];
    tem[1] <= tem[0];
    tem[2] <= tem[1];
    G_LED[0] <= tem[2];
end
endmodule
