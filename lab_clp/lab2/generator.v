module generator(a,b,cin);
parameter per = 5;
output a,b,cin;

reg [2:0] counter;
reg clk;

initial
begin
clk=0;
counter=0;
end

always@(posedge clk)
if(counter == {3{1'b1}})
$stop;
else
counter = counter+1;

assign a = counter[2];
assign b = counter[1];
assign cin = counter[0];

always
#per clk = !clk;

endmodule
