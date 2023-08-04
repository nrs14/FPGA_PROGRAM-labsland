module MUX4(V_SW, V_BT, G_LED); //2:1 mux
input [0:1] V_SW; //select line
input  [0:3] V_BT; //input
output reg [0:1] G_LED;  // y
 always @(V_SW, V_BT) begin
 case (V_SW)
     2'B00:G_LED[0]=V_BT[0];
     2'B01:G_LED[0]=V_BT[1];
     2'B10:G_LED[0]=V_BT[2];
     default:G_LED[0]=V_BT[3];
 endcase
 end
endmodule
