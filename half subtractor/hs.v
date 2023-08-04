module hs(V_SW , G_LED);
input [0:1] V_SW;
output  [0:1] G_LED;
assign G_LED[0] =  V_SW[0]^V_SW[1];
//difference output
assign G_LED[1] = ~V_SW[0]&V_SW[1]; 
//borrow output
endmodule
