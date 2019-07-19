module test_dcd();
parameter per = 5;
wire [2:0] in;
wire enable;
wire [7:0] out;

tb_dcd #(per) TB (.in(in),.enable(enable));
dcd DUT (.in(in),.enable(enable),.out(out));

endmodule