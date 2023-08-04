module encoder(V_SW,G_LED);
input [0:3] V_SW;
output  [0:1] G_LED;
assign G_LED[0]= V_SW[2]|V_SW[3]; 
assign G_LED[1]= V_SW[1]|V_SW[3];
endmodule
