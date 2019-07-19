module test_mux2();
parameter per = 5;

test_bench_mux #(per) TB(
.i0(i0),
.i1(i1),
.sel(sel));

mux_v2 DUT (
.i0(i0),
.i1(i1),
.sel(sel),
.out(out));

endmodule