module dcd(in, enable,out);
input [2:0] in;
input enable;
output [7:0] out;

reg[7:0] out;

always @(in or enable)
if (enable) out <= (1'b1<<in);
else out<=8'b0;
endmodule
