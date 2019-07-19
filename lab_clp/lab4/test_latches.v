module test_latches();
wire d,clk,qb,qbn,q_latch;
test_bench TB (.d(d),.clk(clk));
d_latch DUT_latch (.d(d),.en(clk),.out(q_latch));
cbb_d DUT_cbb (.d(d),.clk(clk),.q(qb),.q_neg(qbn));
endmodule