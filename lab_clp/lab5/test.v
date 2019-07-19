module test();
wire in, out;
test_bench TB (.in(in));
hazard DUT (.in(in),.out(out));
endmodule
