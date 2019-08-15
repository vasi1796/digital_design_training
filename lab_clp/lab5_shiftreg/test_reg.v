module test_reg();
wire shiftin,shiftout,clk;
test_bench TB(.d(shiftin),.clk(clk));
sreg4b DUT(.shiftin(shiftin),.clk(clk),.shiftout(shiftout));
endmodule
