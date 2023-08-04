module fs(V_SW , G_LED);
input [0:2] V_SW;
output  [0:1] G_LED;
assign G_LED[0]= V_SW[0]^V_SW[1]^V_SW[2]; 
assign G_LED[1]= V_SW[2]&~(V_SW[0]^V_SW[1])|~V_SW[0]&V_SW[1];
//V_SW[0],V_SW[1],V_SW[2]-->a,b,c input
// G_LED[0]-->difference output
// G_LED[1]-->borrow output
endmodule
