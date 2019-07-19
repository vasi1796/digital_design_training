module test_mux1();
parameter per = 5;

test_bench_mux #(per) TB(
.i0(i0),
.i1(i1),
.sel(sel));

mux_v1 DUT (
.i0(i0),
.i1(i1),
.sel(sel),
.out(out));

endmodule