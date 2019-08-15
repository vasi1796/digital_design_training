module test();
wire enable,clear,load,clk,read;
wire D3,D2,D1,D0,d3,d2,d1,d0,q3,q2,q1,q0,Q3,Q2,Q1,Q0;
wire wordout[3:0];

AND EN3(.in1(D3),.in2(enable),.out(d3));
AND EN2(.in1(D2),.in2(enable),.out(d2));
AND EN1(.in1(D1),.in2(enable),.out(d1));
AND EN0(.in1(D0),.in2(enable),.out(d0));

dff DUT3(.d(d3),.cl(clear),.ck(clk),.q(q3));
dff DUT2(.d(d2),.cl(clear),.ck(clk),.q(q2));
dff DUT1(.d(d1),.cl(clear),.ck(clk),.q(q1));
dff DUT0(.d(d0),.cl(clear),.ck(clk),.q(q0));

AND RD3(.in1(q3),.in2(read),.out(Q3));
AND RD2(.in1(q2),.in2(read),.out(Q2));
AND RD1(.in1(q1),.in2(read),.out(Q1));
AND RD0(.in1(q0),.in2(read),.out(Q0));

AND CLK(.in1(clock),.in2(load),.out(clk));
test_bench TB(.enable(enable),
.clear(clear),
.clk(clk),
.load(load),
.D3(D3),.D2(D2),.D1(D1),.D0(D0),
.read(read));

assign wordout[3]=Q3;
assign wordout[2]=Q2;
assign wordout[1]=Q1;
assign wordout[0]=Q0;

endmodule
