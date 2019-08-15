module div(q);
parameter per = 5;
output q;
reg j,k;
reg clk;
reg q;
reg [4:0] contor;

initial 
begin
contor=0;
clk=0;
q=0;
j<=#5 1'b1;
k<=#5 1'b1;
j<=#37 1'b0;
k<=#37 1'b0;
k<=#57 1'b1;
j<=#87 1'b1;
k<=#87 1'b0;
end
always @(posedge clk)
begin 
if (j==1'b1)
	if(k==1'b1)
	q<=~q;
	else
	q<=1;
else
	if(k==1'b1)
	q<=0;
	else
	q<=q;
end
always @(negedge clk or posedge clk)
begin
if(contor==5'b11000)
$stop;
else
contor=contor+1;
end
always 
#per clk=~clk;
endmodule
