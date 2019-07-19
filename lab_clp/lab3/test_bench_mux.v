module test_bench_mux(i0,i1,sel);
parameter per = 5;
output i0,i1,sel;
reg [2:0] counter;
reg clk;

initial
begin
clk=0;
counter=0;
end

always @(posedge clk)
begin
if(counter == {3{1'b1}})
begin 
$stop;
end
else
begin
counter = counter +1;
end
end

assign i0 = counter[0];
assign i1 = counter[1];
assign sel = counter[2];

always
#per clk = ~clk;
endmodule