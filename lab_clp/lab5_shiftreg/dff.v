module dff(q,d,ck);
input d,ck;
output q;
reg q;
always @(posedge ck)
q=d;
endmodule
