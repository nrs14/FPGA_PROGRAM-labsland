module mux (V_SW, V_BT, G_LED); //2:1 mux
input [0:1] V_SW; //input
input  [0:1] V_BT; //select line
output reg [0:1] G_LED;  // y
 always @(V_SW, V_BT) begin
    if(V_BT[0])
    G_LED[0]=V_SW[0];
    else
    G_LED[0]=V_SW[1];
 end
endmodule
