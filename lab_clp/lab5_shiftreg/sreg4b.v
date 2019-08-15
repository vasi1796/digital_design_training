module sreg4b(shiftout,shiftin,clk);
input shiftin,clk;
output shiftout;

wire q3,q2,q1,q0;
reg [3:0] wordout;
reg [3:0] counter;

dff G3(.d(shiftin),.ck(clk),.q(q3));
dff G2(.d(q3),.ck(clk),.q(q2));
dff G1(.d(q2),.ck(clk),.q(q1));
dff G0(.d(q1),.ck(clk),.q(shiftout));

assign q0=shiftout;
initial counter = 0;
always @(posedge clk)
begin
	if(counter ==4'b1000)
	$stop;
	else 
	begin
	if (counter == 4'b0100) wordout[0] = shiftout;
	if (counter == 4'b0101) wordout[1] = shiftout;
	if (counter == 4'b0110) wordout[2] = shiftout;
	if (counter == 4'b0111) wordout[3] = shiftout;
	counter=counter+1;
	end
end
endmodule
