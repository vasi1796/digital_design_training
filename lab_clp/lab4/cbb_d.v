module cbb_d(d,clk,q,q_neg);
input d,clk;
output q,q_neg;
reg q,q_neg;
always @(posedge clk)
begin
q<=d;
q_neg<=~d;
end
endmodule
