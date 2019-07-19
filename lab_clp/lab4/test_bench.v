module test_bench(d,clk);
output d,clk;
reg d,clk;

initial
begin
clk=0;
d=0;
#8 d=1;
#14 d=0; 
#27 d=1;
#3 d=0;
#2 d=1;
#32 d=0;
#1 $stop;
end
always #5 clk=~clk;
endmodule
