module magcomp(V_SW,G_LED);
input [0:1] V_SW;
output  [0:2] G_LED;
assign G_LED[0]= ~(G_LED[2]+G_LED[1]); //EQUAL
assign G_LED[1]= ~V_SW[0]&V_SW[1]; //LESSER
assign G_LED[2]=  V_SW[0]&~V_SW[1]; //GREATER
endmodule
