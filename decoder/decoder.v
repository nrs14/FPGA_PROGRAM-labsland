module decoder(V_SW,G_LED);
input [0:1] V_SW;
output  [0:3] G_LED;
assign G_LED[0]= ~V_SW[0]&~V_SW[1]; 
assign G_LED[1]= ~V_SW[0]&V_SW[1];
assign G_LED[2]=  V_SW[0]&~V_SW[1]; 
assign G_LED[3]=  V_SW[0]&V_SW[1];
endmodule
