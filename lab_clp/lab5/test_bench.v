module test_bench(in);
output in;
reg in;
initial
begin
in=1'b0;
repeat(4)
in=#5~in;
end
endmodule
