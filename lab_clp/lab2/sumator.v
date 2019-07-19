module sumator(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire w1,w2,w3;
wire w4;

assign w1 = (a&b);
assign w2 = (a&cin);
assign w3 = (b&cin);

assign cout = (w1|w2|w3);
assign s = (a^b^cin);

endmodule