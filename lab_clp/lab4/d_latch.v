module d_latch(d,en,out);
input d,en;
output out;

reg out;
always @(d or en)
if (en)
out<=d;

endmodule
