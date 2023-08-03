module fa(V_SW , G_LED);
input [0:2] V_SW;
output  [0:1] G_LED;
assign {G_LED[1],G_LED[0]} = V_SW[0]+V_SW[1]+V_SW[2]; 
//V_SW[0]+V_SW[1]+V_SW[2]-->a+b+c input
// G_LED[0]-->sum output
// G_LED[1]-->carry output
endmodule
