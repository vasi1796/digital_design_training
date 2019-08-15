module test_bench(enable,clear,clk,load,read,D3,D2,D1,D0);
output enable, clear,clk,load,read,D3,D2,D1,D0;
reg enable,clear,clk,load,read;
reg [3:0] wordin;

initial 
begin
	wordin<=4'b1011;
	clk = 1'b0;
	clear=1;
	clear<=#1 0;
	clear<=#2 1;
	clear<=#18 0;
	clear<=#19 1;
	load=0;
	read=0;
	enable<=#8 1;
	load<=#9 1;
	read<=#13 1;

repeat(4)
	begin
	#5 clk<=~clk;
	end
end
assign D3=wordin[3];
assign D2=wordin[2];
assign D1=wordin[1];
assign D0=wordin[0];
endmodule
